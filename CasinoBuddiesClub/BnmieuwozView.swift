//
//  BnmieuwozView.swift
//  CasinoBuddiesClub
//
//  Created by Nicolae Chivriga on 19/02/2025.
//

import SwiftUI
import StoreKit


struct BnmieuwozView: View {
    var body: some View {
        ZStack {
            Image("nbnuiebr")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("sqibotpxcle")
                    .resizable()
                    .scaledToFit()
                
                HStack(spacing: 25) {
                    Button {
                        if let url = URL(string: "mailto:nguyennhattrangveqn45933@gmail.com") {
                            
                            UIApplication.shared.open(url) {  succes in
                                if succes {
                                
                                }
                            }
                        }
                    } label: {
                        Image("quirorbpzsoiq")
                            .resizable()
                            .scaledToFit()
                            .padding(30)
                    }

                    NavigationLink {
                        SiquozpbtyeqView()
                    } label: {
                        Image("sjirgjbz")
                            .resizable()
                            .scaledToFit()
                            .padding(30)
                           
                    }
                    .offset(y: 14)
                    
                    Button {
                        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                               SKStoreReviewController.requestReview(in: scene)
                           }
                    } label: {
                        Image("qzwurbkosp")
                            .resizable()
                            .scaledToFit()
                            .padding(30)
                    }

                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}
