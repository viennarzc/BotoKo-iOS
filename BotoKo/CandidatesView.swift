//
//  CandidatesView.swift
//  BotoKo
//
//  Created by Viennarz Curtiz on 3/12/22.
//

import SwiftUI

struct CandidatesView: View {
    
    private let columns = Array(repeating:
                                    GridItem(.flexible(minimum: 40, maximum: .infinity)),
              count: 2)
    
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(0..<10) { num in
                        Text("Candidate \(num + 1)")
                            .frame(width: geometry.size.width / CGFloat(columns.count) - 16, height: 250)
    
                            .background(Color.gray)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                    }
                }
                .padding()
            }
        }
    }
}

struct CandidatesView_Previews: PreviewProvider {
    static var previews: some View {
        CandidatesView()
            .previewInterfaceOrientation(.portrait)
    }
}
