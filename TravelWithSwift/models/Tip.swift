//
//  Tip.swift
//  TravelWithSwift
//
//  Created by Ishank Nijhawan on 29/08/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
