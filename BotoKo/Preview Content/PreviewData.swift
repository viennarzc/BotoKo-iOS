//
//  PreviewData.swift
//  BotoKo
//
//  Created by Viennarz Curtiz on 3/12/22.
//

import Foundation

extension CandidatesListViewModel {
    static let listExamples =
        CandidatesListViewModel(
            candidates: [
                Presidential(id: 1, name: "Tony Stark", fullName: "Anthony Stark", party: "Avengers", ballotNumber: 1),
                Presidential(id: 2, name: "Steve Rogers", fullName: "Steve Rogers", party: "Avengers", ballotNumber: 2),
                Presidential(id: 3, name: "Bruce Wayne", fullName: "Bruce What Wayne", party: "Justice League", ballotNumber: 3)
            ], navigationTitle: "Presidential Candidates")
}
