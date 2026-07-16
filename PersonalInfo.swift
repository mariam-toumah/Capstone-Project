//
//  PersonalInfo.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct PersonalInfoView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        Form {
            
            Section("Personal Information") {
                
                TextField("Name", text: $profile.name)
                
                TextField("Phone Number", text: $profile.phoneNumber)
                    .keyboardType(.phonePad)
                
                TextField("Date of Birth", text: $profile.dateOfBirth)
                
                TextField("Email", text: $profile.email)
                
                TextField("Height", text: $profile.height)
                
                TextField("Weight", text: $profile.weight)
                
                TextField("Address", text: $profile.address)
            }
            
            
            Button("Save & Exit") {
                
            }
        }
        .navigationTitle("Personal Information")
    }
}
