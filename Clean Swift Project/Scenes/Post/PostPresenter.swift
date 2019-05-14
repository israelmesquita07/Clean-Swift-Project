//
//  PostPresenter.swift
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

protocol PostPresentationLogic {
    func presentPosts(response: Post.Load.Response)
}

class PostPresenter: PostPresentationLogic {
    weak var viewController: PostDisplayLogic?
    
    // MARK: Do something
    
    func presentPosts(response: Post.Load.Response) {
        let viewModel = Post.Load.ViewModel(posts: response.posts)
        viewController?.displayPosts(viewModel: viewModel)
    }
}
