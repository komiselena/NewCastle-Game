//
//  AchievementsView.swift
//  NewCastle Game
//
//  Created by Mac on 16.05.2025.
//

import SwiftUI

struct AchievementsView: View {
    @ObservedObject var gameData: GameData
    @ObservedObject var gameViewModel: GameViewModel
    
    var body: some View {
        GeometryReader{ g in
            ZStack{
                Image("BG")
                    .resizable()
                    .ignoresSafeArea()
                VStack(spacing: 10){
                    Spacer()
                    ZStack{
                        Capsule()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: g.size.width * 0.9 , height: g.size.height * 0.1)
                        HStack{
                            Image("Achievs")
                                .resizable()
                                .frame(width: g.size.width * 0.1 , height: g.size.width * 0.1)
                                .padding()
                            Text("Play 10 times")
                                .foregroundStyle(.white)
                                .font(.title3.weight(.bold)) // Uses iOS's default title size + heavy weight
                            Spacer()
                            if gameViewModel.played10Times && gameViewModel.hidePlayed10Times == false {
                                Button {
                                    gameData.addCoins(10)
                                    gameViewModel.hidePlayed10Times = true
                                } label: {
                                    ZStack{
                                        Capsule()
                                            .foregroundStyle(.white)
                                            .frame(width: g.size.width * 0.3, height: g.size.width * 0.08)
                                        
                                        HStack{
                                            Text("30")
                                                .foregroundStyle(.black)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(7)
                                            Image("coin")
                                                .frame(width: g.size.width * 0.08 , height: g.size.width * 0.08)
                                            
                                        }
                                        .frame(width: g.size.width * 0.28, height: g.size.width * 0.08)
                                        
                                    }
                                }
                            }
                            
                        }
                        .frame(width: g.size.width * 0.8 , height: g.size.height * 0.1)

                    }
                    
                    ZStack{
                        Capsule()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: g.size.width * 0.9 , height: g.size.height * 0.1)
                        HStack{
                            Image("Achievs")
                                .resizable()
                                .frame(width: g.size.width * 0.1 , height: g.size.width * 0.1)
                                .padding()

                            Text("Collect 100 coins in one game")
                                .foregroundStyle(.white)
                                .font(.title3.weight(.bold)) // Uses iOS's default title size + heavy weight
                            Spacer()
                            if gameViewModel.collected100Coins && gameViewModel.hideCcollected100Coins == false {
                                Button {
                                    gameData.addCoins(10)
                                    gameViewModel.hideCcollected100Coins = true
                                } label: {
                                    ZStack{
                                        Capsule()
                                            .foregroundStyle(.white)
                                            .frame(width: g.size.width * 0.3, height: g.size.width * 0.08)
                                        
                                        HStack{
                                            Text("30")
                                                .foregroundStyle(.black)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(7)
                                            Image("coin")
                                                .frame(width: g.size.width * 0.08 , height: g.size.width * 0.08)
                                            
                                        }
                                        .frame(width: g.size.width * 0.28, height: g.size.width * 0.08)
                                        
                                    }
                                }
                            }
                            
                        }
                        .frame(width: g.size.width * 0.8 , height: g.size.height * 0.1)

                    }
                    
                    ZStack{
                        Capsule()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: g.size.width * 0.9 , height: g.size.height * 0.1)
                        HStack{
                            Image("Achievs")
                                .resizable()
                                .frame(width: g.size.width * 0.1 , height: g.size.width * 0.1)
                                .padding()
                            Text("Accumulate 1000 coins")
                                .foregroundStyle(.white)
                                .font(.title3.weight(.bold)) // Uses iOS's default title size + heavy weight
                            Spacer()
                            if gameViewModel.accumulated1000Coins && gameViewModel.hideAccumulated == false {
                                Button {
                                    gameData.addCoins(10)
                                    gameViewModel.hideAccumulated = true
                                } label: {
                                    ZStack{
                                        Capsule()
                                            .foregroundStyle(.white)
                                            .frame(width: g.size.width * 0.3, height: g.size.width * 0.08)
                                        
                                        HStack{
                                            Text("30")
                                                .foregroundStyle(.black)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(7)
                                            Image("coin")
                                                .frame(width: g.size.width * 0.08 , height: g.size.width * 0.08)
                                            
                                        }
                                        .frame(width: g.size.width * 0.28, height: g.size.width * 0.08)
                                        
                                    }
                                }
                            }
                            
                        }
                        .frame(width: g.size.width * 0.8 , height: g.size.height * 0.1)

                    }
                    
                    ZStack{
                        Capsule()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: g.size.width * 0.9 , height: g.size.height * 0.1)
                        HStack{
                            Image("Achievs")
                                .resizable()
                                .frame(width: g.size.width * 0.1 , height: g.size.width * 0.1)
                                .padding()
                            Text("Unlocked all battlefields")
                                .foregroundStyle(.white)
                                .font(.title3.weight(.bold)) // Uses iOS's default title size + heavy weight
                            Spacer()
                            if gameViewModel.unlockedAllBattleFields && gameViewModel.hideUnlockedAllBattleFields == false {
                                Button {
                                    gameData.addCoins(10)
                                    gameViewModel.hideUnlockedAllBattleFields = true
                                } label: {
                                    ZStack{
                                        Capsule()
                                            .foregroundStyle(.white)
                                            .frame(width: g.size.width * 0.3, height: g.size.width * 0.08)
                                        
                                        HStack{
                                            Text("30")
                                                .foregroundStyle(.black)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(7)
                                            Image("coin")
                                                .frame(width: g.size.width * 0.08 , height: g.size.width * 0.08)
                                            
                                        }
                                        .frame(width: g.size.width * 0.28, height: g.size.width * 0.08)
                                        
                                    }
                                }
                            }
                            
                        }
                        .frame(width: g.size.width * 0.8 , height: g.size.height * 0.1)

                    }
                    ZStack{
                        Capsule()
                            .fill(
                                LinearGradient(
                                    gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: g.size.width * 0.9 , height: g.size.height * 0.1)
                        HStack{
                            Image("Achievs")
                                .resizable()
                                .frame(width: g.size.width * 0.1 , height: g.size.width * 0.1)
                                .padding()
                            Text("Unlocked all knights")
                                .foregroundStyle(.white)
                                .font(.title3.weight(.bold)) // Uses iOS's default title size + heavy weight
                            Spacer()
                            if gameViewModel.unlockedAllKings && gameViewModel.hideUnlockedAllKings == false {
                                Button {
                                    gameData.addCoins(10)
                                    gameViewModel.hideUnlockedAllKings = true
                                } label: {
                                    ZStack{
                                        Capsule()
                                            .foregroundStyle(.white)
                                            .frame(width: g.size.width * 0.3, height: g.size.width * 0.08)
                                        
                                        HStack{
                                            Text("30")
                                                .foregroundStyle(.black)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(7)
                                            Image("coin")
                                                .frame(width: g.size.width * 0.08 , height: g.size.width * 0.08)
                                            
                                        }
                                        .frame(width: g.size.width * 0.28, height: g.size.width * 0.08)
                                        
                                    }
                                }
                            }
                            
                        }
                        .frame(width: g.size.width * 0.8 , height: g.size.height * 0.1)

                    }
                    

                }
                .frame(width: g.size.width * 0.85, height: g.size.height * 0.6)

            }
            .frame(width: g.size.width, height: g.size.height )

        }
    }
}

