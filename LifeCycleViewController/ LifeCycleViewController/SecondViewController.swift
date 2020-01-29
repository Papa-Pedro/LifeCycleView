//
//  SecondViewController.swift
//  LifeCycleViewController
//
//  Created by TimFerens on 26.01.20.
//  Copyright © 2020 TimFerens. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    //MARK - создание view
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awakeFromNib подготовил Nib файл")
    }
    
    override func loadView() {
        print("LoadView создет view")
    }
    //MARK - обработка изменений view и создание view
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad view вызван")
    }
    //MARK - обработка изменений view
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear view готово, но пока не отобразилась")
    }
    //MARK - вызываются дважды + переворот
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviws готовит выставить размеры по экрану")
    }
    //MARK - вызываются дважды + переворот
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviwe выставил размеры по экрану")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear показал view на экран")
    }
    //MARK - переворот экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print("viewWillTransition перевернул экран")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisapper подготовил экран к исчезновению но его еще можно наблюдать")
    }
    //MARK - при закрытии текущего view
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisapper экран не виден пользователю")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("didReceiveMemoryWarning произошло переполнение памяти")
    }
    //при закрытии программы
    deinit {
        print("deinit уничтожил view")
    }
}
