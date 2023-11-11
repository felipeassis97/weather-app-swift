//
//  ViewController.swift
//  Weather App
//
//  Created by Felipe Assis on 11/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Funciona como o late, é inicializado apenas na primeira vez que é chamada
    private lazy var customView :  UIView = {
        var view = UIView(frame: .zero)
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()


    //Similar ao init state do Flutter
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    //Executa sempre que a viewController aparece
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    //Executa antes da viewController aparecer
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //Executa antes da viewController desaparecer
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    //Executa quando a view controller já desapareceu
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    
    private func setupView(){
    
        setHierarchy()
        setupConstraint()
    }
    
    private func setHierarchy(){
        view.addSubview(customView)
    }
    
    private func setupConstraint(){
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
        ])
    }


}

