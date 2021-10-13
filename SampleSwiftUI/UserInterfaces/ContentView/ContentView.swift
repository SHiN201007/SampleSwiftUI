//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.lightGray
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkView()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(
            ["iPhone SE (2nd generation)", "iPhone XS Max"],
            id: \.self) { device in
            ContentView()
                .environmentObject(ModelData())
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
