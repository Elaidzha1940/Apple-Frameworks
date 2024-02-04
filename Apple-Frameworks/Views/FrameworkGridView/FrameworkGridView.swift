//  /*
//
//  Project: Apple-Frameworks
//  File: FrameworkGridView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.02.2024
//
//  */

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text("Frameworks 🍏")
                            .font(.system(size: 30, weight: .bold, design: .serif))
                    }
                }
            }
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

//NavigationStack {
//    ScrollView {
//        LazyVGrid(columns: viewModel.columns) {
//            ForEach(MockData.frameworks) { framework in
//                FrameworkTitleView(framework: framework)
//                    .onTapGesture {
//                        viewModel.selectedFramework = framework
//                    }
//            }
//        }
//        .navigationTitle("Frameworks 🍏")
//        .sheet(isPresented: $viewModel.isShowingDetailView) {
//            FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
//        }
//    }
//}
