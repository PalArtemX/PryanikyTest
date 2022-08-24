//
//  PreviewData.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 24/08/2022.
//

import Foundation


/// PreviewData
///
/// Usage:
///
/// PictureView(dataResults: PreviewData.dataResults(name: "picture"))
///
/// - Warning: Used only for previews
///
struct PreviewData {
    
    typealias Variant = Pryaniky.DataResult.Object.Variant
    typealias Object = Pryaniky.DataResult.Object
    
    
    static func data(name: String) -> Pryaniky.DataResult {
        
        return Pryaniky.DataResult(name: name,
                                   data: Object(text: "Text",
                                                url: "https://pryaniky.com/static/img/logo-a-512.png",
                                                selectedID: 1,
                                                variants: [Variant(id: 1, text: "Variant 1"), Variant(id: 2, text: "Variant 2"), Variant(id: 3, text: "Variant 3")]))
    }
    
}
