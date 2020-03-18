//
//  LoadingIndicator.swift
//  
//
//  Created by Ammar AlTahhan on 05/02/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import CareKit

class SampleData: NSObject {
    
    // MARK: Properties
    
    var store: OCKCarePlanStore

    /// An array of `Activity`s used in the app.
    let activities: [ActivityProtocol] = [
//        OutdoorWalk(),
//        HamstringStretch(),
//        TakeMedication(),
//        Caffeine()
    ]
    /**
     An `OCKPatient` object to assign contacts to.
     */
    
    var patient: OCKPatient
    
    /**
        An array of `OCKContact`s to display on the Connect view.
    */
    let contacts: [OCKContact] = [
        OCKContact(contactType: .careTeam,
            name: "Dr. Maria Ruiz",
            relation: "Physician",
            contactInfoItems: [OCKContactInfo.phone("888-555-5512"), OCKContactInfo.sms("888-555-5512"), OCKContactInfo.email("mruiz2@mac.com")],
            tintColor: Colors.blue.color,
            monogram: "MR",
            image: nil),
        
        OCKContact(contactType: .careTeam,
            name: "Bill James",
            relation: "Nurse",
            contactInfoItems: [OCKContactInfo.phone("888-555-5512"), OCKContactInfo.sms("888-555-5512"), OCKContactInfo.email("billjames2@mac.com")],
            tintColor: Colors.green.color,
            monogram: "BJ",
            image: nil),
        
        OCKContact(contactType: .personal,
            name: "Tom Clark",
            relation: "Father",
            contactInfoItems: [OCKContactInfo.phone("888-555-5512"), OCKContactInfo.sms("888-555-5512")],
            tintColor: Colors.yellow.color,
            monogram: "TC",
            image: nil)
    ]
    
    /**
     Connect message items
     */
    
    let dateString = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .short)
    let replyDateString = DateFormatter.localizedString(from: Date().addingTimeInterval(1000), dateStyle: .short, timeStyle: .short)
    var connectMessageItems = [OCKConnectMessageItem]()
    var contactsWithMessageItems = [OCKContact]()
    
    
    // MARK: Initialization
    
    required init(carePlanStore: OCKCarePlanStore) {
        self.store = carePlanStore
        self.patient = OCKPatient(identifier: "patient", carePlanStore: carePlanStore, name: "John Doe", detailInfo: nil, careTeamContacts: contacts, tintColor: Colors.lightBlue.color, monogram: "JD", image: nil, categories: nil, userInfo: ["Age": "21", "Gender": "M", "Phone":"888-555-5512"])
        
        for contact in contacts {
            if contact.type == .careTeam {
                contactsWithMessageItems.append(contact)
                self.connectMessageItems = [OCKConnectMessageItem(messageType: OCKConnectMessageType.sent, name: patient.name, message: NSLocalizedString("I am feeling good after taking the medication! Thank you.", comment: ""), dateString:dateString), OCKConnectMessageItem(messageType: .received, name: contact.name, message: NSLocalizedString("That is great! Keep up the good work.", comment: ""), dateString: dateString)]
                break
            }
        }
        
        super.init()
        
        DispatchQueue.main.async {
            guard AppDelegate.shared.isHealthKitFullyAuthorized() else { return }
        }
        
        populateSampleActivities()
        
    }
    
    /// Populate the store with the sample activities.
    func populateSampleActivities() {
        for sampleActivity in activities {
            guard let carePlanActivity = sampleActivity.carePlanActivity else { continue }
            
            store.add(carePlanActivity) { success, error in
                if !success {
                    print(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    // MARK: Convenience
    
    /// Returns the `Activity` that matches the supplied `ActivityType`.
    func activityWithType(_ type: ActivitySubType) -> ActivityProtocol? {
//        for activity in activities where activity.activitySubType == type {
//            return activity
//        }
        
        return nil
    }
    
    func generateSampleDocument() -> OCKDocument {
        let subtitle = OCKDocumentElementSubtitle(subtitle: "First subtitle")
        
        let paragraph = OCKDocumentElementParagraph(content: "Lorem ipsum dolor sit amet, vim primis noster sententiae ne, et albucius apeirian accusata mea, vim at dicunt laoreet. Eu probo omnes inimicus ius, duo at veritus alienum. Nostrud facilisi id pro. Putant oporteat id eos. Admodum antiopam mel in, at per everti quaeque. Lorem ipsum dolor sit amet, vim primis noster sententiae ne, et albucius apeirian accusata mea, vim at dicunt laoreet. Eu probo omnes inimicus ius, duo at veritus alienum. Nostrud facilisi id pro. Putant oporteat id eos. Admodum antiopam mel in, at per everti quaeque. Lorem ipsum dolor sit amet, vim primis noster sententiae ne, et albucius apeirian accusata mea, vim at dicunt laoreet. Eu probo omnes inimicus ius, duo at veritus alienum. Nostrud facilisi id pro. Putant oporteat id eos. Admodum antiopam mel in, at per everti quaeque.")
            
        let document = OCKDocument(title: "Sample Document Title", elements: [subtitle, paragraph])
        document.pageHeader = "App Name: OCKSample, User Name: John Appleseed"
        
        return document
    }
}
