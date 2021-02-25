//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 25/02/21.
//

import SwiftUI

struct FruitDetailView: View {
    // Mark: Properties
    var fruit: Fruit
    
    //Mark: Body
    var body: some View {
        Text(fruit.title)
    }
    
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[1])
    }
}
