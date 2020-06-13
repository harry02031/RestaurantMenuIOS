//
//  DetailView.swift
//  RestaurantMenuApp
//
//  Created by Harry T on 2020-06-10.
//  Copyright © 2020 Harry T. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let food: Food
    var body: some View {
        VStack {
            Image(food.imagename).resizable().scaledToFit()
            Text(food.name).bold().padding()
      
            Text(food.description).italic().padding()
            Text(food.price)
        Spacer()
    }
}
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            food: Food(id: 0, imagename: "pancake", name: "Pancake", price: "$5.34", description: "Delicious pancakes with fruit toppings to start your day nice and fresh!")
        
        )
    }
}
