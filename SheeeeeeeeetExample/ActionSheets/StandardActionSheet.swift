//
//  StandardActionSheet.swift
//  SheeeeeeeeetExample
//
//  Created by Jonas Ullström on 2018-03-16.
//  Copyright © 2018 Jonas Ullström. All rights reserved.
//

import Sheeeeeeeeet

class StandardActionSheet: ActionSheet {
    
    init(options: [FoodOption], action: @escaping ([ActionSheetItem]) -> ()) {
        var items = StandardActionSheet.items(for: options)
        
//        for item in items {
//            item.multiHeightSheetItem(size: CGSize.init(width: UIScreen.main.bounds.width - 30, height: CGFloat(MAXFLOAT)) )
//        }
        
//        items = StandardActionSheet.addiItems(items: items)
        
        super.init(items: items) { _, item in
            if item.value == nil { return }
            action([item])
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}

fileprivate extension StandardActionSheet {
    
    static func items(for options: [FoodOption]) -> [ActionSheetItem] {
        var items = options.map { $0.item() }
        items.insert(titleItem(title: standardTitle), at: 0)
        items.append(cancelButton)
        return items
    }
    
    static func addiItems(items:[ActionSheetItem]) -> [ActionSheetItem] {
        var addItems = items
        addItems.insert(titleItem(title: standardTitle), at: 0)
        addItems.append(cancelButton)
        return addItems
    }
}
