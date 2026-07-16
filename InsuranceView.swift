//
//  InsuranceView.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct InsuranceView: View {
    
    @Binding var profile: MedicalProfile
    @Environment(\.dismiss) private var dismiss
    
    @State private var editedProvider: String
    @State private var editedID: String
    
    
    init(profile: Binding<MedicalProfile>) {
        self._profile = profile
        self._editedProvider = State(initialValue: profile.wrappedValue.insuranceProvider)
        self._editedID = State(initialValue: profile.wrappedValue.insuranceID)
    }
    
    
    var body: some View {
        
        Form {
            
            Section("Insurance Information") {
                
                TextField(
                    "Insurance Provider",
                    text: $editedProvider
                )
                
                
                TextField(
                    "Member ID",
                    text: $editedID
                )
            }
            
            
            Button("Save & Exit") {
                profile.insuranceProvider = editedProvider
                profile.insuranceID = editedID
                dismiss()
            }
        }
        .navigationTitle("New Medication")
    }
}
