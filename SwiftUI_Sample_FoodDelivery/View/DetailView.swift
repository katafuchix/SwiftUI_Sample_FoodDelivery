//
//  DetailView.swift
//  SwiftUI_Sample_FoodDelivery
//
//  Created by cano on 2022/01/01.
//

import SwiftUI

struct DetailView: View {
    
    var currentCategory: Categories
    
    var body: some View {
        List(filterData(by: currentCategory)) { food in
            DetailRow(food: food)
        }
            .navigationBarTitle(Text(categoryString(for: currentCategory)), displayMode: .inline)

    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}

