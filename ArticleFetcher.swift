//
//  ArticleFetcher.swift
//  QuickNews WatchKit Extension
//
//  Created by admin on 8/19/21.
//  Copyright © 2021 admin. All rights reserved.
//

import Foundation
import SwiftUI
import Alamofire
import SwiftyJSON

public class ArticleFetcher: ObservableObject {
    @Published var articles: [Article] = []
    @Published var fetchError: Bool = false
    
    let myApiKey = "3aa736f255f042ea829f0c7d939008e0"
    
    func fetchArticles() {
        self.fetchError = false
        AF.request("http://newsapi.org/v2/top-headlines?country=us&apiKey=" + myApiKey).responseJSON {
            (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                
                let articles = json["articles"].array ?? []
                var articleArray: [Article] = []
                
                for item in articles {
                    let title = item["title"].string ?? "United Article"
                    let author = item["author"].string ?? "No author data"
                    let description = item["description"].string ?? "No description"
                    let link = item["url"].string ?? " "
                    let imageLink = item["imageLink"].string ?? " "
                    let publishedAt = item["publishedAt"].string ?? "No Data"
                    let content = item["content"].string ?? "No Content"
                    
                    let articleItem = Article(title: title, description: description, author: author, link: link, imageLink: imageLink, publishedAt: publishedAt, content: content)
                    
                    articleArray.append(articleItem)

                }
                self.articles = articleArray
                
            case .failure(let error):
                print(error)
                self.fetchError = true
            }
        }
    }
}
