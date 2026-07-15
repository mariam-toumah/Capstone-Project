//
//  MonsoraTest.swift
//  
//
//  Created by DPI Student 024 on 7/15/26.
//

import SwiftUI

struct HomeView: View {
    @State private var name = "Tap View/Edit to add"
    @State private var phone = "___-___-____"
    
    @State private var allergies = "Tap View/Edit to add"
    @State private var conditions = "Tap View/Edit to add"
    
    var body: some View {
        NavigationStack {
            VStack(spacing:30) {
        }
            VStack(spacing: 5) {
                Text ("ReadyMed")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Image(systemName: "person.crop.circle.fill")
                    .font(.system(size: 65))
                    .foregroundStyle(.blue)
            }
           
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Personal Information")
                    .font(.headline)
                    .fontWeight(.bold)
                    
                InfoRow(title: "Name", value: name)
                
                Divider()
                
                InfoRow(title: "Phone", value: phone)
                                                
                Divider()
                
                Text("Medical Information")
                    .font(.headline)
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text("Allergies")
                        .fontWeight(.semibold)
                    
                    Text(allergies)
                        .foregroundStyle(.secondary)
                    
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    Text("Medical Conditions")
                        .fontWeight(.semibold)
                    
                    Text(conditions)
                        .foregroundStyle(.secondary)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius:25))
            .padding(.horizontal)
            
            Spacer ()
            
            NavigationLink {
                EditProfileView()
                
            } label: {
                Text ("Edit / View")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
            }
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
        .padding(.top)
        .navigationBarHidden(true)
}

#Preview {
    HomeView()
}
