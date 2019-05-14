//
//  Comment.swift
//  Clean Swift Project
//
//  Created by Israel3D on 14/05/2019.
//  Copyright © 2019 Israel3D. All rights reserved.
//

import Foundation

struct CommentModel: Codable {
    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String
}
