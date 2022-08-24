//
//  SelectorView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import SwiftUI

struct SelectorView: View {
    
    let data: Pryaniky.DataResult
    let selector = Pryaniky.OrderView.selector.rawValue
    
    var body: some View {
        if data.name == selector {
            Text("Selector")
        }
        
    }
}










struct SelectorView_Previews: PreviewProvider {
    static var previews: some View {
        SelectorView(data: PreviewData.data(name: "selector"))
    }
}
