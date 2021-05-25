//
//  NewPlaceTableViewController.swift
//  MyPlaces
//
//  Created by Daryna Polevyk on 25/05/2021.
//

import UIKit

class NewPlaceTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if (indexPath.row == 0) {
                    print("Selected Image")
            let actionSheet = UIAlertController(title: nil,
                                                message: nil,
                                                preferredStyle: .actionSheet)
            
            let camera = UIAlertAction(title: "Camera", style: .default) { _ in
                // TODO: Add method chooseImagePicker
            }
            
            let photo = UIAlertAction(title: "Photo", style: .default) { _ in
                // TODO: choseImagePicker
            }
            
            let cancel = UIAlertAction(title: "Cancel", style: .cancel)
            
            actionSheet.addAction(camera)
            actionSheet.addAction(photo)
            actionSheet.addAction(cancel)
            
            present(actionSheet, animated: true)
        } else {
            print("Selected row")
            view.endEditing(true)
        }
    }
    
    
}



// MARK:

extension NewPlaceTableViewController: UITextFieldDelegate {
    //Hide keyboard
    func  textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
