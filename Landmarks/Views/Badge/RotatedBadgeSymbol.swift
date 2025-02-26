//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/20/25.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    
    let angle: Angle
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: 5))
}
