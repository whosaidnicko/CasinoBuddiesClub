//
//  FlyngView.swift
//  CasinoBuddiesClub
//
//  Created by Nicolae Chivriga on 19/02/2025.
//

import SwiftUI

        struct FlyngView: View {
            var letter: String
            var delay: Double
            @State private var isAnimating = false

            var body: some View {
                Text(letter)
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                    .shadow(color: Color.blue.opacity(0.8), radius: 10, x: 0, y: 0)
                    .offset(y: isAnimating ? -15 : 0)
                    .opacity(isAnimating ? 1.0 : 0.8)
                    .onAppear {
                        // Trigger a repeating animation with a delay
                        withAnimation(
                            Animation.easeInOut(duration: 1.0)
                                .delay(delay)
                                .repeatForever(autoreverses: true)
                        ) {
                            isAnimating.toggle()
                        }
                    }
            }
        }

        struct FlyingColdLoadingView: View {
            let text = "LOADING..."
            
            var body: some View {
                HStack(spacing: 5) {
                    ForEach(Array(text.enumerated()), id: \.offset) { index, char in
                        FlyngView(letter: String(char), delay: Double(index) * 0.1)
                    }
                }
                .padding()
              
            }
        
    }

