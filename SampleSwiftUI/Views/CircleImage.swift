//
//  CircleImage.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/13.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5.0))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("sampleImage"))
    }
}
