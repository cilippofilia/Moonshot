//
//  HierarchicalCodableData.swift
//  Moonshot
//
//  Created by Filippo Cilia on 18/08/2022.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}

/// These two structs above must match the JSON String below

struct HierarchicalCodableData: View {
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
                "name": "Taylor Swift",
                "address": {
                    "street": "555, Taylor Swift Avenue",
                    "city": "Nashville"
                }
            }
            """

            let data = Data(input.utf8)

            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct HierarchicalCodableData_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalCodableData()
    }
}
