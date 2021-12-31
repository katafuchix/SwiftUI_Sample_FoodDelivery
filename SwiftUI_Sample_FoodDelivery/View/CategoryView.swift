//
//  CategoryView.swift
//  SwiftUI_Sample_FoodDelivery
//
//  Created by cano on 2022/01/01.
//

import SwiftUI

struct CategoryView: View {
    
    var imageName: String
    var categoryName: String
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 150)
                    .clipped()
                    .cornerRadius(20.0)
      
                Text(categoryName)
                    .font(.custom("HelveticaNeue-Medium", size: 50))
                    .foregroundColor(.white)
            }
            Spacer()
        }
            .padding(.top, 5)
            .padding(.bottom, 5)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(imageName: "burger", categoryName: "BURGER")
    }
}
