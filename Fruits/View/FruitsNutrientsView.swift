//
//  FruitsNutrientsView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 27/02/21.
//

import SwiftUI

struct FruitsNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrients") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                      Group {
                        Image(systemName: "info.circle")
                        Text(nutrients[item])
                      }
                      .foregroundColor(fruit.gradientColors[1])
                      .font(Font.system(.body).bold())
                      
                      Spacer(minLength: 25)
                      
                      Text(fruit.nutrition[item])
                        .multilineTextAlignment(.trailing)
                    }
                    
                }
            }
           
        }
        
    }
}

struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit: fruitsData[0])
//            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .previewLayout(/*@START_MENU_TOKEN@*/.sizeThatFits/*@END_MENU_TOKEN@*/)
            
    }
}
