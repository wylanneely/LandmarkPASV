//
//  PageView.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/28/25.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0
    
    var body: some View {
        ZStack(alignment:.bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
            .aspectRatio(3/2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().featured.map { FeatureCard(landmark: $0 )})
}
