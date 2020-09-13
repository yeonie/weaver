//
//  UIImage.swift
//  ios
//
//  Created by 이동연 on 12/09/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import UIKit

extension UIImage {
    static func from(_ color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
