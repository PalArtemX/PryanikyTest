//
//  MainView.swift
//  PryanikyTest
//
//  Created by Artem Paliutin on 23/08/2022.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var pryanikyVM: PryanikyVM
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(pryanikyVM.orderViews, id: \.self) { orderView in
                    ForEach(pryanikyVM.data, id: \.name) { data in
                        switch orderView {
                        case .picture:
                            PictureView(data: data)
                        case .selector:
                            SelectorView(data: data)
                        case .hz:
                            HZView(data: data)
                        }
                    }
                }
            }
        }
    }
}










struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(PryanikyVM())
    }
}
