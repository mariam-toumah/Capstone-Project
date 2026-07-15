//
//  InfoRow.swift
//  
//
//  Created by DPI Student 020 on 7/15/26.
//

struct InfoRow: View {
    
    var title: String
    var value: String
    
    var body: some View {
        
        HStack
        
        Text(title)
            .fontWeight(.semibold)
        
        Spacer()
        
        Text(value)
            .foregroundStyle(.secocndary)
    }
    
  }
}
