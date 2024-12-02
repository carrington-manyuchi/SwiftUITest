//
//  BuyNowView.swift
//  SwiftUITest
//
//  Created by Manyuchi, Carrington C on 2024/12/02.
//

import SwiftUI

struct BuyNowView: View {
    
    let price: Double
    let discountPercentage: Int?
    var discountedPrice: Double? {
        if let discountPercentage {
            //$20 -> (25/100) * $20 = $5
           return (Double(100 - discountPercentage) / 100) * price
        } else {
            return nil
        }
    }
    
    let discountColor: Color
    let bgColor: Color
    let yOffset: Double
    let discountAngle: Double
    
    init(
        price: Double,
        discountPercentage: Int?,
        discountColor: Color = .blue,
        bgColor: Color = .red,
        yOffset: Double = -20,
        discountAngle: Double = -10
    ) {
        self .price = price
        self.discountPercentage = discountPercentage
        self.discountColor = discountColor
        self.bgColor = bgColor
        self.yOffset = yOffset
        self.discountAngle = discountAngle
    }
    
    var body: some View {

        VStack {
            if let discountPercentage {
                Text("\(discountPercentage)% OFF!")
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                    .background(discountColor)
                    .clipShape(.rect(cornerRadius: 10))
                    .rotationEffect(Angle(degrees: discountAngle))
                    .offset(y: yOffset)
                    .shadow(radius: 5)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
            HStack {
                Text("BUY NOW")
                    .font(.title)
                    .bold()
                Spacer()
                
                
                Text("\(price, specifier: "%.2f")")
                    .foregroundStyle(.white)
                    .strikethrough(discountedPrice != nil)
                
                if let discountedPrice {
                    Text("\(discountedPrice, specifier: "%.2f")")
                        .fontWeight(.semibold)
                        .bold()
                }
            }
        }
        .padding()
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(bgColor)
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.white)
            }
        )
        .padding()
    }
}

#Preview {
    ZStack {
        Color
            .gray
            .ignoresSafeArea()
        VStack {
            BuyNowView(
                price: 20,
                discountPercentage: 75
            )
            
            BuyNowView(
                price: 20,
                discountPercentage: nil
            )

        }
    }
}
