//
//  ShopView.swift
//  NewCastle Game
//
//  Created by Mac on 16.05.2025.
//

import SwiftUI

struct ShopView: View {
    
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var gameData: GameData
    @ObservedObject var gameViewModel: GameViewModel

    var body: some View {
        GeometryReader { g in
            ZStack {
                Image("BG")
                    .resizable()
                    .ignoresSafeArea()
                ScrollView(showsIndicators: false){
                    VStack{
                        ZStack{
                            Capsule()
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .frame(width: g.size.width * 0.25, height: g.size.height * 0.06)
                            HStack{
                                Image("coin")
                                    .frame(width: g.size.width * 0.08, height: g.size.width * 0.08)
                                Text("\(gameData.coins)")
                                    .foregroundStyle(.white)
                                    .font(.title2)

                            }
                            .frame(width: g.size.width * 0.3, height: g.size.height * 0.08)

                        }
                        .padding()
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .frame(width: g.size.width * 0.85, height: g.size.height * 0.6)
                            VStack{
                                Text("Battle Fields")
                                    .foregroundStyle(.white)
                                    .font(.title.weight(.bold)) // Uses iOS's default title size + heavy weight
                                    .padding()
                                HStack(spacing: 20){
                                    VStack(spacing: 5){
                                        Image("BG1")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Steppe")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleBackgroundButton(id: 1)
                                        } label: {
                                            Text(currentBGButtonImage(for: 1))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                    
                                                    
                                                }
                                            
                                            
                                        }
                                        
                                    }
                                    .padding(10)
                                    VStack(spacing: 5){
                                        Image("BG2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Forest")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleBackgroundButton(id: 2)
                                        } label: {
                                            Text(currentBGButtonImage(for: 2))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                    
                                                    
                                                }
                                            
                                            
                                        }
                                        
                                    }
                                    .padding(10)

                                }
                                HStack(spacing: 30){
                                    VStack(spacing: 5){
                                        Image("BG3")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Mountain")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleBackgroundButton(id: 3)
                                        } label: {
                                            Text(currentBGButtonImage(for: 3))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                        
                                                    
                                                }
                                            
                                            
                                        }

                                    }
                                    .padding(10)

                                    VStack(spacing: 5){
                                        Image("BG4")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Hell")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleBackgroundButton(id: 4)
                                        } label: {
                                            Text(currentBGButtonImage(for: 4))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                        
                                                    
                                                }
                                            
                                            
                                        }

                                    }
                                    .padding(10)

                                }

                            }
                            .frame(width: g.size.width * 0.85, height: g.size.height * 0.5)


                        }
                        .padding()
                        
                        ZStack{
                            RoundedRectangle(cornerRadius: 40)
                                .fill(
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .frame(width: g.size.width * 0.85, height: g.size.height * 0.6)
                            VStack{
                                Text("Knights")
                                    .foregroundStyle(.white)
                                    .font(.title.weight(.bold)) // Uses iOS's default title size + heavy weight
                                    .padding()
                                HStack(spacing: 20){
                                    VStack(spacing: 5){
                                        Image("skin1")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Rogue")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleSkinButton(id: 1)
                                        } label: {
                                            Text(currentSkinButtonImage(for: 1))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                    
                                                    
                                                }
                                            
                                            
                                        }
                                        
                                    }
                                    .padding(10)

                                    VStack(spacing: 5){
                                        Image("skin2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Warrior")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleSkinButton(id: 2)
                                        } label: {
                                            Text(currentSkinButtonImage(for: 2))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                    
                                                    
                                                }
                                            
                                            
                                        }
                                        
                                    }
                                    .padding(10)

                                }
                                HStack(spacing: 30){
                                    VStack(spacing: 5){
                                        Image("skin3")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Archer")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleSkinButton(id: 3)
                                        } label: {
                                            Text(currentSkinButtonImage(for: 3))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                        
                                                    
                                                }
                                            
                                            
                                        }

                                    }
                                    .padding(10)

                                    VStack(spacing: 5){
                                        Image("skin4")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: g.size.width * 0.25, height: g.size.width * 0.25)
                                            .clipped()
                                            .cornerRadius(15)
                                        Text("Barbarian")
                                            .foregroundStyle(.white)
                                            .font(.headline)

                                        Button {
                                            handleSkinButton(id: 4)
                                        } label: {
                                            Text(currentSkinButtonImage(for: 4))
                                                .foregroundStyle(.purple)
                                                .font(.callout.weight(.bold)) // Uses iOS's default title size + heavy weight
                                                .padding(.vertical, 5)
                                                .padding(.horizontal, 15)
                                                .background {
                                                    Capsule()
                                                        .foregroundStyle(.white)
                                                        
                                                    
                                                }
                                            
                                            
                                        }

                                    }
                                    .padding(10)


                                }

                            }
                            .frame(width: g.size.width * 0.85, height: g.size.height * 0.5)


                        }
                        .padding(.bottom, g.size.width * 0.4)

                    }
                }
            }
            .frame(width: g.size.width, height: g.size.height )

        }
    }
    
    
    private func handleSkinButton(id: Int) {
        if gameData.boughtSkinId.contains(id) {
            gameViewModel.skin = "skin\(id)"
            
            gameViewModel.objectWillChange.send() // Добавьте эту строку
        } else {
            if gameData.coins >= 100 {
                gameData.coins -= 100
                gameData.boughtSkinId.append(id)
            } else {
                print("Not enough money")
            }
        }
    }
    
    private func handleBackgroundButton(id: Int) {
        if gameData.boughtBackgroundId.contains(id)  {
            gameViewModel.backgroundImage = "BG\(id)"
            
            gameViewModel.objectWillChange.send() // Добавьте эту строку
        } else {
            if gameData.coins >= 100 {
                gameData.coins -= 100

                gameData.boughtBackgroundId.append(id)
//                gameViewModel.backgroundImage = "BG\(id)"
            } else {
                print("Not enough money")

            }
        }
    }
    
    private func currentSkinButtonImage(for id: Int) -> String {
        if gameData.boughtSkinId.contains(id) && gameViewModel.skin != "skin\(id)" {
            return "Choose"
        } else if gameViewModel.skin == "skin\(id)" {
            return "Chosen"
        } else{
            return "100"
        }
    }

    private func currentBGButtonImage(for id: Int) -> String {
        if gameData.boughtBackgroundId.contains(id) && gameViewModel.backgroundImage != "BG\(id)" {
            return "Choose"
        } else if gameViewModel.backgroundImage == "BG\(id)" {
            return "Chosen"
        } else{
            return "100"
        }
    }

}

