//
//  BadgeBackground.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/18/25.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        
        GeometryReader { geometry in
            Path { path in
                var width: CGFloat = min(geometry.size.width,
                                         geometry.size.height)
                let height = width
                let xScale: CGFloat = 0.832
                let xOffets = (width * (1.0 - xScale)) / 2.0
                width *= xScale
            
                path.move(
                    to: CGPoint(
                        x: width * 0.95 + xOffets,
                        y: height * (
                            0.20 + HexagonParameters.adjustment
                        )
                    )
                )
                HexagonParameters.segments.forEach { segment in
                    path
                        .addLine(
                            to:
                                CGPoint(
                                    x: width * segment.line.x + xOffets,
                                    y: height * segment.line.y
                                )
                        )
                    path
                        .addQuadCurve(
                            to:
                                CGPoint(
                                    x: width * segment.curve.x + xOffets,
                                    y: height * segment.curve.y
                                ),
                            control:
                                CGPoint(
                                    x: width * segment.control.x + xOffets,
                                    y: height * segment.control.y
                                )
                        )
                }
                
            }
            .fill(.linearGradient(colors: [BadgeBackground.gradientStart, Self.gradientEnd],
                                  startPoint: UnitPoint(x: 0.5, y: 0),
                                  endPoint: UnitPoint(x: 0.5, y: 0.6)))
        }
        .aspectRatio(1,contentMode: .fit)
        
    }
    
    static let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)

       static let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
}

#Preview {
    BadgeBackground()
}
