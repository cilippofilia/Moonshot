//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by Filippo Cilia on 19/08/2022.
//

import SwiftUI

struct ListLayoutView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission]  = Bundle.main.decode("missions.json")

    var body: some View {
        List {
            ForEach(missions) { mission in
                NavigationLink {
                    MissionView(mission: mission, astronauts: astronauts)
                } label: {
                    HStack {
                        Image(mission.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)

                        VStack(alignment: .leading) {
                            Text(mission.displayName)
                                .font(.headline)
                                .foregroundColor(.white)

                            Text(mission.formattedLaunchDate)
                                .font(.caption)
                                .foregroundColor(.white.opacity(0.6))
                        }
                        .padding()
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .buttonStyle(.plain)
            }
            .padding(.horizontal)
            .preferredColorScheme(.dark)
        }
    }
}

struct ListLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        ListLayoutView()
    }
}
