//
//  ViewController.swift
//  DZ_12
//
//  Created by Nikita Shipovskiy on 08/05/2024.
//

import UIKit

final class ViewController: UIViewController {
    
    
    private lazy var scrollView: UIScrollView = {
        $0.addSubview(scrollViewContent)
        return $0
    }(UIScrollView(frame: view.frame))
    
    private lazy var scrollViewContent: UIView = {
        .config(view: $0) { view in
            view.addSubview(self.contentView)
        }
    }(UIView())
    
    private lazy var contentView: UIView = {
        .config(view: $0) { cont in
            cont.backgroundColor = .lightGray
        }
    }(UIView())
    
    
    
    
    private lazy var logoImage: UIImageView = {
        $0.image = .logo
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIImageView(frame: CGRect(x: 0, y: 0, width: 42, height: 73)))
    

    private lazy var buttonCollections = MakeButton.makeAllTopButton(w: 15, h: 10, action: action, title: "Collections", background: .clear, font: UIFont.systemFont(ofSize: 8, weight: .bold))
    private lazy var buttonArtwork = MakeButton.makeAllTopButton(w: 15, h: 10, action: action, title: "Artwork", background: .clear, font: UIFont.systemFont(ofSize: 8, weight: .bold))
    private lazy var buttonAbout = MakeButton.makeAllTopButton(w: 15, h: 10, action: action, title: "About", background: .clear, font: UIFont.systemFont(ofSize: 8, weight: .bold))
    private lazy var buttonArtist = MakeButton.makeAllTopButton(w: 15, h: 10, action: action, title: "Artist", background: .clear, font: UIFont.systemFont(ofSize: 8, weight: .bold))
    private lazy var buttonLogin = MakeButton.makeAllTopButton(x: 315, y: 78, w: 50, h: 20, action: action, title: "Login", background: .orange, font: UIFont.systemFont(ofSize: 8, weight: .bold))
    
    
    lazy var action = UIAction { [weak self] _ in
        print("dasdasdsa")
    }
    
    
    
    private lazy var stackTopElemens: UIStackView = {
        .config(view: $0) { stack in
            stack.axis = .horizontal
            stack.alignment = .leading
            stack.distribution = .fillEqually
            [self.buttonCollections, self.buttonArtwork, self.buttonAbout, self.buttonArtist, self.buttonLogin].forEach{
                stack.addArrangedSubview($0)
            }
            
        }
    }(UIStackView())
    
    
    
    private lazy var backgroundView: UIView = {
        .config(view: $0) { view in
            view.backgroundColor = .black
            view.layer.cornerRadius = 10
            view.heightAnchor.constraint(equalToConstant: 627).isActive = true
            view.widthAnchor.constraint(equalToConstant: 381).isActive = true
        }
    }(UIView())
    
    private lazy var iconImage: UIImageView = {
        
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        $0.image = .icon
        return $0
    }(UIImageView(frame: CGRect(x: 0, y: 0, width: 44, height: 46)))
    
    private lazy var nameLabel: UILabel = {
        $0.text = "BESSIE COOPER"
        $0.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        $0.textAlignment = .center
        $0.textColor = .white
        return $0
    }(UILabel(frame: CGRect(x: 0, y: 0, width: 203, height: 31)))
    
    private lazy var stackNameUser: UIStackView = {
        .config(view: $0) { stack in
            stack.axis = .horizontal
            stack.distribution = .equalCentering
            stack.alignment = .leading
            stack.addArrangedSubview(self.iconImage)
            stack.addArrangedSubview(self.nameLabel)
            stack.addArrangedSubview(UIView())
        }
    }(UIStackView())
    
    
    private lazy var imageNFT: UIImageView = {
        .config(view: $0) { img in
            img.image = .nft
            img.layer.cornerRadius = 10
            img.clipsToBounds = true
            img.contentMode = .scaleAspectFill
        }
    }(UIImageView())
    
    
    private lazy var kapeBestLabel: UILabel = {
        .config(view: $0) { label in
            label.text = "KAPE BEST"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
            label.textAlignment = .left
            label.heightAnchor.constraint(equalToConstant: 31).isActive = true
        }
    }(UILabel())
    
    
    
    private lazy var auctionButton = MakeButton.makeAllTopButton(x: 200, y: 520, w: 139, h: 47, action: actionAuciton, title: "Auction", background: .orange, radius: 25, font: UIFont.systemFont(ofSize: 25, weight: .bold))
    
    lazy var actionAuciton = UIAction { [weak self] _ in
        print("dasfasfas")
    }
    
    private lazy var imgETH: UIImageView = {
        .config(view: $0) { eth in
            eth.image = .eth
            eth.contentMode = .scaleAspectFill
            eth.clipsToBounds = true
            eth.heightAnchor.constraint(equalToConstant: 43).isActive = true
            eth.widthAnchor.constraint(equalToConstant: 31).isActive = true
        }
    }(UIImageView())
    
