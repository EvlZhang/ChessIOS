//
//  Board.swift
//  ChessBeta
//
//  Created by Evelyn Zhang on 9/21/20.
//

import UIKit

class Board: UIView {
    
    let ratio: CGFloat=0.85
    var originalX : CGFloat = 20
    var originalY : CGFloat = 25
    var cellWidth : CGFloat = 45
    
    override func draw(_ rect: CGRect){
        cellWidth=bounds.width*ratio/8
        originalX=bounds.width*(1-ratio)/2
        originalY=bounds.width*(1-ratio)/2
        drawBoard()
    }
    
    func drawBoard(){
        
        for i in 0..<4{
            for j in 0..<4{
                drawSquare(col: j*2, row: i*2, color: UIColor.black)
                drawSquare(col: 1+j*2, row: 2*i, color: UIColor.white)

                drawSquare(col: j*2, row: 1+i*2, color: UIColor.white)
                drawSquare(col: 1+j*2, row: 1+2*i, color: UIColor.black)
            }
        }
        
        
        
    }
    func drawSquare(col:Int,row:Int,color:UIColor){
        let path=UIBezierPath(rect: CGRect(x: originalX + CGFloat(col)*cellWidth, y: originalY + CGFloat(row)*cellWidth, width: cellWidth, height: cellWidth))
        
        color.setFill()
        path.fill()
    }

}
