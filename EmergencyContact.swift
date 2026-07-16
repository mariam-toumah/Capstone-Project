//
//  EmergencyContact.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

import SwiftUI

struct EmergencyContactView: View {
    
    @Binding var profile: MedicalProfile
    
    @State private var editedContact1: EmergencyContact
    @State private var editedContact2: EmergencyContact
    
    
    init(profile: Binding<MedicalProfile>) {
        self._profile = profile
        
        self._editedContact1 = State(
            initialValue: profile.wrappedValue.emergencyContact1
        )
        
        self._editedContact2 = State(
            initialValue: profile.wrappedValue.emergencyContact2
        )
    }
    
    
    var body: some View {
        
        Form {
            
            Section("Emergency Contact 1") {
                
                TextField("Name", text: $editedContact1.name)
                TextField("Phone", text: $editedContact1.phoneNumber)
                TextField("Email", text: $editedContact1.email)
                TextField("Address", text: $editedContact1.address)
                TextField("Relationship", text: $editedContact1.relationship)
            }
            
            
            Section("Emergency Contact 2") {
                
                TextField("Name", text: $editedContact2.name)
                TextField("Phone", text: $editedContact2.phoneNumber)
                TextField("Email", text: $editedContact2.email)
                TextField("Address", text: $editedContact2.address)
                TextField("Relationship", text: $editedContact2.relationship)
            }
            
            
            Button("Save & Exit") {
                
                profile.emergencyContact1 = editedContact1
                profile.emergencyContact2 = editedContact2
            }
        }
        .navigationTitle("Emergency Contacts")
    }
}
