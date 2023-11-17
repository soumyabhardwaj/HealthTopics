//
//  healthTopic.swift
//  MaxAssignment
//
//  Created by soumya bhardwaj on 17/11/23.
//

import Foundation

struct HealthTopic: Identifiable, Decodable, Encodable {
    let Id: String
    let Title: String
    let `Type`: String

    var id: String { Id }
    var title: String { Title }
    var type: String { Type }
}

