//
//  GameContainerView.swift
//  Lucky Eagle Game
//
//  Created by Mac on 25.04.2025.
//

import SwiftUI
import SpriteKit

struct GameContainerView: View {
    @State private var gameScene = GameScene(size: UIScreen.main.bounds.size)
    @ObservedObject var gameViewModel: GameViewModel
    @ObservedObject var gameData: GameData
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
            
            GeometryReader { g in
                ZStack {
                    SpriteView(scene: gameScene)
                        .ignoresSafeArea()
                        .environmentObject(gameViewModel)
                    
                    VStack {
                        
                        Spacer()
                        
                        // Панель управления
                        VStack(spacing: 10) {
                            // Вперёд (вверх)
                            Button(action: {}) {
                                ControlButton(icon: "arrowtriangle.up.fill", size: g.size.width * 0.2)
                            }
                            .simultaneousGesture(
                                DragGesture(minimumDistance: 0)
                                    .onChanged { _ in
                                        gameScene.movePlayer(forward: true, start: true)
                                    }
                                    .onEnded { _ in
                                        gameScene.movePlayer(forward: true, start: false)
                                    }
                            )
                            
                            HStack(spacing: 10) {
                                // Поворот влево
                                Button(action: {}) {
                                    ControlButton(icon: "arrowtriangle.left.fill", size: g.size.width * 0.2)
                                }
                                .simultaneousGesture(
                                    DragGesture(minimumDistance: 0)
                                        .onChanged { _ in
                                            gameScene.rotatePlayer(clockwise: false, start: true)
                                        }
                                        .onEnded { _ in
                                            gameScene.rotatePlayer(clockwise: false, start: false)
                                        }
                                )
                                
                                // Назад (вниз)
                                Button(action: {}) {
                                    ControlButton(icon: "arrowtriangle.down.fill", size: g.size.width * 0.2)
                                }
                                .simultaneousGesture(
                                    DragGesture(minimumDistance: 0)
                                        .onChanged { _ in
                                            gameScene.movePlayer(forward: false, start: true)
                                        }
                                        .onEnded { _ in
                                            gameScene.movePlayer(forward: false, start: false)
                                        }
                                )
                                
                                // Поворот вправо
                                Button(action: {}) {
                                    ControlButton(icon: "arrowtriangle.right.fill", size: g.size.width * 0.2)
                                }
                                .simultaneousGesture(
                                    DragGesture(minimumDistance: 0)
                                        .onChanged { _ in
                                            gameScene.rotatePlayer(clockwise: true, start: true)
                                        }
                                        .onEnded { _ in
                                            gameScene.rotatePlayer(clockwise: true, start: false)
                                        }
                                )
                            }
                        }

                    }
                    .frame(width: g.size.width * 0.9, height: g.size.height * 0.9)
                }
                .blur(radius: gameViewModel.isGameOver ? 10 : 0)

                .frame(width: g.size.width, height: g.size.height)
                .overlay {
                    if gameViewModel.isGameOver {
                        ZStack{
                            Color.black
                                .opacity(0.5)
                                .ignoresSafeArea()
                            VStack{
                                Spacer()
                                HStack{
                                    Spacer()
                                    WinView(gameViewModel: gameViewModel, gameData: gameData)
                                    Spacer()
                                }
                                Spacer()
                            }
                        }
                    }
                }

            }
            .onAppear {
                setupGameScene()
            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarLeading) {
                    Button{ dismiss() } label: {
                        BackButton()
                    }
                }
            })

            .navigationBarBackButtonHidden()
    }
    private func setupGameScene() {
        let newScene = GameScene(size: UIScreen.main.bounds.size)
        newScene.scaleMode = .resizeFill
        newScene.gameViewModel = gameViewModel
        newScene.gameData = gameData
        gameScene = newScene
    }

}

struct ControlButton: View {
    let icon: String
    let size: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color(hex: "#7C0A99"), Color(hex: "#440952")]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: size, height: size)
            Image(systemName: icon)
                .foregroundStyle(.white)
                .font(.title.weight(.bold))
        }
    }
}
