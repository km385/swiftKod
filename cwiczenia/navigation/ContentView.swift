//
//  ContentView.swift
//  lab1
//
//  Created by student on 15/10/2024.
//

import SwiftUI

struct ColorData : Identifiable {
    let id = UUID()
    let colorName: String
    let colorValue: Color
    var count: Int
}


struct ContentView: View {
    @State var colors: [ColorData] = [
        ColorData(colorName: "red", colorValue: .red, count: 0),
        ColorData(colorName: "blue", colorValue: .blue, count: 0),
        ColorData(colorName: "green", colorValue: .green, count: 0),
        ColorData(colorName: "yellow", colorValue: .yellow, count: 0),
        ColorData(colorName: "purple", colorValue: .purple, count: 0),
        ColorData(colorName: "orange", colorValue: .orange, count: 0),
        ColorData(colorName: "gray", colorValue: .gray, count: 0),
        ColorData(colorName: "pink", colorValue: .pink, count: 0)
        
    ]
    
    @State var opacity1 = 0.5
    @State var opacity2 = 0.5
    @State var color1: Color = .red
    @State var color2: Color = .blue
    
    
    func randColor() -> Color {
        let randNum = Int.random(in: 0..<colors.count)
        colors[randNum].count = colors[randNum].count + 1
        return colors[randNum].colorValue
    }
    var body: some View {
        NavigationStack {
            
            
            VStack {
                Circle()
                    .fill(color1)
                    .opacity(opacity1)
                    .frame(width: 250)
                    .onTapGesture {
                        opacity1 = 1
                        opacity2 = 0
                    }
                
                Circle()
                    .fill(color2)
                    .opacity(opacity2)
                    .frame(width: 250)
                    .onTapGesture {
                        opacity1 = 0
                        opacity2 = 1
                    }
                Spacer()
                HStack {
                    Text("Losuj kolor 1")
                        .onTapGesture {
                            color1 = randColor()
                        }
                    Spacer()
                    Text("Losuj kolor 2")
                        .onTapGesture {
                            color2 = randColor()
                        }
                }
                HStack {
                    NavigationLink("Pokaz staystyki", destination: chartView(colors: colors))
                }
            }
            .padding()
        }}
}

#Preview {
    ContentView()
}
