//
//  chartView.swift
//  lab1
//
//  Created by student on 15/10/2024.
//

import SwiftUI
import Charts

struct chartView: View {
    let colors: [ColorData]
    var body: some View {
        Chart {
            ForEach(colors) { color in
                BarMark(
                    x: .value("", color.colorName),
                    y: .value("",
                              color.count))
            }
        }
    }
}

#Preview {
    chartView(colors: [.init(colorName: "red", colorValue: .red, count: 0)])
}
