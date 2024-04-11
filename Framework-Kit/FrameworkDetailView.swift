//
//  FrameworkDetailView.swift
//  Framework-Kit
//
//  Created by Meet Balani on 10/04/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    let frameworkdetail: Framework
    @State private var ispresented = false
    
    @Binding var showDetailStatus: Bool
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                showDetailStatus = false
            } label: {
                Image(systemName:"xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.medium)
                    .frame(width: 32, height: 32)
                    .background(colorScheme == .dark ? Color.gray : Color.accentColor)
                    .cornerRadius(90)
                    
        }
        }.padding()
        Spacer()
        FrameworkTitleView(framework: frameworkdetail)
        Text(frameworkdetail.description)
            .font(.body)
            .padding(20)
        Spacer()
        Button {
            ispresented = true
        } label: {
            Text("Learn More")
                .frame(width: 280, height: 50)
                .background(.red)
                .foregroundColor(.white)
                .font(.system(size: 23, weight: .semibold, design: .default))
                .cornerRadius(10)
        }
        .padding()
        .fullScreenCover(isPresented: $ispresented, content: {
            SafariView(url: URL(string: frameworkdetail.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(frameworkdetail: MockData.sampleFramework, showDetailStatus: .constant(false) )
}
