//  /*
//
//  Project: Apple-Frameworks
//  File: FrameworkDetailView.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.02.2024
//
//  */

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    //@Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        
        VStack {
            //XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            //Spacer()
            
            VStack(alignment: .leading, spacing: 10) {
                
                FrameworkTitleView(framework: framework)
                    .padding(.trailing, 30)
                
                Text(framework.description)
                    .font(.system(size: 17, weight: .semibold, design: .serif))
                    .padding(.vertical)
            }
            .padding()
        
            Spacer()
            
            Button(action: {
                isShowingSafariView = true
            }, label: {
                //AFButton(title: "See more")
                Label("See more", systemImage: "book.fill")
            })
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(Color(.label))
        }
        .fullScreenCover(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString)!)
        //SafariView(url: URL(string: framework.urlString) ?? URL(string: "https://github.com/Elaidzha1940")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
