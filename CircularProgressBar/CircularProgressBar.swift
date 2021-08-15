//
//  CircularProgressBar.swift
//  CircularProgressBar
//
//  Created by Bartosz on 15/08/2021.
//

import SwiftUI

struct CircularProgressBar: View {

    @Binding var progress: CGFloat
    var color: Color = .red
    var lineWidth: CGFloat = 2.0

    var body: some View {
        ZStack {
            Circle()
                .stroke(color.opacity(0.2), lineWidth: lineWidth)
            Circle()
                .trim(from: 0.0, to: min(progress, 1.0))
                .stroke(color, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round, lineJoin: .round))
                .rotationEffect(Angle(degrees: 270.0))
                .animation(.linear)
            Text(String(format: "%.0f %%", min(progress, 1.0)*100.0))
                .font(.title)
        }
    }
}

struct CircularProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBar(progress: .constant(0.2), color: .blue)
    }
}
