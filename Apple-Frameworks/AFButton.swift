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
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.black.gradient)
            .foregroundStyle(.white)
            .cornerRadius(15)
            .padding()
    }
}

#Preview {
    AFButton(title: "title")
        .preferredColorScheme(.dark)
}
