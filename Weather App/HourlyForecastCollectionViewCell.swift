//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Felipe Assis on 11/11/23.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HourlyForecast"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private lazy var weatherItemHour : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "13:00"
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textColor = .contrastColor
        label.textAlignment = .center
        return label
    }()
    
    private lazy var weatherItemDegree : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "25°C"
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textColor = .contrastColor
        label.textAlignment = .center
        return label
    }()
    
    private lazy var weatherItemIcon : UIImageView = {
        let icon = UIImageView()
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.image = .weatherIcon
        icon.contentMode = .scaleAspectFit
        return icon
    }()
    
    private lazy var weatherItem : UIStackView = {
        let weatherItem = UIStackView(arrangedSubviews: [weatherItemHour, weatherItemIcon, weatherItemDegree])
        weatherItem.translatesAutoresizingMaskIntoConstraints = false
        weatherItem.axis = .vertical
        weatherItem.layer.cornerRadius = 20
        weatherItem.layer.borderWidth = 1
        weatherItem.layer.borderColor = UIColor.contrastColor?.cgColor
        
        weatherItem.isLayoutMarginsRelativeArrangement = true
        weatherItem.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8)
        
        return weatherItem
    }()
    
    private func setupView(){
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy(){
        contentView.addSubview(weatherItem)
    }
    
    private func setConstraints(){
       
        NSLayoutConstraint.activate([
            weatherItemIcon.heightAnchor.constraint(equalToConstant: 32),
            weatherItemIcon.widthAnchor.constraint(equalToConstant: 32),
        ])
        
        NSLayoutConstraint.activate([
            weatherItem.topAnchor.constraint(equalTo: contentView.topAnchor),
            weatherItem.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            weatherItem.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            weatherItem.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])

    }
}
