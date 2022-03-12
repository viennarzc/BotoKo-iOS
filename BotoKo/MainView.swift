//
//  MainView.swift
//  BotoKo
//
//  Created by Viennarz Curtiz on 3/12/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            CandidatesListView(viewModel: CandidatesListViewModel(candidates: [Presidential(id: 1, name: "Ka Leody", fullName: "Leody De Guzman", party: "Party", ballotNumber: 2)], navigationTitle: "Presidential Candidates"))
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }

            ContentView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
