//  /*
//
//  Project: Apple-Frameworks
//  File: AFButton.swift
//  Created by: Elaidzha Shchukin
//  Date: 02.02.2024
//
//  */

import SwiftUI

struct AFButton: View {
    var title: String
    
    var body: some View {
        Text(title)
            .padding()
            .font(.system(size: 20, weight: .semibold, design: .serif))
            .background(Color.black.gradient)
            .foregroundColor(.white)
            .cornerRadius(15)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
    }
}

#Preview {
    AFButton(title: "title")
        .preferredColorScheme(.dark)
}
