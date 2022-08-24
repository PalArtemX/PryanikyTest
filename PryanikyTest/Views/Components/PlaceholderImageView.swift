//
//  PlaceholderImageView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 24/08/2022.
//

import SwiftUI

struct PlaceholderImageView: View {
    var body: some View {
        Image(systemName: "photo.on.rectangle.angled")
            .symbolRenderingMode(.hierarchical)
            .font(.largeTitle)
            .foregroundColor(.orange)
            .padding()
            .background(Color.mint.opacity(0.1))
            .cornerRadius(10)
    }
}










struct PlaceholderImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlaceholderImageView()
                .previewLayout(.sizeThatFits)
            PlaceholderImageView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
