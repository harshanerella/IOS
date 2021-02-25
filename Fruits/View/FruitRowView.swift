//
//  FruitRowView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 13/02/21.
//

import SwiftUI

struct FruitRowView: View {
    //Mark: - Properties
    var fruit: Fruit
    //Mark: - Body
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(/*@START_MENU_TOKEN@*/.original/*@END_MENU_TOKEN@*/)
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8.0)
            
            VStack(alignment: .leading, spacing: 6.0) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Text(fruit.headline)
                    .font(.subheadline)
                    .foregroundColor(Color.secondary)
            }
            
        }
       
        
    }
}

//Mark: - Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
            
    }
}
