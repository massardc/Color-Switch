//
//  MenuScene.swift
//  Color Switch
//
//  Created by ClementM on 05/03/2018.
//  Copyright © 2018 ClementM. All rights reserved.
//

import SpriteKit

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        addLogo()
        addLabels()
    }
    
    func addLogo() {
        let logoSprite = SKSpriteNode(imageNamed: "logo")
        logoSprite.size = CGSize(width: frame.width / 4, height: frame.width / 4)
        logoSprite.position = CGPoint(x: frame.midX, y: frame.midY + frame.size.height / 4)
        
        addChild(logoSprite)
    }
    
    func addLabels() {
        let playLabel = SKLabelNode(text: "Tap to play")
        let highScoreLabel = SKLabelNode(text: "Highscore: \(UserDefaults.standard.integer(forKey: "Highscore"))")
        let recentScoreLabel = SKLabelNode(text: "Recent score: \(UserDefaults.standard.integer(forKey: "RecentScore"))")
        
        playLabel.fontName = "AvenirNext-Bold"
        playLabel.fontSize = 50
        playLabel.fontColor = UIColor.white
        playLabel.position = CGPoint(x: frame.midX, y: frame.midY)
        addChild(playLabel)
        animateLabel(label: playLabel)
        
        highScoreLabel.fontName = "AvenirNext-Bold"
        highScoreLabel.fontSize = 40
        highScoreLabel.fontColor = UIColor.white
        highScoreLabel.position = CGPoint(x: frame.midX, y: frame.midY - highScoreLabel.frame.size.height * 4)
        addChild(highScoreLabel)
        
        recentScoreLabel.fontName = "AvenirNext-Bold"
        recentScoreLabel.fontSize = 40
        recentScoreLabel.fontColor = UIColor.white
        recentScoreLabel.position = CGPoint(x: frame.midX, y: highScoreLabel.position.y - recentScoreLabel.frame.size.height * 2)
        addChild(recentScoreLabel)
    }
    
    func animateLabel(label: SKLabelNode) {
        let fadeOut = SKAction.fadeOut(withDuration: 1.5)
        let fadeIn = SKAction.fadeIn(withDuration: 1.5)
        let scaleUp = SKAction.scale(to: 1.0, duration: 1.5)
        let scaleDown = SKAction.scale(to: 0.9, duration: 1.5)
        
        let group1 = SKAction.group([fadeOut, scaleDown])
        let group2 = SKAction.group([fadeIn, scaleUp])
        let sequence = SKAction.sequence([group1, group2])
        
        label.run(SKAction.repeatForever(sequence))
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let gameScene = GameScene(size: view!.bounds.size)
        view?.presentScene(gameScene)
    }
    
}
