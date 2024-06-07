//
//  NewEmojiTableViewController.swift
//  EmojiReader2
//
//  Created by Egor Ukolov on 04.06.2024.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet var emojiTextField: UITextField!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var descriptionTextField: UITextField!
    @IBOutlet var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateSaveButtonState()
    }
    
    private func updateSaveButtonState() {
        let emojiText = emojiTextField.text ?? ""
        let nameText = nameTextField.text ?? ""
        let descriptionText = descriptionTextField.text ?? ""
        
        saveButton.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
        
    }
    
    @IBAction func textChanged(_ sender: UITextField) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiTextField.text ?? ""
        let name = nameTextField.text ?? ""
        let description = descriptionTextField.text ?? ""
        
        self.emoji = Emoji(emoji: emoji,
                           name: name,
                           description: description,
                           isFavourite: self.emoji.isFavourite)
        
        
    }
  
}
