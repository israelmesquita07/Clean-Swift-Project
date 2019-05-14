//
//  CommentPresenter.swift
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

protocol CommentPresentationLogic
{
  func presentSomething(response: Comment.Load.Response)
}

class CommentPresenter: CommentPresentationLogic
{
  weak var viewController: CommentDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Comment.Load.Response)
  {
    let viewModel = Comment.Load.ViewModel(comment: response.comment)
    viewController?.displaySomething(viewModel: viewModel)
  }
}
