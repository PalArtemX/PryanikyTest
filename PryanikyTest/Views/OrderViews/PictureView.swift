//
//  PictureView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import SwiftUI

struct PictureView: View {
    
    let data: Pryaniky.DataResult
    let picture = Pryaniky.OrderView.picture.rawValue
    
    var body: some View {
        if data.name == picture {
            VStack {
                TextBlockView(text: data.data.text!)
                
                AsyncImage(url: URL(string: data.data.url ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    Image(systemName: "photo.on.rectangle.angled")
                        .symbolRenderingMode(.hierarchical)
                        .font(.largeTitle)
                        .foregroundColor(.green)
                }
                .padding()
            }
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            .padding()
        }
    }
}










struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView(data: PreviewData.data(name: "picture"))
            .environmentObject(PryanikyVM())
    }
}
