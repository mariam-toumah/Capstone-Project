//
//  MonsoraTest.swift
//  
//
//  Created by DPI Student 024 on 7/15/26.
//
      
import SwiftUI

struct HomeView: View {
    @State private var name = "Tap Edit/View to add"
    @State private var phone = "___-___-____"
    
    @State private var allergies = "Tap Edit/View to add"
    @State private var conditions = "Tap Edit/View to add"
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 35) {
                
                VStack(spacing: 8) {
                    Text ("ReadyMed")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    ZStack(alignment: .bottomTrailing) {
                        
                        Circle()
                            .fill(Color.blue.opacity(0.15))
                            .frame(width: 120, height: 120)
                        
                        Image(systemName: "person,fill")
                            .font(.system(size:55))
                            .foregroundStyle(.blue)
                        
                        Circle()
                            .fill(.blue)
                            .frame(width: 34, height: 32)
                            .overlay {
                                
                                Image(systemName: "pencil")
                                    .foregroundColor(.white)
                                    .font(.system(size:14))
                            }
                    }
                        
                        
                    }
                }
                
                // Information Card
                VStack(alignment: .leading, spacing: 30) {
                    
                    Text("Personal Information")
                        .font(.headline)
                    
                    
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
                .clipShape(RoundedRectangle(cornerRadius: 25))
                 
                Spacer ()
                
                
            NavigationLink {
                
                
                EditProfileView(profile: $profile)
            } label: {
                Text("Edit/View")
            }
                    
        
                    
      //Reusable Row
struct InfoRow: View {
    
    let title: String
    let value: String
    
    var body: some View {
        
        HStack {
            
            Text(title)
                .fontWeight(.semibold)
            
            Spacer()
            
            Text(value)
                .foregroundStyle(.secondary)
        }
    }
}
        


#Preview {
    HomeView()
    
}
