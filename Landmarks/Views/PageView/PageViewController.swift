//
//  PageViewController.swift
//  Landmarks
//
//  Created by Wylan L Neely on 2/27/25.
//
import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    
    var pages: [Page]

    func makeUIViewController(context: Context) -> UIPageViewController {
           let pageViewController = UIPageViewController(
               transitionStyle: .scroll,
               navigationOrientation: .horizontal)


           return pageViewController
       }
    
    func updateUIViewController(_ uiViewController: UIPageViewController, context: Context) {
        
    }

}


