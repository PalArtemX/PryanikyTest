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
                    switch orderView {
                    case .hz:
                        HZView()
                    case .picture:
                        PictureView()
                    case .selector:
                        SelectorView()
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
