////
////  Splash.swift
////  Star
////
////  Created by mona alruthaya on 11/06/1446 AH.
////
//
//import SpriteKit
//import UIKit
//
//class SplashScene: SKScene {
//    
//    override func didMove(to view: SKView) {
//        setupBackground()
//        setupFoxWithStar()
//        setupTitlePlaceholder()
//        
//        // Transition to Home Scene after 3 seconds
//        let wait = SKAction.wait(forDuration: 3.0)
//        let transitionAction = SKAction.run {
//            let homeScene = HomeScene(size: self.size)
//            homeScene.scaleMode = .aspectFill
//            self.view?.presentScene(homeScene, transition: SKTransition.fade(withDuration: 1.0))
//        }
//        self.run(SKAction.sequence([wait, transitionAction]))
//    }
//    
//    private func setupBackground() {
//        let background = SKSpriteNode(imageNamed: "D")
//        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        background.size = self.size
//        background.zPosition = -1
//        addChild(background)
//    }
//    
//    private func setupFox() {
//        let foxWithStar = SKSpriteNode(imageNamed: "happy")
//        setupFox.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        setupFox.setScale(0.5)
//        addChild(setupFox)
//    }
//    
//    private func setupStar() {
//        let foxWithStar = SKSpriteNode(imageNamed: "star")
//        foxWithStar.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        foxWithStar.setScale(0.5)
//        addChild(foxWithStar)
//    }
//    
//    private func setupTitlePlaceholder() {
//        let yellowButton = SKSpriteNode(imageNamed: "yellow_button")
//        yellowButton.position = CGPoint(x: size.width / 2, y: size.height / 3)
//        yellowButton.setScale(0.7)
//        addChild(yellowButton)
//    }
//}
////struct SplashScene_Previews: PreviewProvider {
////    static var previews: some View {
////        SplashScene()
////    }
////}
//import SpriteKit
//import SwiftUI
//import GameplayKit
//
//
//
//class SplashScene: SKScene {
//    override func didMove(to view: SKView) {
//        setupBackground()
//        setupFox()
//        setupStar()
//        setupYellowBox()
//        
//        // Transition to HomeScene after 3 seconds
//        let waitAction = SKAction.wait(forDuration: 3.0)
//        let transitionAction = SKAction.run {
//            let homeScene = HomeScene(size: self.size)
//            homeScene.scaleMode = .aspectFill
//            self.view?.presentScene(homeScene, transition: SKTransition.fade(withDuration: 1.0))
//        }
//        run(SKAction.sequence([waitAction, transitionAction]))
//    }
//    
//    private func setupBackground() {
//        let background = SKSpriteNode(color: .cyan, size: self.size)
//        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        background.zPosition = -1
//        addChild(background)
//    }
//    
//    private func setupFox() {
//        // Fox holding a star
//        let fox = SKSpriteNode(imageNamed: "happy")
//        fox.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        fox.setScale(0.5)
//        addChild(fox)
//    }
//    
//    private func setupStar() {
//        // Fox holding a star
//        let Star = SKSpriteNode(imageNamed: "star")
//        Star.position = CGPoint(x: size.width / 2, y: size.height / 2)
//        Star.setScale(0.5)
//        addChild(Star)
//    }
//    
//    private func setupYellowBox() {
//        // Yellow button box (just for placeholder look)
//        let yellowBox = SKSpriteNode(color: .yellow, size: CGSize(width: 300, height: 80))
//        yellowBox.position = CGPoint(x: size.width / 2, y: size.height / 3)
//        yellowBox.zPosition = 1
//        addChild(yellowBox)
//    }
//}
//
//#Preview {
//    SplashSceneView()
//}
import SpriteKit
import SwiftUI
import GameplayKit

class SplashScene: SKScene {
    override func didMove(to view: SKView) {
        setupBackground()
        setupCircul()
        setupFox()
        setupStar()
     //jjppp[pp[[[[   setupYellowBox()
        
        // Transition to HomeScene after 3 seconds
        let waitAction = SKAction.wait(forDuration: 3.0)
        let transitionAction = SKAction.run {
            let homeScene = HomeScene(size: self.size)
            homeScene.scaleMode = .aspectFill
            self.view?.presentScene(homeScene, transition: SKTransition.fade(withDuration: 1.0))
        }
        run(SKAction.sequence([waitAction, transitionAction]))
    }
    
    private func setupBackground() {
            // Load the PNG background image
            let background = SKSpriteNode(imageNamed: "D") // Ensure "background.png" is in your assets
            background.position = CGPoint(x: size.width / 2, y: size.height / 2)
            background.size = CGSize(width: 1180, height: 820) // Force the size
            background.zPosition = -4
            addChild(background)
        }
        
    private func setupCircul() {
        // Fox holding a star
        let circule = SKSpriteNode(imageNamed: "circule")
        circule.position = CGPoint(x: size.width / 2, y: size.height / 2)
        circule.size = CGSize(width: 632.16, height: 615) // Force the size
        circule.setScale(0.5)
        addChild(circule)
    }
    
    private func setupFox() {
        // Fox holding a star
        let fox = SKSpriteNode(imageNamed: "happy")
        fox.position = CGPoint(x: size.width / 2, y: size.height / 2)
        fox.setScale(0.5)
        addChild(fox)
    }
    
    private func setupStar() {
        // Star
        let star = SKSpriteNode(imageNamed: "star")
        star.position = CGPoint(x: size.width / 2, y: size.height / 2)
        star.setScale(0.5)
        addChild(star)
    }
//    
//    private func setupYellowBox() {
//        // Yellow button box (just for placeholder look)
//        let yellowBox = SKSpriteNode(color: .yellow, size: CGSize(width: 300, height: 80))
//        yellowBox.position = CGPoint(x: size.width / 2, y: size.height / 3)
//        yellowBox.zPosition = 1
//        addChild(yellowBox)
//    }
}

// مكوّن SwiftUI لعرض SplashScene
struct SplashSceneView: View {
    var body: some View {
        SpriteView(scene: {
            let scene = SplashScene()
            scene.size = CGSize(width: 400, height: 600)
            scene.scaleMode = .aspectFill
            return scene
        }())
        .ignoresSafeArea() // لملء الشاشة
    }
}

#Preview {
    SplashSceneView()
}
