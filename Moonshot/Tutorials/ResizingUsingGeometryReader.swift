//
//  ResizingUsingGeometryReader.swift
//  Moonshot
//
//  Created by Filippo Cilia on 18/08/2022.
//

import SwiftUI

struct ResizingUsingGeometryReader: View {
    var body: some View {
        GeometryReader { geo in
            Image("example")
                .resizable()
                .scaledToFit()
            // .frame(width: 300, height: 450)
            // this frame sets the size of the image
                .frame(width: geo.size.width * 0.85)
            // this frame sets the image center to the screen
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct ResizingUsingGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        ResizingUsingGeometryReader()
    }
}
