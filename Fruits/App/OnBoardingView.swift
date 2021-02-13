//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 13/02/21.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MARK: BODY
    var body: some View {
        TabView() {
            ForEach(0..<5) { item in
                FruitCardView()
            }
        }
        .padding(.vertical, 20.0)
        .tabViewStyle(PageTabViewStyle())
        
    }
}

//MARK: PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
