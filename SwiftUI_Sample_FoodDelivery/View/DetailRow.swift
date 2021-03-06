//
//  DetailRow.swift
//  SwiftUI_Sample_FoodDelivery
//
//  Created by cano on 2022/01/01.
//

import SwiftUI

struct DetailRow: View {
    
    var food: Food
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(food.title)
                    .font(.headline)
                    .padding(.top, 10)
                Text("\(food.price, specifier: "%2.2f") $")
                    .font(.caption)
            }
            Spacer()
            Button(action: {print("Order received.")}) {
                Text("ORDER")
                    .foregroundColor(.white)
            }
                .frame(width: 80, height: 50)
                .background(Color.orange)
                .cornerRadius(10.0)
        }
            .padding(20)
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0])
    }
}
