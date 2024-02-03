//  /*
//
//  Project: Apple-Frameworks
//  File: SafariView.swift
//  Created byЖ Elaidzha Shchukin
//  Date: 03.02.2024
//
//  */

//import UIKit
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
