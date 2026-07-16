//
//  EmergencyContacts.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct EmergencyContactsView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        Form {
            
            Section("Emergency Contact 1") {
                
                TextField("Name", text: $profile.emergencyContact1.name)
                TextField("Phone Number", text: $profile.emergencyContact1.phoneNumber)
                TextField("Email", text: $profile.emergencyContact1.email)
                TextField("Address", text: $profile.emergencyContact1.address)
                TextField("Relationship", text: $profile.emergencyContact1.relationship)
            }
            
            
            Section("Emergency Contact 2") {
                
                TextField("Name", text: $profile.emergencyContact2.name)
                TextField("Phone Number", text: $profile.emergencyContact2.phoneNumber)
                TextField("Email", text: $profile.emergencyContact2.email)
                TextField("Address", text: $profile.emergencyContact2.address)
                TextField("Relationship", text: $profile.emergencyContact2.relationship)
            }
            
            
            Button("Save & Exit") {
                
            }
        }
        .navigationTitle("Emergency Contacts")
    }
}
