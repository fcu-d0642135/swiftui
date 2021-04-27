//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by 軟工實驗室 on 2021/4/11.
//$

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            // 作業 (1) 程式碼
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("monday, aug 20".uppercased())
                            .font(.caption)
                            .foregroundColor(.secondary)
                        Text("Your Reading")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                    }
                    Spacer()
                }
                .padding([.top, .horizontal])
            // 作業 (1) 程式碼

                HStack {
                    Group {
                        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
                        CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos")
                        CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout", author: "Lawrence Tan")
                        CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural", author: "Sai Kambampati")
                    }
                    .frame(width: 300)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
