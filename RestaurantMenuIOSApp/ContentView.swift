//
//  ContentView.swift
//  RestaurantMenuApp
//
//  Created by Harry T on 2020-06-10.
//  Copyright © 2020 Harry T. All rights reserved.
//

import SwiftUI

struct Food: Identifiable {
    let id: Int
    let imagename: String
    let name: String
    let price: String
    let description: String
}

struct ContentView: View {
    @State var foodList = [
        Food(id: 0, imagename: "pancake", name: "Pancake", price: "$5.34", description: "Delicious pancakes with fruit toppings to start your day nice and fresh!"),
        Food(id: 1, imagename: "cake", name: "Cake", price: "$2.10", description: "Refreshing desert, a must for sweet lovers!"),
        Food(id: 2, imagename: "burger", name: "Burger", price: "$8.00", description: "Delicious Burger with sides french fries that will keep you full for hours!"),
        Food(id: 3, imagename: "pizza", name: "Pizza", price: "$9.00", description: "Delicious Pizza, with selective toppings of your choice"),
        Food(id: 4, imagename: "steak", name: "Steak", price: "$40.00", description: "Delicious dinner meal that will end your day just right!"),
        Food(id: 5, imagename: "coke", name: "Coke", price: "$2.00", description: "Refreshing soda drink to quench your thirst!"),
        Food(id: 6, imagename: "hotdog", name: "Hotdog", price: "$2.10", description: "Hot Dog with meatsauce"),
        Food(id: 7, imagename: "sushi", name: "Sushi", price: "$8.00", description: "Various kinds of sushi served together"),
        Food(id: 8, imagename: "noodle", name: "Noodle", price: "$7.00", description: "Delicious Noodle with hot soup"),
        Food(id: 9, imagename: "omelette", name: "Omelette", price: "$8.00", description: "Delicious omelette cooked by the best chef in town!")
    ]
    
    var body: some View {
        NavigationView {
        List(foodList, id: \.name) {
         food in
         NavigationLink(destination:DetailView (food: food)) {

         HStack {
                Image(food.imagename).resizable().scaledToFit()
                Text(food.name)
            }
        }.navigationBarTitle(Text("Restaurant Menu"))
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
