//
//  ArticleDetail.swift
//  QuickNews WatchKit Extension
//
//  Created by admin on 8/19/21.
//  Copyright © 2021 admin. All rights reserved.
//

import SwiftUI

struct ArticleDetail: View {
    var article: Article
    var body: some View {
        ScrollView {
            VStack {
                Text(article.title)
                    .font(.headline)
                Text("By \(article.author)")
                    .fontWeight(.ultraLight)
                Divider()
                Text(article.description)
                    .font(.caption)
                Text(article.content)
                Text("Published At: \(article.publishedAt)")
                Text("Read the full story at: \(article.link)")
            }
        }
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
            ArticleRow(article: Article(
                title: "Just how mighty are active retail traders?",
                description: "They are a force to be reckoned with. But most punters are still pretty boring | Finance & economics",
                author: "The Economist",
                link: "https://www.economist.com/finance-and-economics/2021/08/21/just-how-mighty-are-active-retail-traders",
                imageLink: "https://www.economist.com/img/b/1280/720/90/sites/default/files/images/2021/08/articles/main/20210821_fnd001.jpg",
                publishedAt: "2021-08-19T09:51:03Z",
                content: "JUST TWO years ago the future of investing seemed to involve fewer and fewer people. Retail investors were piling into passive index funds, which track a broad basket of stocks for a tiny fee. Active… [+4536 chars]"))
        }
}
