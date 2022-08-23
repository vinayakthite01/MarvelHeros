//
//  MarvelHerosList.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import UIKit

final class MarvelHerosList: UIViewController {
    
    /// IBOutlets
    @IBOutlet private weak var marvelHerosTableView: UITableView!
    @IBOutlet weak var noDataLabel: UILabel!
    
    var marvelHerosCount: Int? = 0
    
    // MARK: Instance variables
    private var viewModel: MarvelHerosListViewModelProtocol
   
    
    // MARK: Initializers

    init?(coder: NSCoder,
          viewModel: MarvelHerosListViewModelProtocol) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("You must create this view controller.")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      
    
        viewModel.marvelHerosListResponder = updateUI(result: )
    }
    
   
    
    // Update UI after the response
    private func updateUI(result: MarvelHerosListUIUpdateCase) {
        switch result {
        case .success:
           
            self.marvelHerosTableView.reloadData()
        case .error(let error):
            let okHandler = { }
            showAlertView(title: "", message: error.localizedDescription, actions: [okHandler], titles: ["Ok"], actionStyle: .alert)
        }
    }
}

extension MarvelHerosList: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: MarvelHerosCell.cellIdentifier, for: indexPath) as? MarvelHerosCell {
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.redirectToMarvelHeroDetails(forIndex: indexPath.row)
    }
}
