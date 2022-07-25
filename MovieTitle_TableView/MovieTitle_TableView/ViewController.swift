//
//  ViewController.swift
//  MovieTitle_TableView
//
//  Created by 예쓰엉 on 2022/07/25.
//

import UIKit

let movies = ["Inception","The Revenant","Titanic","Catch Me If You Can","Shutter Island","The Great Gatsby"]

class CustomCell : UITableViewCell {
    @IBOutlet var title1: UILabel!
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomCell else {
            return UITableViewCell()
        }
        cell.title1.text = movies[indexPath.row]
    
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    

}


