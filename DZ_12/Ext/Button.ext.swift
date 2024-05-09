//
//  Button.ext.swift
//  DZ_12
//
//  Created by Nikita Shipovskiy on 08/05/2024.
//

import UIKit


class MakeButton {
    
    static func makeAllTopButton(x: CGFloat = 0, y: CGFloat = 0, w: CGFloat, h: CGFloat, action: UIAction, title: String , background: UIColor, radius: CGFloat = 10, font: UIFont) -> UIButton {
        {
            $0.setTitle(title, for: .normal)
            $0.tintColor = .white
            $0.backgroundColor = background
            $0.titleLabel?.font = font
            $0.layer.cornerRadius = radius
        return $0
        }(UIButton(frame: CGRect(x: x, y: y, width: w, height: h), primaryAction: action))
        
    }
}


