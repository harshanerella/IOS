//
//  ContentView.swift
//  Fruits
//
//  Created by Harsha Priyank, Nerella V on 11/02/21.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit:item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 10.0)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
