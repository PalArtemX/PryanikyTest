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
    @State private var isAlert = false
    
    var body: some View {
        if data.name == hz, let text = data.data.text {
            TextBlockView(text: text)
                .onTapGesture {
                    isAlert.toggle()
                }
                .alert(hz, isPresented: $isAlert) {
                    
                } message: {
                    Text(text)
                }

        } 
    }
}












struct HZView_Previews: PreviewProvider {
    static var previews: some View {
        HZView(data: PreviewData.data(name: "hz"))
    }
}
