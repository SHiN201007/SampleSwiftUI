//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkView()
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
