//  /*
//
//  Project: Apple-Frameworks
//  File: FrameworkGridViewModel.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.02.2024
//
//  */

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
//    var selectedFramework: Framework? {
//        didSet { isShowingDetailView = true }
//    }
    
//    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
