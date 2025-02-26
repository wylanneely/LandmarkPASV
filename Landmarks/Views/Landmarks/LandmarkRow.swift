//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/14/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            landmark.image
                .resizable()
                .frame(width:70, height: 70)
            Text(landmark.name)
            Text(landmark.state)
                .fontWeight(.bold)
            
            Spacer()
    
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.blue)
            }
        }
        
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    Group {
        LandmarkRow(landmark: landmarks[3])
        LandmarkRow(landmark: landmarks[5])
        LandmarkRow(landmark: landmarks[0])
    }
}
