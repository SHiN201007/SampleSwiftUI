//
//  LandmarkView.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/13.
//

import SwiftUI

struct LandmarkView: View {
    var body: some View {
        
        NavigationView {
            List(landmarks, id: \.id) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmark")
        }
    }
}

struct LandmarkView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkView()
    }
}
