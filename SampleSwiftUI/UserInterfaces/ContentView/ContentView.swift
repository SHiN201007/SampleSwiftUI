//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                Text("Sample Title")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(alignment: .center) {
                    Text("User Name")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("2021-10-24")
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
            .padding(.top, 40)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            Divider()
            
            VStack(alignment: .leading) {
                
                Text("Sample Title")
                    .font(.title)
                    .fontWeight(.bold)
                
                HStack(alignment: .center) {
                    Text("User Name")
                        .font(.body)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Text("2021-10-24")
                        .font(.body)
                        .foregroundColor(.gray)
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
