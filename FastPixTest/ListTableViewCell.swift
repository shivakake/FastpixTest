//
//  ListTableViewCell.swift
//  FastPixTest
//
//  Created by Kumaran on 10/08/23.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(model: ListModel?) {
        titleLabel.text = model?.title
        descriptionLabel.text = model?.description
    }
    
}
