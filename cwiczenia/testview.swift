//
//  testview.swift
//  MemoryGame
//
//  Created by student on 09/12/2024.
//

import SwiftUI

struct testview: View {
    @State var isRotating: Bool = false
    @State var isRotating2: Bool = false
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .fill(.green)
            .overlay(
                VStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.blue)
                        .overlay(Image(systemName: "moon")
                            .font(.largeTitle))
                        .rotationEffect(.degrees(isRotating ? 360 : 0))
                        .animation(.linear(duration: isRotating ? 2 : 0).repeatForever(autoreverses: false), value: isRotating)
                        .onTapGesture {
                            isRotating.toggle()
                        }
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.orange)
                        .overlay(Image(systemName: "moon.stars.fill")
                            .font(.largeTitle))
                        .rotationEffect(
                            .degrees(isRotating2 ? 360 : 0)
                    
                            //axis: (1,1,1)
                        )
                        .animation(.linear(duration: isRotating2 ? 0 : 2).repeatForever(autoreverses: false), value: isRotating2)
                        .onTapGesture {
                            isRotating2.toggle()
                        }
                        
                    
                }
                    .padding()
            )
    }
}

#Preview {
    testview()
}
