//
//  CommentModels.swift
//  Clean Swift Project
//
//  Created by Israel3D on 14/05/2019.
//  Copyright (c) 2019 Israel3D. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum Comment
{
  // MARK: Use cases
  
  enum Load
  {
    struct Request
    {
    }
    struct Response{
        let comment: [CommentModel]
    }
    struct ViewModel{
        let comment: [CommentModel]
    }
  }
}
