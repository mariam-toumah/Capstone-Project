//
//  InsuranceView.swift
//  Capstone-Project
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct InsuranceView: View {
    
    @Binding var profile: MedicalProfile
    
    
    var body: some View {
        
        Form {
            
            Section("Insurance Information") {
                
                TextField(
                    "Insurance Provider",
                    text: $profile.insuranceProvider
                )
                
                
                TextField(
                    "Member ID",
                    text: $profile.insuranceID
                )
            }
            
            
            Button("Save & Exit") {
                
            }
        }
        .navigationTitle("Insurance")
    }
}
