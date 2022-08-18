//
//  ScrollView.swift
//  Moonshot
//
//  Created by Filippo Cilia on 18/08/2022.
//

import SwiftUI

struct ScrollViewTutorial: View {
    var body: some View {
        // ScrollView can make scrolling horizontal or vertical by adding (.horizontal/.vertical)
        ScrollView {
            // LazyVStack allows us to create items more effectively.
            // Instead of creating all 100 rows immediately, it creates a bunch upfront and the rest  while scrolling
            LazyVStack(spacing: 10) {
                ForEach(1 ..< 101) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct CustomText: View {
    var text: String

    var body: some View {
        Text(text)
    }

    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ScrollViewTutorial_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewTutorial()
    }
}
