//
//  MarvelHerosDetails.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import UIKit

class MarvelHerosDetails: UIViewController {
    

    
    // MARK: Instance variables
    private var viewModel: MarvelHerosDetailsViewModelProtocol
    
    // MARK: Initializers

    init?(coder: NSCoder,
          viewModel: MarvelHerosDetailsViewModelProtocol) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("You must create this view controller.")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        
    }

}
