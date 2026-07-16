//
//  ReviewInfo.swift
//  Capstone-Project
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
                    Text("Allergies: \(profile.allergies.joined(separator: ", "))")
                    Text("Conditions: \(profile.conditions.joined(separator: ", "))")
                         
                         Section("Medications") {
                             
                             ForEach(profile.medications.indices, id: \.self) { index in
                                 
                                 Text("\(profile.medications[index].name) - \(profile.medications[index].dosage) - \(profile.medications[index].frequency)")
                             }
                         }            }

            
            Section("Emergency Contact 1") {
                Text(profile.emergencyContact1.name)
                Text(profile.emergencyContact1.phoneNumber)
            }
        }
        .navigationTitle("Review Information")
    }
}
