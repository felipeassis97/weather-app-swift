//
//  ViewController.swift
//  Weather App
//
//  Created by Felipe Assis on 11/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Funciona como o late, é inicializado apenas na primeira vez que é chamada
    private lazy var backgroundView :  UIImageView = {
        let backgroundView = UIImageView(frame: .zero)
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        return backgroundView
    }()
    
    
    private lazy var headerView : UIView = {
        let headerView = UIView(frame: .zero)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .white
        headerView.layer.cornerRadius = 20
        return headerView
    }()
    
    private lazy var weatherIcon: UIImageView = {
        let weatherIcon = UIImageView(frame: .zero)
        weatherIcon.translatesAutoresizingMaskIntoConstraints = false
        weatherIcon.image = UIImage(named: "weatherIcon")
        weatherIcon.contentMode = .scaleAspectFit
        return weatherIcon
    }()
    
    private lazy var cityLabel: UILabel = {
        let cityLabel = UILabel(frame: .zero)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.font = UIFont.systemFont(ofSize: 20)
        cityLabel.text = "São Paulo"
        cityLabel.textAlignment = .center
        cityLabel.textColor = UIColor(named: "primaryColor")
        return cityLabel
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let temperatureLabel = UILabel(frame: .zero)
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        temperatureLabel.text = "25° C"
        temperatureLabel.textAlignment = .left
        temperatureLabel.textColor = UIColor(named: "primaryColor")
        return temperatureLabel
    }()


    //Similar ao init state do Flutter
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView(){
        setHierarchy()
        setupConstraint()
    }
    
    private func setHierarchy(){
        view.addSubview(backgroundView)
        view.addSubview(headerView)
        headerView.addSubview(cityLabel)
        headerView.addSubview(temperatureLabel)
        headerView.addSubview(weatherIcon)

    }
    
    private func setupConstraint(){
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant:  35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            cityLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20),
            temperatureLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 20),
        ])
        
        NSLayoutConstraint.activate([
            weatherIcon.heightAnchor.constraint(equalToConstant: 86),
            weatherIcon.widthAnchor.constraint(equalToConstant: 86),
            weatherIcon.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
            weatherIcon.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -20),
            weatherIcon.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: 14)
        ])
    }


}

