//
//  ContentView.swift
//  IOS_Bonus_randomPic
//
//  Created by 翁星宇 on 2020/12/16.
//

import SwiftUI

struct ContentView: View {
    @State private var offset = CGSize(width: 0, height: 300)
    @State private var lastPos = CGSize(width: 0, height: 300)
    var body: some View {
        ZStack{
            NetworkImage(urlStr: "https://loremflickr.com/240/480/cat")
                .scaledToFit()
            Image("cyberpunk")
                .resizable()
                .scaledToFit()
                .offset(offset)
                .gesture(DragGesture()
                            .onChanged{
                                (delta) in
                                offset = CGSize(width: lastPos.width + delta.translation.width, height: lastPos.height + delta.translation.height)
//                                offset = delta.translation
                            }
                            .onEnded{
                                (delta) in
                                lastPos = offset
                            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
