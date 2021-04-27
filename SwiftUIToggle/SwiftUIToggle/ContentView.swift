//
//  ContentView.swift
//  SwiftUIToggle
//
//  Created by 軟工實驗室 on 2021/3/15.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    
    var body: some View {
        Toggle(isOn: $isOn){
            Text("wifi")
                .font(.system(.title))
                .bold()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
