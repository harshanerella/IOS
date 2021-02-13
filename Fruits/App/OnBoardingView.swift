//
//  OnBoardingView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 13/02/21.
//

import SwiftUI

struct OnBoardingView: View {
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        TabView() {
            ForEach(fruits[1...5]) { item in
                FruitCardView(fruit: item)
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
