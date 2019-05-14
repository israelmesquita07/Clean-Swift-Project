//
//  CommentInteractor.swift
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

protocol CommentBusinessLogic
{
  func doSomething(request: Comment.Load.Request)
}

protocol CommentDataStore{
  var postId: Int { get set }
}

class CommentInteractor: CommentBusinessLogic, CommentDataStore
{
  var presenter: CommentPresentationLogic?
  var worker: CommentWorker?
  var postId: Int = 0
  
  // MARK: Do something
  
  func doSomething(request: Comment.Load.Request)
  {
    worker = CommentWorker()
    worker?.doSomeWork()
    
//    let response = Comment.Load.Response(comment: <#[Comment]#>)
//    presenter?.presentSomething(response: response)
  }
}
