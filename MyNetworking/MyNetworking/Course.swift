//
//  Course.swift
//  MyNetworking
//
//  Created by MacBook on 08/10/2019.
//  Copyright © 2019 MacBook. All rights reserved.
//

import Foundation

struct Course : Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    let numberOfLessons: Int?
    let numberOfTests: Int?
}
