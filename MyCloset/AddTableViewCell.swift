//
//  AddTableViewCell.swift
//  MyCloset
//
//  Created by 中村薫乃 on 2022/06/01.
//

import UIKit

class AddTableViewCell: UITableViewCell, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var imageView: UIImageView!
    

    //画像が選択された時に呼ばれる
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[.originalImage] as? UIImage {
            imageView.image = selectedImage //imageviewにカメラロールから選んだ画像を表示する
        }
        self.dismiss(animated: true) //画像をimageviewに表示したらアルバムを閉じる
    }
    
    //ボタンが押された時にアルバムが開く
    @IBAction func toAlbumButton(_ sender: Any) {
        
        let  picker = UIImagePickerController() //アルバムを開く処理を呼び出す
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true)
        self.present(picker, animated: true, completion: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    }
