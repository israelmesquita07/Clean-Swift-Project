//
//  CommentCell.swift
//  Clean Swift Project
//
//  Created by Israel3D on 14/05/2019.
//  Copyright © 2019 Israel3D. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    let lblTitle: UILabel
    let lblEmail: UILabel
    let lblDescription: UILabel
    static let reuseIdentifier = "CommentCell"
    
    private struct ViewTraits {
        static let margins: CGFloat = 16.0
        static let titleFontSize: CGFloat = 14.0
        static let emailFontSize: CGFloat = 12.0
        static let descriptionFontSize: CGFloat = 12.0
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        lblTitle = UILabel()
        lblEmail = UILabel()
        lblDescription = UILabel()
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupComponents()
        setupFonts()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupComponents(){
        
        lblTitle.numberOfLines = 0
        lblDescription.numberOfLines = 0
        lblEmail.textColor = .gray
        
        lblTitle.setContentHuggingPriority(UILayoutPriority(rawValue: 1000), for: .vertical) //Prioridade de layout
        lblEmail.setContentHuggingPriority(UILayoutPriority(rawValue: 999), for: .vertical)
        lblDescription.setContentHuggingPriority(UILayoutPriority(rawValue: 998), for: .vertical)
        
        contentView.addSubViewForAutoLayout(lblTitle)
        contentView.addSubViewForAutoLayout(lblEmail)
        contentView.addSubViewForAutoLayout(lblDescription)
    }
    
    func setupFonts(){
        
        lblTitle.font = UIFont.systemFont(ofSize: ViewTraits.titleFontSize, weight: .bold) //Tamanho e estilo de fonte
        lblEmail.font = UIFont.systemFont(ofSize: ViewTraits.emailFontSize, weight: .thin)
        lblDescription.font = UIFont.systemFont(ofSize: ViewTraits.descriptionFontSize, weight: .light)
    }
    
    func setupConstraints(){
        
        NSLayoutConstraint.activate([
            lblTitle.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: ViewTraits.margins),
            lblTitle.topAnchor.constraint(equalTo: contentView.topAnchor, constant: ViewTraits.margins),
            lblTitle.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -ViewTraits.margins)
            ])
        
        NSLayoutConstraint.activate([
            lblEmail.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: ViewTraits.margins),
            lblEmail.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: ViewTraits.margins),
            lblEmail.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -ViewTraits.margins)
            ])
        
        NSLayoutConstraint.activate([
            lblDescription.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: ViewTraits.margins),
            lblDescription.topAnchor.constraint(equalTo: lblEmail.bottomAnchor, constant: ViewTraits.margins),
            lblDescription.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -ViewTraits.margins),
            lblDescription.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -ViewTraits.margins)
            ])
    }

}
