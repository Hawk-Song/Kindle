//
//  Models.swift
//  Kindle
//
//  Created by GetHired on 8/3/18.
//  Copyright © 2018 GetHired. All rights reserved.
//

import UIKit

class Book {
    let title: String
    let author: String
    let pages: [Page]
    let coverImageUrl: String
    
    
    init(dictionary: [String: Any]) {
        self.title = dictionary["title"] as? String ?? ""
        self.author = dictionary["author"] as? String ?? ""
        self.coverImageUrl = dictionary["coverImageUrl"] as? String ?? ""
        var bookPages = [Page]()
        if let pagesDictionaries = dictionary["pages"] as? [[String: Any]] {
            for pageDictionary in pagesDictionaries {
                if let pageText = pageDictionary["text"] as? String {
                    let page = Page(number: 1, text: pageText)
                    bookPages.append(page) //why not use page directly
                    
                }
            }
        }
        pages = bookPages
    }
}

class Page {
    let number: Int
    let text: String
    
    init(number: Int, text: String) {
        self.number = number
        self.text = text
    }
}
