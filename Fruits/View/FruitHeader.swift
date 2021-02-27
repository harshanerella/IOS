//
//  FruitHeader.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 26/02/21.
//

import SwiftUI

struct FruitHeader: View {
    //Mark Properties
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        ZStack {
            // To cover full screen width in Ipads.., we can use LinearGradient
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .renderingMode(.original)
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                
        }
        .frame(height: 440)
        
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        
        // backgroung will cover only backside of image
        
//        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
    
}

struct FruitHeader_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeader(fruit: fruitsData[1])
//            .frame(width: 200.0, height: /*@START_MENU_TOKEN@*/440.0/*@END_MENU_TOKEN@*/)
//            .previewLayout(.sizeThatFits)
    }
}
