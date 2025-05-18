//
//  WinView.swift
//  NewCastle Game
//
//  Created by Mac on 17.05.2025.
//

import SwiftUI

struct WinView: View {
    @ObservedObject var gameViewModel: GameViewModel
    @ObservedObject var gameData: GameData
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        GeometryReader { g in
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: g.size.width * 0.85, height: g.size.height * 0.6)
                VStack{
                    Text("Game Over")
                        .foregroundStyle(.white)
                        .font(.system(size: 34, weight: .bold))
                        .padding()
                    Text("Your Score:")
                        .foregroundStyle(.white)
                        .font(.callout)
                    HStack{
                        Text("\(gameData.coins)")
                            .foregroundStyle(.white)
                            .font(.system(size: 28, weight: .bold))
                        Image("coin")
                            .resizable()
                            .scaledToFit()
                            .frame(width: g.size.width * 0.2, height: g.size.width * 0.2)
                    }
                    .frame(width: g.size.width * 0.5)
                    Button {
                        gameViewModel.isGameOver = false
                    } label: {
                        ZStack{
                            Capsule()
                                .foregroundStyle(.white)
                                .frame(width: g.size.width * 0.6, height: g.size.width * 0.15)
                            Text("Play Again")
                                .foregroundStyle(.black)
                                .font(.system(size: 22, weight: .bold))
                            
                            
                        }
                        
                    }
                    
                    .padding(.bottom, 5)
                    Button {
                        dismiss()
                        gameViewModel.isGameOver = false
                    } label: {
                        ZStack{
                            Capsule()
                                .foregroundStyle(.white)
                                .frame(width: g.size.width * 0.6, height: g.size.width * 0.15)
                            Text("Home")
                                .foregroundStyle(.black)
                                .font(.system(size: 22, weight: .bold))
                            
                            
                        }
                        
                    }
                    
                    
                    
                }
            }
            .frame(width: g.size.width, height: g.size.height)

        }
    }
}

