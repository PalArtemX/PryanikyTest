//
//  TextBlockView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 24/08/2022.
//

import SwiftUI

struct TextBlockView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .frame(maxWidth: .infinity)
            .padding(.vertical)
            .font(.headline)
            .foregroundColor(.primary)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
            .padding()
    }
}










struct TextBlockView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextBlockView(text: "Text Block")
                .previewLayout(.sizeThatFits)
            TextBlockView(text: "Text Block")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
        }
        .padding()
    }
}
