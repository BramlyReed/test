//
//  NewsMainList.swift
//  News
//
//  Created by Stanislav on 02.12.2019.
//  Copyright © 2019 user160567. All rights reserved.
//

import UIKit

class NewsMainList: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var news = [News]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        let title = "При стрельбе в Новом Орлеане пострадали 11 человек"
        //        let text = "В результате стрельбы в американском городе Новый Орлеан в штате Луизиана пострадали 11 человек, двое из них находятся в критическом состоянии. Об этом сообщает NBC со ссылкой на полицию. В полиции сообщили, что пока никто не задержан, мотивы стрельбы устанавливаются."
        //        API.createNews(title: title, text: text) {
        //            result in guard result else { return }
        //        }
        API.loadNews { notesArray in
            self.news = notesArray
        }
    }
    
    
}

extension NewsMainList: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! NewsMainCell
        cell.setup(with: news[indexPath.row])
        return cell
    }
    
}
