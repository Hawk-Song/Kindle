//
//  ViewController.swift
//  Kindle
//
//  Created by GetHired on 8/3/18.
//  Copyright © 2018 GetHired. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var books: [Book]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(BookCell.self, forCellReuseIdentifier: "cellId")
        navigationItem.title = "Kindle"
        tableView.tableFooterView = UIView()
        setupBooks()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedBook = self.books?[indexPath.row]
//        print(book?.title)
//        return
        let layout = UICollectionViewFlowLayout()
        let bookPageController = BookPageController(collectionViewLayout: layout)
        bookPageController.book = selectedBook
        let navController = UINavigationController(rootViewController: bookPageController)
        present(navController, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! BookCell
        let book = books?[indexPath.row]
        cell.book = book
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = books?.count {
            return count
        }
        return 0
    }
    
    func setupBooks() {
        let page1 = Page(number: 1, text: "Text for the first page")
        let page2 = Page(number: 2, text: "This is text for second page")
        
        let pages = [page1, page2]
        
        let book = Book(title: "Steve Jobs", author: "Walter Isaacson", image:#imageLiteral(resourceName: "steve_jobs"), pages: pages)
        
        
        let book2 = Book(title: "Bill Gates: A Biography", author: "Michael Becraft", image:#imageLiteral(resourceName: "bill_gates"), pages: [
            Page(number: 1, text: "Text for page 1"),
            Page(number: 2, text: "Text for page 2"),
            Page(number: 3, text: "Text for page 3"),
            Page(number: 4, text: "Text for page 4")
            ])
        
        self.books = [book, book2]
        guard let books = self.books else {return}
        for book in books {
            print(book.title)
            for page in book.pages {
                print(page.text)
            }
        }
        
    }
    
}

