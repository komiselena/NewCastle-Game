//
//  HomeView.swift
//  NewCastle Game
//
//  Created by Mac on 17.05.2025.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var gameData: GameData
    @ObservedObject var gameViewModel: GameViewModel

    var body: some View {
        GeometryReader { g in
            ZStack {
                Image("BG")
                    .resizable()
                    .ignoresSafeArea()

                VStack(spacing: 10) {
                    Spacer()
                    HStack{
                        NavigationLink {
                            MiniGamesView(gameData: gameData, gameViewModel: gameViewModel)
                        } label: {
                            Image("key")
                                .resizable()
                                .scaledToFit()
                                .frame(width: g.size.width * 0.23, height: g.size.width * 0.23)
                            
                        }
                        Spacer()
                    }
                    .padding()
                    NavigationLink(destination: GameContainerView(gameViewModel: gameViewModel, gameData: gameData)) {
                        ZStack{
                            Capsule()
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .frame(width: g.size.width * 0.7, height: g.size.height * 0.1)

                            HStack{
                                Spacer()
                                Text("Battle")
                                    .foregroundStyle(.white)
                                    .font(.title.weight(.bold))
                                Spacer()
                                Image("battle")
                                    .resizable()
                                    .frame(width: g.size.height * 0.1, height: g.size.height * 0.1)

                            }
                            .frame(width: g.size.width * 0.6, height: g.size.height * 0.15)

                        }
                        
                    }
                    
                }
                .frame(width: g.size.width * 0.9, height: g.size.height * 0.6)

            }
            .frame(width: g.size.width, height: g.size.height)
            
        }
    }
}
