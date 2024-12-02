//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Manyuchi, Carrington C on 2024/12/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .ignoresSafeArea()
            VStack {
                DiscountCardView()
                    .padding(.vertical)
                CardView()

            }
        }
        
    }
}

#Preview {
    ContentView()
}
