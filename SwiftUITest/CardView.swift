//
//  CardView.swift
//  SwiftUITest
//
//  Created by Manyuchi, Carrington C on 2024/12/02.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        HStack(alignment: .bottom) {
            VStack {
                Text("Buy Now".uppercased())
                    .font(.title3)
                    .fontWeight(.semibold)
            }
            Spacer()
            Text("$20.00")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .padding()
        .background(Color.red)
        .clipShape(.rect(cornerRadius: 20))
        .padding(.horizontal)
    }
}

#Preview {
    CardView()
}
