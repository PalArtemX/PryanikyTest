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
    @State private var isAlert = false
    
    var body: some View {
        if data.name == picture {
            VStack {
                TextBlockView(text: data.data.text ?? "")
                    .padding(.top)
                AsyncImage(url: URL(string: data.data.url ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    PlaceholderImageView()
                }
                .padding()
            }
            .onTapGesture {
                isAlert.toggle()
            }
            .alert(picture, isPresented: $isAlert) {
                
            } message: {
                Text(data.data.text ?? "")
            }
            .background(.ultraThinMaterial)
            .cornerRadius(15)
            .padding()
        }
    }
}










struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView(data: PreviewData.data(name: "picture"))
    }
}
