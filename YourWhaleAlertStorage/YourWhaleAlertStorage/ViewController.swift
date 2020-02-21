//
//  ViewController.swift
//  YourWhaleAlertStorage
//
//  Created by Anton Gaev on 21.02.2020.
//  Copyright © 2020 Anton Gaev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClick(_ sender: Any) {
        guard let url = URL(string: "https://api.whale-alert.io/v1/transactions?api_key="+APIKey.apikey+"&min_value=500000&start=1550237797&cursor=2bc7e46-2bc7e46-5c66c0a7") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                    let transaction = try JSONDecoder().decode(Transaction.self, from: data)
                    print(transaction)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
