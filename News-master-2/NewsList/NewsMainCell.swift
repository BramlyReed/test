//
//  NewsMainCell.swift
//  News
//
//  Created by Stanislav on 02.12.2019.
//  Copyright © 2019 user160567. All rights reserved.
//

import UIKit

class NewsMainCell: UITableViewCell {
    
    
    @IBOutlet weak var mainLabelTitle: UILabel!
    
    @IBOutlet weak var mainLabelText: UILabel!
    
    @IBOutlet weak var mainLabelDate: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(with newsApi: News) {
        mainLabelTitle.text = newsApi.title
        mainLabelText.text = newsApi.text
        mainLabelDate.text = newsApi.date.string
    }
    
    
    
    
    
    
    
    
}
