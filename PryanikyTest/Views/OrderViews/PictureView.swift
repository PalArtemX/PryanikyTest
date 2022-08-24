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
            Image(systemName: "photo.on.rectangle.angled")
                .symbolRenderingMode(.hierarchical)
                .font(.largeTitle)
                .foregroundColor(.green)
        }
        
    }
}










//struct PictureView_Previews: PreviewProvider {
//    static var previews: some View {
//        PictureView()
//    }
//}
