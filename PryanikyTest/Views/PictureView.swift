//
//  PictureView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import SwiftUI

struct PictureView: View {
    var body: some View {
        Image(systemName: "photo.on.rectangle.angled")
            .symbolRenderingMode(.hierarchical)
            .font(.largeTitle)
            .foregroundColor(.green)
    }
}










struct PictureView_Previews: PreviewProvider {
    static var previews: some View {
        PictureView()
    }
}
