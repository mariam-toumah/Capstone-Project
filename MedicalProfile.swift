//
//  MedicalProfile.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import Foundation

struct MedicalProfile {
    
    // Personal Information
    var name: String = ""
    var phoneNumber: String = ""
    var dateOfBirth: String = ""
    var email: String = ""
    var height: String = ""
    var weight: String = ""
    var address: String = ""
    
    
    // Medical Information
    var bloodType: String = ""
    var allergies: [String] = []
    var medications: [Medication] = []
    var conditions: [String] = []
    
    // Insurance
    var insuranceProvider: String = ""
    var insuranceID: String = ""
    
    
    // Emergency Contacts
    var emergencyContact1 = EmergencyContact()
    var emergencyContact2 = EmergencyContact()
}

struct Medication {
    var name: String = ""
    var dosage: String = ""
    var frequency: String = ""
}

struct EmergencyContact {
    
    var name: String = ""
    var phoneNumber: String = ""
    var email: String = ""
    var address: String = ""
    var relationship: String = ""
}


struct EmergencyContacts {
    var name: String = ""
    var phoneNumber: String = ""
    var email: String = ""
    var address: String = ""
    var relationship: String = ""
}
}
