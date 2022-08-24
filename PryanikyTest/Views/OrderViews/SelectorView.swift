//
//  SelectorView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import SwiftUI

struct SelectorView: View {
    
    @EnvironmentObject var pryanikyVM: PryanikyVM
    let data: Pryaniky.DataResult
    let selector = Pryaniky.OrderView.selector.rawValue
    
    var body: some View {
        if data.name == selector, let variants = data.data.variants {
            VStack {
                Picker(selection: $pryanikyVM.variant) {
                    ForEach(variants, id: \.id) { variant in
                        HStack {
                            Text("\(variant.text) id: \(variant.id)")
                        }
                    }
                } label: {
                    Label("Variants", systemImage: "filemenu.and.selection")
                }
                .pickerStyle(.segmented)
                .padding()
            }
        }
    }
}










struct SelectorView_Previews: PreviewProvider {
    static var previews: some View {
        SelectorView(data: PreviewData.data(name: "selector"))
            .environmentObject(PryanikyVM())
    }
}
