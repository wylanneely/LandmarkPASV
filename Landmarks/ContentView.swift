//
//  ContentView.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/13/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
       
        VStack {
            MapView()
                .frame(height:300)
            CircleImage()
                .padding(.bottom, -130.0)
                .offset(y: -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(.green)
                HStack{
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)

                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }

}

#Preview {
    ContentView()
}
