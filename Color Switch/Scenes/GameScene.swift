//
//  GameScene.swift
//  Color Switch
//
//  Created by ClementM on 04/03/2018.
//  Copyright © 2018 ClementM. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var colorSwitch: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        layoutScene()
    }
    
    func layoutScene() {
        backgroundColor = UIColor(red: 44/255, green: 62/255, blue: 80/255, alpha: 1.0)
        
        colorSwitch = SKSpriteNode(imageNamed: "ColorCircle")
        colorSwitch.size = CGSize(width: frame.size.width / 3, height: frame.size.width / 3)
        colorSwitch.position = CGPoint(x: frame.midX, y: frame.minY + colorSwitch.size.height)
        addChild(colorSwitch)
        
        spawnBall()
    }
    
    func spawnBall() {
        let ball = SKSpriteNode(imageNamed: "ball")
        ball.size = CGSize(width: 30.0, height: 30.0)
        ball.position = CGPoint(x: frame.midX, y: frame.maxY)
        addChild(ball)
    }

}