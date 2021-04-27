//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by 軟工實驗室 on 2021/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // 建立圖片視圖，並載入指定的系統圖片（圖片可參考 SF Symbols）
        /*
        Image(systemName: "cloud.heavyrain")
            .font(.system(size: 100))
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .shadow(color: .gray, radius: 10, x: 0, y:10)
        */
        
        // 將圖片匯入素材目錄（如 Assets.xcassets）
        Image("paris")
            .resizable()  // 調整圖片大小
            //.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)  // 忽略安全區域（不含 Top Bar and Bottom Bar
            //.scaledToFit()  // 保持圖片長寬比
            .aspectRatio(contentMode: .fit)  // 保持圖片長寬比
            //.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)  // 保持圖片長寬比，但盡可能延伸
            .frame(width: 300)  // 限制圖片寬度
            //.clipped() // 圖片仍超出寬度，用來消除視圖（藍色框）外的部分
            //.clipShape(Circle())  // 裁剪成圓形
            //.clipShape(Ellipse())  // 裁剪成橢圓形
            //.clipShape(Capsule())  // 裁剪成膠囊形狀
            //.opacity(0.5)  // 指定圖片的不透明度，0: 完全透明，1: 完全不透明
            
            // 將圖片或文字分層放置在圖片視圖上（將圖片進行重疊 overlay）
            /*
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.black)
                    .opacity(0.5)
            )
            */
            
            // 將文字疊在圖上面
            /*
            .overlay(
                
                Text("If you are lucky enough to have lived in Paris as a young man, then wherever you go for the rest of your life it stays with you, for Paris is a moveable feast.\n\n- Ernest Hemingway")
                    .fontWeight(.heavy)
                    .font(.system(.headline, design: .rounded))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                    .padding(),
                
                alignment: .top
                
            )
            */
        
            // I. 應用重疊，讓圖片變暗
            .overlay(
                Rectangle()
                    .foregroundColor(.black)
                    .opacity(0.4)
            )
        
            // II. 應用重疊，讓圖片變暗
            .overlay(
                Color.black
                    .opacity(0.4)
                    // 添加 Paris 字樣
                    .overlay(
                        Text("Paris")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .frame(width: 200)
                    )
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


