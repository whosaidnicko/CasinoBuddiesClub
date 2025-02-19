//
//  SiquozpbtyeqView.swift
//  CasinoBuddiesClub
//
//  Created by Nicolae Chivriga on 19/02/2025.
//

import SwiftUI
import Lottie


struct SiquozpbtyeqView: View {
    @Environment(\.dismiss) var dismiss
    @State var donsh: Bool = false
    var body: some View {
        ZStack {
            Image("siqoburkzsieq")
                .resizable()
                .ignoresSafeArea()
            if !donsh {
                LottieView(animation: .named("sjqipbtiuwsb"))
                    .playing(loopMode: .loop)
                    .resizable()
                    .frame(width: 250, height: 250)
            }
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/poker-with-buddies/")!) {
                let impactMed = UIImpactFeedbackGenerator(style: .heavy)
                 impactMed.impactOccurred()
                donsh = true
            }
                .cornerRadius(16)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Button(action: {
            self.dismiss()
        }, label: {
            Image("qisgezx")
                .overlay {
                    Image("sgqot")
                }
        }))
    }
}
