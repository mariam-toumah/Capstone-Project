E//
//  ReviewInfo.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct ReviewInfoView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        List {
            
            Section("Personal Information") {
                Text("Name: \(profile.name)")
                Text("Phone: \(profile.phoneNumber)")
                Text("Email: \(profile.email)")
            }
            
            
            Section("Medical Information") {
                Text("Blood Type: \(profile.bloodType)")
                Text("Allergies: \(profile.allergies)")
                Text("Conditions: \(profile.conditions)")
                Text("Medications: \(profile.medications)")
            }
            
            
            Section("Emergency Contacts") {
                Text(profile.emergencyContacts.name)
                Text(profile.emergencyContacts.phoneNumber)
            }
        }
        .navigationTitle("Review Information")
    }
}
