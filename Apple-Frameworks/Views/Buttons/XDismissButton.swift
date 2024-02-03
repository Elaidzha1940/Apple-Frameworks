//  /*
//
//  Project: Apple-Frameworks
//  File: XDismissButton.swift
//  Created by: Elaidzha Shchukin
//  Date: 03.02.2024
//
//  */

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool

    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
