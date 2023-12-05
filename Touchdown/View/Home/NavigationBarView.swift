//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Quest76 on 04.12.2023.
//

import SwiftUI

struct NavigationBarView: View {
  // MARK: - Prop
  @State private var isAnimated: Bool = false
  // MARK: - Body
  
  var body: some View {
    HStack {
      Button {} label: {
        Image(systemName: "magnifyingglass")
          .font(.title)
          .foregroundStyle(.black)
      }
      
      Spacer()
      
      LogoView()
        .opacity(isAnimated ? 1 : 0)
        .offset(x: 0, y: isAnimated ? 0 : -25)
        .onAppear {
          withAnimation(.easeInOut(duration: 0.5)) {
            isAnimated.toggle()
          }
        }
      
      Spacer()
      
      Button {} label: {
        ZStack {
          Image(systemName: "cart")
            .font(.title)
            .foregroundStyle(.black)
          Circle()
            .fill(.red)
            .frame(width: 14, height: 14, alignment: .center)
            .offset(x: 13, y: -10)
        }
      }
    }
  }
}

#Preview {
  NavigationBarView()
    .padding()
}
