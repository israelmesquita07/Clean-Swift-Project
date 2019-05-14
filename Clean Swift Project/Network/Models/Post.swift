//
//  Post.swift
//  Clean Swift Project
//
//  Created by Israel3D on 14/05/2019.
//  Copyright © 2019 Israel3D. All rights reserved.
//

import Foundation

struct PostModel: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}
