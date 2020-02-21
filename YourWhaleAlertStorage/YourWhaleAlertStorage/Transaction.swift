//
//  Transaction.swift
//  YourWhaleAlertStorage
//
//  Created by Anton Gaev on 21.02.2020.
//  Copyright © 2020 Anton Gaev. All rights reserved.
//

import Foundation

struct Transaction: Decodable {
    let count: Int
    let cursor: String
    let result: String
    let transactions: [theTransaction]
}

struct theTransaction: Decodable {
    let amount: Double
    let amount_usd: Int
    let blockchain: String
    let from: From
    let hash: String
    let id: String
    let symbol: String
    let timestamp: Int
    let to: From
    let transaction_count: Int
    let transaction_type: String
}

struct From: Decodable {
    let address: String
    let owner: String?
    let owner_type: String
}
