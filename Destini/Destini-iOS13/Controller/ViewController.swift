//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Antony Balaev on 08/08/2019.
//  Copyright © 2021 Antony Balaev. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

//    Переносим все кнопки и лейбл
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
//    Переносим сторибрейн
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        Обновляем экран когда приложение открывается
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
//        Это функция кнопки
        
//        При нажатии кнопки вызываем функцию некстСтори с импутом в виде тайтла нажатой кнопки
        storyBrain.nextStory(userChoice: sender.currentTitle!)
                
//        Обновляем экран после нажатия кнопки
        updateUI()
        
    }
    
    
//    Это функция обновления экрана
    func updateUI() {
        
//        Ставим в лейбл текст истории
        storyLabel.text = storyBrain.getStoryText()
        
//        Ставим в кнопки текст вариантов выбора
        let answerChoice1 = storyBrain.getChoice1()
        let answerChoice2 = storyBrain.getChoice2()
        choice1Button.setTitle(answerChoice1, for: .normal)
        choice2Button.setTitle(answerChoice2, for: .normal)
        
    }
    
}

