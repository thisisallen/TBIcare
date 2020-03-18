//
//  RootViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 02/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit

class InsightsBuilder {
    
    /// An array if `OCKInsightItem` to show on the Insights view.
    fileprivate(set) var insights = [OCKInsightItem.emptyInsightsMessage()]
    
    fileprivate let carePlanStore: OCKCarePlanStore
    
    fileprivate let updateOperationQueue = OperationQueue()
    
    required init(carePlanStore: OCKCarePlanStore) {
        self.carePlanStore = carePlanStore
    }

    /**
        Enqueues `NSOperation`s to query the `OCKCarePlanStore` and update the
        `insights` property.
    */
    func updateInsights(_ completion: ((Bool, [OCKInsightItem]?) -> Void)?) {
        // Cancel any in-progress operations. 
        updateOperationQueue.cancelAllOperations()

        // Get the dates the current and previous weeks.
        let queryDateRange = calculateQueryDateRange()
        
        /*
            Create an operation to query for events for the previous week's
            `TakeMedication` activity.
         */
        
        let medicationEventsOperation = QueryActivityEventsOperation(store: carePlanStore,
                                                                     activityIdentifier: ActivitySubType.takeMedication.rawValue,
                                                                     startDate: queryDateRange.start,
                                                                     endDate: queryDateRange.end)
        
        /*
         Create an operation to query for events for the previous week's
         `HamstringStretch` activity.
         */
        
        let hamstringStretchEventsOperation = QueryActivityEventsOperation(store: carePlanStore,
                                                                           activityIdentifier: ActivitySubType.hamstringStretch.rawValue,
                                                                           startDate: queryDateRange.start,
                                                                           endDate: queryDateRange.end)
        
        /*
         Create an operation to query for events for the previous week's
         `OutdoorWalk` activity.
         */
        
        let outdoorWalkEventsOperation = QueryActivityEventsOperation(store: carePlanStore,
                                                                      activityIdentifier: ActivitySubType.outdoorWalk.rawValue,
                                                                      startDate: queryDateRange.start,
                                                                      endDate: queryDateRange.end)
        
        /*
         Create an operation to query for events for the previous week's
         `BloodGlucose` activity.
         */
        
        let bloodGlucoseEventsOperation = QueryActivityEventsOperation(store: carePlanStore,
                                                                       activityIdentifier: ActivitySubType.bloodGlucose.rawValue,
                                                                       startDate: queryDateRange.start,
                                                                       endDate: queryDateRange.end)
        
        /*
         Create an operation to query for events for the previous week's
         `Weight` activity.
         */
        
        let weightEventsOperation = QueryActivityEventsOperation(store: carePlanStore,
                                                                 activityIdentifier: ActivitySubType.weight.rawValue,
                                                                 startDate: queryDateRange.start,
                                                                 endDate: queryDateRange.end)
        
        /*
         Create an operation to query for events for the previous week's
         `Mood` activity.
         */
        
        let moodEventsOperation = QueryActivityEventsOperation(store: carePlanStore,
                                                               activityIdentifier: ActivitySubType.mood.rawValue,
                                                               startDate: queryDateRange.start,
                                                               endDate: queryDateRange.end)
        
        /*
            Create an operation to query for events for the previous week and
            current weeks' `BackPain` assessment.
         */
        
        let backPainEventsOperation = QueryActivityEventsOperation(store: carePlanStore,
                                                                   activityIdentifier: ActivitySubType.backPain.rawValue,
                                                                   startDate: queryDateRange.start,
                                                                   endDate: queryDateRange.end)

        /*
            Create a `BuildInsightsOperation` to create insights from the data
            collected by query operations.
        */
        let buildInsightsOperation = BuildInsightsOperation()
        
        /*
            Create an operation to aggregate the data from query operations into
            the `BuildInsightsOperation`.
        */
        let aggregateDataOperation = BlockOperation {
            // Copy the queried data from the query operations to the `BuildInsightsOperation`.
            buildInsightsOperation.medicationEvents = medicationEventsOperation.dailyEvents
            buildInsightsOperation.hamstringStretchEvents = hamstringStretchEventsOperation.dailyEvents
            buildInsightsOperation.outdoorWalkEvents = outdoorWalkEventsOperation.dailyEvents
            buildInsightsOperation.bloodGlucoseEvents = bloodGlucoseEventsOperation.dailyEvents
            buildInsightsOperation.weightEvents = weightEventsOperation.dailyEvents
            buildInsightsOperation.moodEvents = moodEventsOperation.dailyEvents
            buildInsightsOperation.backPainEvents = backPainEventsOperation.dailyEvents
        }
        
        /*
            Use the completion block of the `BuildInsightsOperation` to store the
            new insights and call the completion block passed to this method.
        */
        buildInsightsOperation.completionBlock = { [unowned buildInsightsOperation] in
            let completed = !buildInsightsOperation.isCancelled
            let newInsights = buildInsightsOperation.insights
            
            // Call the completion block on the main queue.
            OperationQueue.main.addOperation {
                if completed {
                    completion?(true, newInsights)
                }
                else {
                    completion?(false, nil)
                }
            }
        }
        
        // The aggregate operation is dependent on the query operations.
        aggregateDataOperation.addDependency(medicationEventsOperation)
        aggregateDataOperation.addDependency(hamstringStretchEventsOperation)
        aggregateDataOperation.addDependency(outdoorWalkEventsOperation)
        aggregateDataOperation.addDependency(bloodGlucoseEventsOperation)
        aggregateDataOperation.addDependency(weightEventsOperation)
        buildInsightsOperation.addDependency(moodEventsOperation)
        aggregateDataOperation.addDependency(backPainEventsOperation)
        
        // The `BuildInsightsOperation` is dependent on the aggregate operation.
        buildInsightsOperation.addDependency(aggregateDataOperation)
        
        // Add all the operations to the operation queue.
        updateOperationQueue.addOperations([
            medicationEventsOperation,
            hamstringStretchEventsOperation,
            outdoorWalkEventsOperation,
            bloodGlucoseEventsOperation,
            weightEventsOperation,
            moodEventsOperation,
            backPainEventsOperation,
            aggregateDataOperation,
            buildInsightsOperation
        ], waitUntilFinished: false)
    }
    
    fileprivate func calculateQueryDateRange() -> (start: DateComponents, end: DateComponents) {
        let calendar = Calendar.current
        let now = Date()
        
        let currentWeekRange = calendar.weekDatesForDate(now)
        let previousWeekRange = calendar.weekDatesForDate(currentWeekRange.start.addingTimeInterval(-1))
        
        let queryRangeStart = calendar.dateComponents([.year, .month, .day, .era], from: previousWeekRange.start)
        let queryRangeEnd = calendar.dateComponents([.year, .month, .day, .era], from: now)
        
        return (start: queryRangeStart, end: queryRangeEnd)
    }
}



protocol InsightsBuilderDelegate: class {
    func insightsBuilder(_ insightsBuilder: InsightsBuilder, didUpdateInsights insights: [OCKInsightItem])
}
