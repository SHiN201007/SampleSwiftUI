//
//  CategolyHome.swift
//  SampleSwiftUI
//
//  Created by 松丸真 on 2021/10/13.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var model: ModelData
    
    var body: some View {
        NavigationView {
            List {
                model.featured[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(model.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: model.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
