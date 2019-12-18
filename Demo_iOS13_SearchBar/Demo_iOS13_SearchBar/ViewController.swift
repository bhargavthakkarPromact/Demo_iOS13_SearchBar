//
//  ViewController.swift
//  Demo_iOS13_SearchBar
//
//  Created by Bhargav Thakkar on 18/12/19.
//  Copyright © 2019 Bhargav Thakkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let search = UISearchController(searchResultsController: nil)
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Type something here..."
        search.searchBar.scopeButtonTitles = ["Title", "Genre", "Rating", "Actor"]
        navigationItem.searchController = search
        //Adding token to the search bar using Search Token Class
        let iosToken = UISearchToken(icon: UIImage(systemName: "tag"), text: "iOS")
        let shopToken = UISearchToken(icon: UIImage(systemName: "cart.fill"), text: "Shop")
        search.searchBar.searchTextField.insertToken(iosToken, at: 0)
        search.searchBar.searchTextField.insertToken(shopToken, at: 1)
        search.searchBar.searchTextField.tokenBackgroundColor = .systemBlue
        //disable the copying and deletion of search
        search.searchBar.searchTextField.allowsCopyingTokens = false
        search.searchBar.searchTextField.allowsDeletingTokens = false
        search.searchBar.searchTextField.clearButtonMode = .never
    }
    
    
}

