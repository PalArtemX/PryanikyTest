//
//  HZView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import SwiftUI

struct HZView: View {
    
    let data: Pryaniky.DataResult
    let hz = Pryaniky.OrderView.hz.rawValue
    
    var body: some View {
        if data.name == hz {
            Text("hz")
        } else {
            EmptyView()
        }
        
    }
    
}












struct HZView_Previews: PreviewProvider {
    typealias Variant = Pryaniky.DataResult.Object.Variant
    
    static var previews: some View {
        HZView(data: Pryaniky.DataResult(name: "hz", data: Pryaniky.DataResult.Object(text: "Text", url: "url", selectedID: 1, variants: [Variant(id: 1, text: "textV")])))
    }
}
