//
//  ContentView.swift
//  CircularProgressBar
//
//  Created by Bartosz on 15/08/2021.
//

import SwiftUI

struct ContentView: View {

    @State var progress: CGFloat = 0.0

    var body: some View {
        CircularProgressBar(progress: $progress, color: .blue, lineWidth: 10)
            .frame(width: 200, height: 200, alignment: .center)
            .padding()

        Button(action: {
            if progress > 0.9 {
                progress = 0.0
                return
            }
            progress = progress + 0.1
        }) {
            Text("Press me")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
