//
//  MainView.swift
//  Framework-Kit
//
//  Created by Meet Balani on 10/04/24.
//

import SwiftUI

struct MainView: View {
    let gridColumns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: gridColumns) {
                    ForEach(MockData.frameworks){ element in
                        FrameworkTitleView(framework: element)
                    }
                }
            }
            .navigationTitle("Frameworks")
        }
       
    }
}

#Preview {
    MainView()
}

struct FrameworkTitleView: View {
    let framework: Framework
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }.padding()
    }
}
