//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by 軟工實驗室 on 2021/3/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple, icon: "seal.fill")
                .scaleEffect(0.9)
                .offset(x:0, y: 400)
        
            PricingView(title: "Pro", price: "$19", textColor: .white, bgColor: Color(red: 255.255, green: 183/255, blue: 37/255), icon: "dial.min")
                .scaleEffect(0.85)
                
            PricingView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255), icon: "wand.and.rays")
                .scaleEffect(0.8)
                .offset(x:0, y: -400)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PricingView: View {
    
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(textColor)
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
