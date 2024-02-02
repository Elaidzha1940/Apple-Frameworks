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
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        
        VStack {
            
            HStack {
                Spacer()
                Button(action: {
                    isShowingDetailView = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 45, height: 45)
                })
            }
            .padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.system(size: 17, weight: .semibold, design: .rounded))
                .padding()
            
            Spacer()
            
            Button(action: {
                // action
            }, label: {
                AFButton(title: "See more")
            })
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
