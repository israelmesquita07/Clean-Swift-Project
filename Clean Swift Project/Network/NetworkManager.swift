//
//  NetworkManager.swift
//  Clean Swift Project
//
//  Created by Israel3D on 14/05/2019.
//  Copyright © 2019 Israel3D. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://jsonplaceholder.typicode.com" // API livre, não estamos usando Alamofire
    private init() {}
    
    func getPosts(completionHandler: @escaping ([PostModel]) -> Void ) {
        
        let url = URL(string: baseURL + "/posts")!
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let arrayPosts = [PostModel]()
            DispatchQueue.main.async {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodedPosts = try decoder.decode([PostModel].self, from: data)
                        completionHandler(decodedPosts)
                    } catch {
                        completionHandler(arrayPosts)
                    }
                }
            }
        }
        
        dataTask.resume()
    }
    
    func getCommentsForPost(withPostId postId:String, completionHandler: @escaping ([CommentModel]) -> Void ) {
        
        let url = URL(string: baseURL + "/posts/" + postId + "/comments")!
        
        let dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
            let arrayComments = [CommentModel]()
            DispatchQueue.main.async {
                if let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let decodedComments = try decoder.decode([CommentModel].self, from: data)
                        completionHandler(decodedComments)
                    } catch {
                        completionHandler(arrayComments)
                    }
                }
            }
        }
        
        dataTask.resume()
    }
}
