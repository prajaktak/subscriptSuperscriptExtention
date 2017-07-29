//
//  SubscriptSuperscriptString.swift
//  SubscriptSuperscriptString
//
//  Created by Prajakta Kulkarni on 7/29/17.
//  Copyright © 2017 Prajakta Kulkarni. All rights reserved.
//

import Foundation
import UIKit

extension String{
    func subscriptString(subscriptStr:String) ->NSMutableAttributedString {
        let range = self.range(of: subscriptStr)
        let startPos = self.distance(from: (self.startIndex), to: (range?.lowerBound)!)
        let length = self.distance(from: (range?.lowerBound)!, to: (range?.upperBound)!)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string:self)
        attString.setAttributes([NSBaselineOffsetAttributeName:-7], range: NSRange(location:startPos,length:length))
        return attString
    }
    func superscriptString(superscriptStr:String)-> NSMutableAttributedString {
        let range = self.range(of: superscriptStr)
        let startPos = self.distance(from: (self.startIndex), to: (range?.lowerBound)!)
        let length = self.distance(from: (range?.lowerBound)!, to: (range?.upperBound)!)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string:self)
        attString.setAttributes([NSBaselineOffsetAttributeName:7], range: NSRange(location:startPos,length:length))
        return attString
    }
}
