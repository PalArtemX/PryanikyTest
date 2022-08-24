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
        if data.name == hz, let text = data.data.text {
            TextBlockView(text: text)
        } else {
            EmptyView()
        }
        
    }
    
}












struct HZView_Previews: PreviewProvider {
    static var previews: some View {
        HZView(data: PreviewData.data(name: "hz"))
    }
}
