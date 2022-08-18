//
//  NavigationLinkTutorial.swift
//  Moonshot
//
//  Created by Filippo Cilia on 18/08/2022.
//

import SwiftUI

struct NavigationLinkTutorial: View {
    var body: some View {
        NavigationView {
            List(1 ..< 101) { row in
                NavigationLink {
                    Text("Detail for \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct NavigationLinkTutorial_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkTutorial()
    }
}