    private lazy var priceLabel: UILabel = {
        .config(view: $0) { label in
            label.text = "7.02 ETH"
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 15, weight: .bold)
            label.textAlignment = .left
        }
    }(UILabel())
    
    private lazy var nextLabel: UILabel = {
        .config(view: $0) { next in
            next.text = "NEXT"
            next.font = UIFont.systemFont(ofSize: 25, weight: .bold)
            next.textColor = .gray
        }
    }(UILabel())
    
    private lazy var timeLabel: UILabel = {
        .config(view: $0) { time in
            time.font = UIFont.systemFont(ofSize: 35, weight: .bold)
            time.textColor = .orange
            time.text = "10:00:10"
        }
    }(UILabel())

    
    
    
    
    private lazy var bananImg: UIImageView = {
        .config(view: $0) { banan in
            banan.image = .banan
            banan.contentMode = .scaleAspectFill
            banan.clipsToBounds = true
        }
    }(UIImageView())
    
    private lazy var geminiImg: UIImageView = {
        .config(view: $0) { banan in
            banan.image = .gemini
            banan.contentMode = .scaleAspectFill
            banan.clipsToBounds = true
        }
    }(UIImageView())
    
    
    private lazy var switchUI: UISwitch = {
       // $0.isOn = false
        $0.isUserInteractionEnabled = true
        $0.setOn(true, animated: true)
        
        return $0
    }(UISwitch(frame: CGRect(x: 300, y: 65, width: 0, height: 0)))//, primaryAction: changeBackground))

    private lazy var discriptionLabel: UILabel = {
        .config(view: $0) { label in
            label.text = "ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos ldnalfnsa fpoasjpofjs afjsapj fsa foapshfoaishfoasifh sifho sihfioshaoifhasoi fisaho fiaoshf asoifhasoihfoaishfoi asoih oifhsoihf saofhsoiahfoiashfho hasoifasfahsoifhasoihf osahf soihf oishoifhaso ifhasoihfoiashfoiashofias foiash of ihsaoifhoih oish osh fosih osi hos hfos"
            label.textColor = .black
            label.numberOfLines = 0
            label.textAlignment = .left
            label.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        }
    }(UILabel())
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        view.backgroundColor = .lightGray
        [stackTopElemens, backgroundView, stackNameUser, imageNFT, kapeBestLabel, discriptionLabel, auctionButton, logoImage, imgETH, priceLabel, timeLabel, nextLabel, bananImg, geminiImg,].forEach{
            contentView.addSubview($0)
        }

     constraint()
        }
    
    private func constraint() {
        NSLayoutConstraint.activate([
            
            scrollViewContent.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollViewContent.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollViewContent.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            scrollViewContent.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: scrollViewContent.topAnchor, constant: 30),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            contentView.heightAnchor.constraint(equalToConstant: 2000),
            
            contentView.bottomAnchor.constraint(equalTo: scrollViewContent.bottomAnchor, constant: -100),
            
            
            stackTopElemens.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 23),
            stackTopElemens.leadingAnchor.constraint(equalTo: logoImage.trailingAnchor, constant: 15),
            stackTopElemens.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
           
            
            backgroundView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            backgroundView.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 30),
            
            stackNameUser.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 10),
            stackNameUser.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            stackNameUser.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor),
            stackNameUser.bottomAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 60),
            
            imageNFT.topAnchor.constraint(equalTo: stackNameUser.bottomAnchor, constant: 7),
            imageNFT.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            imageNFT.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor),
            imageNFT.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: -250),
    
            kapeBestLabel.topAnchor.constraint(equalTo: imageNFT.bottomAnchor, constant: 48),
            kapeBestLabel.leadingAnchor.constraint(equalTo: imageNFT.leadingAnchor, constant: 15),
            kapeBestLabel.trailingAnchor.constraint(equalTo: imageNFT.trailingAnchor,constant: -100),
            
            imgETH.topAnchor.constraint(equalTo: kapeBestLabel.bottomAnchor, constant: 45),
            imgETH.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 13),
            
            
            nextLabel.topAnchor.constraint(equalTo: kapeBestLabel.bottomAnchor, constant: 32),
            nextLabel.leadingAnchor.constraint(equalTo: imgETH.trailingAnchor, constant: 3),
            
            
            priceLabel.topAnchor.constraint(equalTo: imgETH.topAnchor, constant: 25),
            priceLabel.leadingAnchor.constraint(equalTo: imgETH.trailingAnchor, constant: 9),
            

            
            timeLabel.leadingAnchor.constraint(equalTo: nextLabel.trailingAnchor, constant: 80),
            timeLabel.topAnchor.constraint(equalTo: nextLabel.topAnchor , constant: 10),
            
            bananImg.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20),
            bananImg.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 10),
            
            geminiImg.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 20),
            geminiImg.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -10),
            
            discriptionLabel.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor),
            discriptionLabel.topAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 15),
            discriptionLabel.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor),
            
            
            
            

        ])
    }
    


}



