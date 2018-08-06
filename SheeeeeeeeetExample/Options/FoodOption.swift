//
//  FoodOption.swift
//  SheeeeeeeeetExample
//
//  Created by Daniel Saidi on 2017-11-27.
//  Copyright © 2017 Daniel Saidi. All rights reserved.
//

// This enum is only used to populate our example sheets.

import Sheeeeeeeeet

enum FoodOption: String {
    
    case
    fancy,
    fast,
    homeMade,
    light,
    none
    
    
    var displayName: String {
        switch self {
        case .fancy: return "hjlkljnkln;knkmkml;km;knkl;nklkkj n"
        case .fast: return "Something fast"
        case .homeMade: return "Something home-made"
        case .light: return "Something fancy，Something fancy，Something fancy，Something fancy，Something fancy"
        case .none: return "I don't eatSomething fancy，Something fancy，Something fancy，Something fancy，Something fancy，Something fancy，Something fancy，Something fancy，Something fancy，Something fancy"
        }
    }
    
    var image: UIImage? {
        return nil//UIImage(named: imageName)
    }
    
    var imageName: String {
//        switch self {
//        case .fancy: return "ic_cutlery"
//        case .fast: return "ic_pizza"
//        case .homeMade: return "ic_grocery"
//        case .light: return "ic_coffee"
//        case .none: return "ic_drink"
//        }
        return ""
    }
    
    var isCheap: Bool {
        switch self {
        case .fancy: return false
        default: return true
        }
    }
}
