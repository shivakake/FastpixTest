//
//  ViewController.swift
//  FastPixTest
//
//  Created by Kumaran on 10/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    
    var listArray = [ListModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
        configureTable()
    }
    
    func getData() {
        listArray = [ListModel(title: "Shiva", description: "iOS Application Developer"),
                     ListModel(title: "Shiva", description: "iOS Application Developer iOS Application Developer iOS Application Developer"),
                     ListModel(title: "Shiva", description: "iOS Application Developer iOS Application Developer iOS Application Developer iOS Application Developer"),
                     ListModel(title: "iOS Application Developer iOS Application Developer", description: "iOS Application Developer"),
                     ListModel(title: "Shiva", description: "iOS Application Developer"),
                     ListModel(title: "iOS Application Developer iOS Application Developer", description: "iOS Application Developer")]
    }

    func configureTable() {
        listTableView.register(UINib(nibName: "ListTableViewCell", bundle: nil), forCellReuseIdentifier: "ListTableViewCell")
    }

}

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as? ListTableViewCell {
            cell.configureCell(model: listArray[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}

extension ViewController : UITableViewDelegate {
    
}

struct ListModel {
    var title: String
    var description: String
}
