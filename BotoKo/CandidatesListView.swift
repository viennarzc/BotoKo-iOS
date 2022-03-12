//
//  CandidatesListView.swift
//  BotoKo
//
//  Created by Viennarz Curtiz on 3/12/22.
//

import SwiftUI

struct CandidatesListView: View {
    @StateObject var viewModel: CandidatesListViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.candidatesListItemVM) { candidate in
                
                HStack {
                    Text("\(candidate.ballotNumber)")
                        .font(.title)
                        .padding()
                        .background(Circle().fill(Color(UIColor.systemTeal)))
                    
                    VStack(alignment: .leading) {
                        Text(candidate.name)
                            .font(.body.weight(.bold))
                        Text(candidate.party)
                            .font(.subheadline.weight(.light))
                    }
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle(viewModel.navigationTitle)
        }
    }
}

class CandidatesListViewModel: ObservableObject {
    @Published var navigationTitle: String
    @Published var candidatesListItemVM: [CandidateListItemViewModel]
    
    init(candidates: [Candidate], navigationTitle: String) {
        self.candidatesListItemVM = candidates.map { CandidateListItemViewModel(candidate: $0) }
        
        self.navigationTitle = navigationTitle
    }
    
    struct CandidateListItemViewModel: Identifiable {
        var id: Int
        var name: String
        var fullName: String
        var party: String
        var ballotNumber: Int
        
        init(candidate: Candidate) {
            self.id = candidate.id
            self.name = candidate.name
            self.fullName = candidate.fullName
            self.party = candidate.party
            self.ballotNumber = candidate.ballotNumber
        }
    }
}

struct CandidatesListView_Previews: PreviewProvider {
    static var previews: some View {
        CandidatesListView(viewModel: CandidatesListViewModel.listExamples)
    }
}


protocol Candidate {
    var id: Int { get set }
    var name: String { get set }
    var fullName: String { get set }
    var party: String { get set }
    var ballotNumber: Int { get set }
}

struct Presidential: Candidate, Identifiable{
    var id: Int
    
    var name: String
    
    var fullName: String
    
    var party: String
    
    var ballotNumber: Int
    
    
}

struct Senatorial: Candidate, Identifiable {
    var id: Int
    
    var name: String
    
    var fullName: String
    
    var party: String
    
    var ballotNumber: Int
    
    
}

struct VicePresidential: Candidate, Identifiable {
    var id: Int
    
    var name: String
    
    var fullName: String
    
    var party: String
    
    var ballotNumber: Int
    
    
}
