//
//  TopicResponse.swift
//  MaxAssignment
//
//  Created by soumya bhardwaj on 17/11/23.
//

import Foundation

struct TopicsResponse: Decodable {
    let Result: Result
}

struct Result: Decodable {
    let Items: Items
}

struct Items: Decodable {
    let Item: [HealthTopic]
}

