//
//  AllCatsViewController.swift
//  petDirectory
//
//  Created by apple on 02/07/2021.
//
import UIKit

class AllCatsViewController: UIViewController {
   
    var catModel = cat()
    
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        decodeJSON()
        tableview.dataSource = self
        tableview.delegate = self
        self.tableview.register(AllCatsTableViewCell.Nib(), forCellReuseIdentifier: AllCatsTableViewCell.identifier )
        self.tableview.register(UINib(nibName: "AllCatsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        
    }
    
    func decodeJSON() {
        let url = URL(string: "https://api.thecatapi.com/v1/breeds")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            guard let data = data, error == nil else {
                print("something wrong")
                return
            }
            var json: cat?
            do {
                json = try JSONDecoder().decode(cat.self, from: data)
            }
            catch {
                print("error:\(error)")
            }
            guard let result = json else {return}
            self.catModel.append(contentsOf: result)
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
            print(self.catModel)
            
        }.resume()
    }
}

extension AllCatsViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? AllCatsTableViewCell {
            cell.setUp(with: catModel[indexPath.row])
            let likeButton = cell.likeButton
            let currentRow = catModel[indexPath.row]
            cell.favouriteButton = {
                
            }
            return cell
        }
       return UITableViewCell()
    }
    

    
}
