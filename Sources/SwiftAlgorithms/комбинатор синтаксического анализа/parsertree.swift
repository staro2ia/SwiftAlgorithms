//
//  parsertree.swift
//  SwiftAlgorithmsPackageDescription
//
//  Created by Павел Тимош on 08/10/2018.
//

import Foundation

class Tree {
    var root : Tree?
    var children = [Tree]()
    
    init() {
        root = nil
    }
    
    init(root: Tree) {
        self.root = root
    }
    
    init(root: Tree, children: [Tree] ) {
        self.root = root
        self.children = children
    }
    
    
}
