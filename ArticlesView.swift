//
//  ArticlesView.swift
//  QuickNews WatchKit Extension
//
//  Created by admin on 8/19/21.
//  Copyright © 2021 admin. All rights reserved.
//

import SwiftUI

struct ArticlesView: View {
    @ObservedObject var articleManager = ArticleFetcher()
    var body: some View {
        VStack{
            if(self.articleManager.fetchError == true) {
                Text("There was an error while fetching your news")
                    .font(.caption)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                Button(action: {
                    self.articleManager.fetchArticles()
                }) {
                    Text("Try Again")
                }
            }else {
                Text("Articles")
                List(self.articleManager.articles) {
                    article in
                    NavigationLink(destination:
                    ArticleDetail(article: article)){
                        ArticleRow(article: article)
                    }
                }
            }

        }.onAppear{
            self.articleManager.fetchArticles()
        }
    }
}

struct ArticlesView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesView()
    }
}
