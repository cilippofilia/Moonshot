//
//  DividerView.swift
//  Moonshot
//
//  Created by Filippo Cilia on 19/08/2022.
//

import SwiftUI

// Challenge 2
struct DividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.secondary)
            .padding(.vertical)
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
