//
//  ContentView.swift
//  IOS_Bonus_randomPic
//
//  Created by 翁星宇 on 2020/12/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            NetworkImage(urlStr: "https://loremflickr.com/240/480/cat")
                .scaledToFit()
            Image("cyberpunk")
                .resizable()
                .scaledToFit()
                .offset(y: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
