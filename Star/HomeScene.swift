//
//  GameScene.swift
//  Star
//
//  Created by mona alruthaya on 11/06/1446 AH.
//

//import SpriteKit
//import GameplayKit
//
//class GameScene: SKScene {
//    
//    private var label : SKLabelNode?
//    private var spinnyNode : SKShapeNode?
//    
//    override func didMove(to view: SKView) {
//        
//        // Get label node from scene and store it for use later
//        self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
//        if let label = self.label {
//            label.alpha = 0.0
//            label.run(SKAction.fadeIn(withDuration: 2.0))
//        }
//        
//        // Create shape node to use during mouse interaction
//        let w = (self.size.width + self.size.height) * 0.05
//        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
//        
//        if let spinnyNode = self.spinnyNode {
//            spinnyNode.lineWidth = 2.5
//            
//            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
//            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
//                                              SKAction.fadeOut(withDuration: 0.5),
//                                              SKAction.removeFromParent()]))
//        }
//    }
//    
//    
//    func touchDown(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.green
//            self.addChild(n)
//        }
//    }
//    
//    func touchMoved(toPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.blue
//            self.addChild(n)
//        }
//    }
//    
//    func touchUp(atPoint pos : CGPoint) {
//        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
//            n.position = pos
//            n.strokeColor = SKColor.red
//            self.addChild(n)
//        }
//    }
//    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let label = self.label {
//            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
//        }
//        
//        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
//    }
//    
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
//    }
//    
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//    
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
//    }
//    
//    
//    override func update(_ currentTime: TimeInterval) {
//        // Called before each frame is rendered
//    }
//}
import SpriteKit
import UIKit

class HomeScene: SKScene {
    
    override func didMove(to view: SKView) {
        setupBackground()
        setupFoxCharacter()
        setupPlayButton()
        setupFloatingStar()
        setupTopIndicator()
    }
    
    private func setupBackground() {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2)
        background.size = self.size
        background.zPosition = -1
        addChild(background)
    }
    
    private func setupFoxCharacter() {
        let foxCharacter = SKSpriteNode(imageNamed: "fox_character")
        foxCharacter.position = CGPoint(x: size.width / 2, y: size.height / 4)
        foxCharacter.setScale(0.5)
        addChild(foxCharacter)
    }
    
    private func setupPlayButton() {
        let playButtonBackground = SKSpriteNode(imageNamed: "yellow_button")
        playButtonBackground.position = CGPoint(x: size.width / 2, y: size.height / 2)
        playButtonBackground.setScale(0.5)
        addChild(playButtonBackground)
        
        let playIcon = SKSpriteNode(imageNamed: "play_button")
        playIcon.position = playButtonBackground.position
        playIcon.setScale(0.3)
        playIcon.zPosition = 1
        addChild(playIcon)
        
        // Add touch detection
        playButtonBackground.name = "playButton"
    }
    
    private func setupFloatingStar() {
        let star = SKSpriteNode(imageNamed: "star")
        star.position = CGPoint(x: size.width - 100, y: size.height - 150)
        star.setScale(0.4)
        star.zRotation = CGFloat.pi / 8
        addChild(star)
    }
    
    private func setupTopIndicator() {
        let topIndicator = SKSpriteNode(imageNamed: "yellow_button")
        topIndicator.position = CGPoint(x: size.width - 150, y: size.height - 50)
        topIndicator.setScale(0.3)
        addChild(topIndicator)
        
        let smallFox = SKSpriteNode(imageNamed: "fox_character")
        smallFox.position = CGPoint(x: topIndicator.position.x + 20, y: topIndicator.position.y)
        smallFox.setScale(0.2)
        addChild(smallFox)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let node = atPoint(location)
        
        if node.name == "playButton" {
            print("Play Button Pressed")
            // Add functionality to start the game here
        }
    }
}
