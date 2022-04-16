//
//  CardListView.swift
//  Quizlet-ish
//
//  Created by Antoine Lavoie on 4/15/22.
//

import SwiftUI

struct CardListView: View {
  var cards: [Card] = []
  @State var showForm = false

  var body: some View {
    NavigationView {
      VStack {
        Spacer()
        VStack {
          GeometryReader { geometry in
            ScrollView(.horizontal) {
              HStack(spacing: 10) {
                ForEach(cards, id: \.id) { card in
                  CardView(card: card)
                    .padding([.leading, .trailing])
                }
              }.frame(height: geometry.size.height)
            }
          }
        }
        Spacer()
      }
      .sheet(isPresented: $showForm) {
        NewCardForm(cardListViewModel: CardListViewModel())
      }
      .navigationBarTitle("💯 Quizlet-ish")
        .navigationBarItems(trailing: Button(action: { showForm.toggle() }) {
          Image(systemName: "plus")
            .font(.title)
        })
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

struct CardListView_Previews: PreviewProvider {
  static var previews: some View {
    CardListView(cards: testData)
  }
}
