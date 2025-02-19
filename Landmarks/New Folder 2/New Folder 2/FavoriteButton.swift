//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/17/25.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite",
                  systemImage: isSet ? "star.fill" : "star")
            .labelStyle(.iconOnly)
            .foregroundStyle(isSet ? .blue : .gray)
        }
    }
    

    
}


#Preview {
    FavoriteButton(isSet: Binding.constant(true))
}
