//
//  ArticleRow.swift
//  QuickNews WatchKit Extension
//
//  Created by admin on 8/19/21.
//  Copyright © 2021 admin. All rights reserved.
//

import SwiftUI
import Kingfisher

struct ArticleRow: View {
    var article: Article
    
    var body: some View {
        HStack{
            KFImage(URL(string: article.imageLink))
                .placeholder{
                    Image(systemName: "arrow.2.circlepath.circle")
                        .font(.largeTitle)
                        .opacity(0.3)
                }
                .resizable()
                .scaledToFill()
                .cornerRadius(3.0)
                .frame(width: 50, height: 50)
            Text(article.title)
                .font(.caption)
                .fontWeight(.ultraLight)
            .lineLimit(2)
        }

    }
}

struct ArticleRow_Previews: PreviewProvider {
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
