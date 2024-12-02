//
//  DiscountCardView.swift
//  SwiftUITest
//
//  Created by Manyuchi, Carrington C on 2024/12/02.
//

import SwiftUI

struct DiscountCardView: View {
    var body: some View {
        VStack {
            
            Text("75% OFF!")
                .padding(.vertical,7)
                .padding(.horizontal)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .background(Color.accentColor)
                .clipShape(
                    RoundedRectangle(cornerRadius: 10)
                )
                .shadow(color: .black, radius: 10, x: 2, y: 7)
           
            
            HStack(alignment: .bottom) {
                HStack {
                    Text("Buy NOW".uppercased())
                        .font(.title3)
                        .fontWeight(.semibold)
                }
                Spacer()
                HStack {
                    Text("$20.00")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .strikethrough(true, color: .white)
                    
                    Text("$5.00")
                        .font(.subheadline)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical, 50)
            .padding(.horizontal)
            .background(Color.red)
            .clipShape(.rect(cornerRadius: 20))
            .padding(.horizontal)
        }
    }
}

#Preview {
    DiscountCardView()
}
