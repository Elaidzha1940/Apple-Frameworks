//  /*
//
//  Project: Apple-Frameworks
//  File FrameworkTitleView.swift
//  Created by: Elaidzha Shchukin
//  Date: 03.02.2024
//
//  */

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework

    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            Text(framework.name)
                .font(.system(size: 20, weight: .semibold, design: .serif))
                .scaledToFit()
                .minimumScaleFactor(0.6)
                //.padding()
        }
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
