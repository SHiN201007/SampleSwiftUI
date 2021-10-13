//
//  LandmarkDetail.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/13.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var model: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        model.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    FavoriteButton(isSet: $model.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack(alignment: .center) {
                    Text(landmark.park)
                    
                    Spacer()
                    
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About\(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var model = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: model.landmarks[0])
            .environmentObject(model)
    }
}
