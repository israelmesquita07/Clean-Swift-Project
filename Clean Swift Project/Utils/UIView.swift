//
//  UIView.swift
//  Clean Swift Project
//
//  Created by Israel3D on 14/05/2019.
//  Copyright © 2019 Israel3D. All rights reserved.
//

import UIKit

extension UIView {
    func addSubViewForAutoLayout(_ subView:UIView){
        subView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subView)
    }
}
