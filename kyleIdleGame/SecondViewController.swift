//
//  SecondViewController.swift
//  kyleIdleGame
//
//  Created by Kyle Fisher on 4/20/21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var amountOfShareOne: UILabel!
    @IBOutlet weak var amountOfShareTwo: UILabel!
    @IBOutlet weak var amountOfShareThree: UILabel!
    @IBOutlet weak var amountOfShareFour: UILabel!
    @IBOutlet weak var costPerShareOne: UILabel!
    @IBOutlet weak var costPerShareTwo: UILabel!
    @IBOutlet weak var costPerShareThree: UILabel!
    @IBOutlet weak var costPerShareFour: UILabel!
    var stockPriceOne = 2.0
    var stockPriceTwo = 2.0
    var stockPriceThree = 2.0
    var stockPriceFour = 2.0
    var sharesOne = 0
    var sharesTwo = 0
    var sharesThree = 0
    var sharesFour = 0
    var money = 10.0
    var stockChangeOne:Timer?
    var stockChangeTwo:Timer?
    var stockChangeThree:Timer?
    var stockChangeFour:Timer?
    var test = 2.0
    override func viewDidLoad() {
        super.viewDidLoad()
          stockChangeOne = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(priceChangeOne), userInfo: nil, repeats: true)
        stockChangeTwo = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(priceChangeTwo), userInfo: nil, repeats: true)
        stockChangeThree = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(priceChangeThree), userInfo: nil, repeats: true)
        stockChangeFour = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(priceChangeFour), userInfo: nil, repeats: true)
        moneyLabel.text = String(money)
        costPerShareOne.text = String(stockPriceOne)
        costPerShareTwo.text = String(stockPriceTwo)
        costPerShareThree.text = String(stockPriceThree)
        costPerShareFour.text = String(stockPriceFour)
        amountOfShareOne.text = String(sharesOne)
        amountOfShareTwo.text = String(sharesTwo)
        amountOfShareThree.text = String(sharesThree)
        amountOfShareFour.text = String(sharesFour)
    }
    @IBAction func buyStockOne(_ sender: UIButton) {
        if money >= stockPriceOne{
            money -= stockPriceOne
            sharesOne += 1
            moneyLabel.text = String(money)
            amountOfShareOne.text = String(sharesOne)
        }
    }
    @IBAction func buyStockTwo(_ sender: UIButton) {
        if money >= stockPriceTwo{
            money -= stockPriceTwo
            sharesTwo += 1
            moneyLabel.text = String(money)
            amountOfShareTwo.text = String(sharesTwo)
        }
    }
    @IBAction func buyStockThree(_ sender: UIButton) {
        if money >= stockPriceThree{
            money -= stockPriceThree
            sharesThree += 1
            moneyLabel.text = String(money)
            amountOfShareThree.text = String(sharesThree)
        }
    }
    
    @IBAction func buyStockFour(_ sender: UIButton) {
        if money >= stockPriceFour{
            money -= stockPriceFour
            sharesFour += 1
            moneyLabel.text = String(money)
            amountOfShareFour.text = String(sharesFour)
        }
    }
    @IBAction func sellStockOne(_ sender: UIButton) {
        if sharesOne >= 1{
            money += stockPriceOne
            sharesOne -= 1
            moneyLabel.text = String(money)
            amountOfShareOne.text = String(sharesOne)
        }
    }
    @IBAction func sellStockTwo(_ sender: UIButton) {
        if sharesTwo >= 1{
            money += stockPriceTwo
            sharesTwo -= 1
            moneyLabel.text = String(money)
            amountOfShareTwo.text = String(sharesTwo)
        }
    }
    @IBAction func sellStockThree(_ sender: UIButton) {
        if sharesThree >= 1{
            money += stockPriceThree
            sharesThree -= 1
            moneyLabel.text = String(money)
            amountOfShareThree.text = String(sharesThree)
        }
    }
    @IBAction func sellStockFour(_ sender: UIButton) {
        if sharesFour >= 1{
            money += stockPriceFour
            sharesFour -= 1
            moneyLabel.text = String(money)
            amountOfShareFour.text = String(sharesFour)
        }
    }
    @objc func priceChangeOne(){
        let posOrNeg = Int.random(in: 1...2)
        if posOrNeg == 1{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceOneNew = Double(stockPercentage) * stockPriceOne
            stockPriceOneNew = round(stockPriceOneNew * 100) / 100.0
            stockPriceOne += stockPriceOneNew
            stockPriceOne = round(stockPriceOne * 100) / 100.0
            costPerShareOne.text = String(stockPriceOne)
        }else{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceOneNew = Double(stockPercentage) * stockPriceOne
            stockPriceOneNew = round(stockPriceOneNew * 100) / 100.0
            stockPriceOne -= stockPriceOneNew
            stockPriceOne = round(stockPriceOne * 100) / 100.0
            if stockPriceOne == 0{
                stockPriceOne += 1
            }
            costPerShareOne.text = String(stockPriceOne)
            
        }
    }
    @objc func priceChangeTwo(){
        let posOrNeg = Int.random(in: 1...2)
        if posOrNeg == 1{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceTwoNew = Double(stockPercentage) * stockPriceTwo
            stockPriceTwoNew = round(stockPriceTwoNew * 100) / 100.0
            stockPriceTwo += stockPriceTwoNew
            stockPriceTwo = round(stockPriceTwo * 100) / 100.0
            costPerShareTwo.text = String(stockPriceTwo)
        }else{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceTwoNew = Double(stockPercentage) * stockPriceTwo
            stockPriceTwoNew = round(stockPriceTwoNew * 100) / 100.0
            stockPriceTwo -= stockPriceTwoNew
            stockPriceTwo = round(stockPriceTwo * 100) / 100.0
            if stockPriceTwo == 0{
                stockPriceTwo += 1
            }
            costPerShareTwo.text = String(stockPriceTwo)
        }
    }
    @objc func priceChangeThree(){
        let posOrNeg = Int.random(in: 1...2)
        if posOrNeg == 1{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceThreeNew = Double(stockPercentage) * stockPriceThree
            stockPriceThreeNew = round(stockPriceThreeNew * 100) / 100.0
            stockPriceThree += stockPriceThreeNew
            stockPriceThree = round(stockPriceThree * 100) / 100.0
            costPerShareThree.text = String(stockPriceThree)
        }else{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceThreeNew = Double(stockPercentage) * stockPriceThree
            stockPriceThreeNew = round(stockPriceThreeNew * 100) / 100.0
            stockPriceThree -= stockPriceThreeNew
            stockPriceThree = round(stockPriceThree * 100) / 100.0
            if stockPriceThree == 0{
                stockPriceThree += 1
            }
            costPerShareThree.text = String(stockPriceThree)
        }
    }
    @objc func priceChangeFour(){
        let posOrNeg = Int.random(in: 1...2)
        if posOrNeg == 1{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceFourNew = Double(stockPercentage) * stockPriceFour
            stockPriceFourNew = round(stockPriceFourNew * 100) / 100.0
            stockPriceFour += stockPriceFourNew
            stockPriceFour = round(stockPriceFour * 100) / 100.0
            costPerShareFour.text = String(stockPriceFour)
        }else{
            let stockUp = Double.random(in: 1...100)
            let stockPercentage = stockUp/100.0
            var stockPriceFourNew = Double(stockPercentage) * stockPriceFour
            stockPriceFourNew = round(stockPriceFourNew * 100) / 100.0
            stockPriceFour -= stockPriceFourNew
            stockPriceFour = round(stockPriceFour * 100) / 100.0
            if stockPriceFour == 0{
                stockPriceFour += 1
            }
            costPerShareFour.text = String(stockPriceFour)
        }
    }
    
}
