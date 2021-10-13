//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/06.
//

import SwiftUI

struct Human: Identifiable {
    var id: String
    let name: String
}

struct ContentView: View {
    let humans = [
        Human(id: "1", name: "田中"),
        Human(id: "2", name: "佐藤"),
        Human(id: "3", name: "加藤")
    ]
    
    
    var body: some View {
        List {
            
            ForEach(humans) { human in
                Text("Hello:\(human.name)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
