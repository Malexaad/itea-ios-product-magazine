//
//  ViewController.swift
//  itea-ios-products-magazine
//
//  Created by Alex Marfutin on 4/22/19.
//  Copyright © 2019 G9. All rights reserved.
//

import UIKit
import Foundation

class ProductListViewController : UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var subcategoryNameLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!
   
    var productArray : [Product] = []
    
    let ikraGorbush = [Product(imageProduct: "ikra_gorbusha", nameProduct: "Икра Горбуши", descriptionProduct: "Икра Горбуши 1СОРТ", weightProduct: 1000, priceProduct: 550)]
    
    let ikraKety = [Product(imageProduct: "ikra_keta", nameProduct: "Икра Кеты", descriptionProduct: "Икра красная Кеты", weightProduct: 500, priceProduct: 1000)]
    
    let ikraLosos = [Product(imageProduct: "ikra_losos", nameProduct: "Икра Лосося", descriptionProduct: "Икра Лососевая Премиум", weightProduct: 1000, priceProduct: 1599)]
    
    
    let ikraOsetra = [Product(imageProduct: "ikra_osetra", nameProduct: "Икра Осетра", descriptionProduct: "Икра чёрная осетровая", weightProduct: 500, priceProduct: 6000)]
    
    let ikraBeluga = [Product(imageProduct: "ikra_beluga", nameProduct: "Икра Белуги", descriptionProduct: "Икра чёрная осетра", weightProduct: 250, priceProduct: 3900)]
    
    let ikraVeslonos = [Product(imageProduct: "ikra_veslonosa", nameProduct: "Икра Веслоноса", descriptionProduct: "Чёрная икра веслонос", weightProduct: 500, priceProduct: 500)]
    
    
    let losos = [Product(imageProduct: "losos_file", nameProduct: "Филе Лосося", descriptionProduct: "Лосось охлажденный", weightProduct: 1000, priceProduct: 510),Product(imageProduct: "losos_file(sol')", nameProduct: "Соленое Филе Лосося", descriptionProduct: "Лосось соленный", weightProduct: 1000, priceProduct: 505),Product(imageProduct: "losos_file(ukrop)", nameProduct: "Филе Лосося с Укропом", descriptionProduct: "Лосось с укропом", weightProduct: 1000, priceProduct: 520),Product(imageProduct: "losos_premium", nameProduct: "Лосось Премиум", descriptionProduct: "Лосось премиум", weightProduct: 1000, priceProduct: 700)]
    
    let semga = [Product(imageProduct: "Semga", nameProduct: "Семга", descriptionProduct: "Филе Семги охлажденное", weightProduct: 1000, priceProduct: 490)]
    
    let forel = [Product(imageProduct: "forel_balyk", nameProduct: "Форель Балык", descriptionProduct: "Форель Балык", weightProduct: 1000, priceProduct: 400),Product (imageProduct: "forel_karelskaya", nameProduct: "Форель Карельская", descriptionProduct: "Форель Карельская охлажденная", weightProduct: 1000, priceProduct: 270)]
    
    
    let milkGMO = [Product(imageProduct: "buryonka", nameProduct: "Бурьонка", descriptionProduct: "Молоко ультрапастеризованное 2,5%", weightProduct: 1000, priceProduct: 28),Product(imageProduct: "na_zdorovja", nameProduct: "На Здоров'я", descriptionProduct: "Молоко ультрапастеризованное 0,5%", weightProduct: 1000, priceProduct: 28),Product(imageProduct: "nizhinske(2.5)", nameProduct: "Ніженське", descriptionProduct: "Молоко ультрапастеризованное 2,5%", weightProduct: 1027, priceProduct: 27),Product(imageProduct: "nizhinske(3.2)", nameProduct: "Ніженське", descriptionProduct: "Молоко ультрапастеризованное 3,2%", weightProduct: 1027, priceProduct: 27),Product(imageProduct: "selyanske", nameProduct: "Селянське", descriptionProduct: "Молоко ультрапастеризованное 2,5%", weightProduct: 1500, priceProduct: 43)]
    
    let milkLaktoza = [Product(imageProduct: "jagotinskoye", nameProduct: "Яготинське", descriptionProduct: "Молоко Безлактозное 3.2%", weightProduct: 950, priceProduct: 38),Product(imageProduct: "na_zdorovja(0.5)", nameProduct: "На Здоров'я", descriptionProduct: "Молоко безлактозное 0.5%", weightProduct: 1000, priceProduct: 36),Product(imageProduct: "na_zdorovja(2.5)", nameProduct: "На Здоров'я", descriptionProduct: "Молоко безлактозное 2.5%", weightProduct: 1000, priceProduct: 39)]
    
    let milkOrganic = [Product(imageProduct: "buryonka(2.5)", nameProduct: "Бурьонка", descriptionProduct: "Молоко ультрапастеризованное 2.5%", weightProduct: 1000, priceProduct: 28),Product(imageProduct: "na_zdorovja_detskoe", nameProduct: "На Здоров'я", descriptionProduct: "Молоко Детское 3.2%", weightProduct: 500, priceProduct: 18),Product(imageProduct: "na_zdorovja", nameProduct: "На Здоров'я", descriptionProduct: "Молоко ультрапастеризованное 0,5%", weightProduct: 1000, priceProduct: 28),Product(imageProduct: "selyanske", nameProduct: "Селянське", descriptionProduct: "Молоко ультрапастеризованное 2.5%", weightProduct: 1500, priceProduct: 43),Product(imageProduct: "selyanske(3.2)", nameProduct: "Селянське", descriptionProduct: "Молоко ультрапастеризованное 3.2%", weightProduct: 1500, priceProduct: 45)]
    
    
    let sofCheese = [Product(imageProduct: "alpenhain", nameProduct: "Сыр Alpenhain", descriptionProduct: "Камамбер мягкий с плесенью", weightProduct: 175, priceProduct: 80),Product(imageProduct: "Bergader", nameProduct: "Сыр Bergader", descriptionProduct: "Бавария Блю мини", weightProduct: 175, priceProduct: 105),Product(imageProduct: "brimi", nameProduct: "Сыр Brimi", descriptionProduct: "Рикотта безлактозная", weightProduct: 200, priceProduct: 81),Product(imageProduct: "cantorel", nameProduct: "Сыр Cantorel", descriptionProduct: "Рокфор", weightProduct: 100, priceProduct: 133),Product(imageProduct: "halumi", nameProduct: "Сыр Халуми", descriptionProduct: "для жарки и гриля", weightProduct: 200, priceProduct: 56)]
    
    let hardCheese = [Product(imageProduct: "heidi_fondu", nameProduct: "Сыр Heidi", descriptionProduct: "Фондю Экспресс", weightProduct: 150, priceProduct: 115),Product(imageProduct: "heidi", nameProduct: "Сыр Heidi", descriptionProduct: "Грюйер AOP, 6 мес. выдер.", weightProduct: 170, priceProduct: 202),Product(imageProduct: "vega_mancha", nameProduct: "Сыр Vega Mancha", descriptionProduct: "Манчего DOP 2-3 мес.выдержки", weightProduct: 150, priceProduct: 140),Product(imageProduct: "vega_mancha(manchego)", nameProduct: "Сыр Vega Mancha", descriptionProduct: "Манчего DOP 12 мес.выдержки ", weightProduct: 150, priceProduct:151),Product(imageProduct: "zanetti", nameProduct: "Сыр Zanetti", descriptionProduct: "Грана Падано", weightProduct: 200, priceProduct: 173)]
    
    let creamCheese = [Product(imageProduct: "geitenkaas", nameProduct: "Сыр Bettine", descriptionProduct: "козий пастообразный", weightProduct: 125, priceProduct: 79),Product(imageProduct: "philadelphia(green)", nameProduct: "Сыр Philadelphia", descriptionProduct: "с зеленью", weightProduct: 175, priceProduct: 81),Product(imageProduct: "philadelphia(laktoza)", nameProduct: "Сыр Philadelphia", descriptionProduct: "безлактозная", weightProduct: 150, priceProduct: 76),Product(imageProduct: "philadelphia(original)", nameProduct: "Сыр Philadelphia", descriptionProduct: "Original", weightProduct: 175, priceProduct: 81),Product(imageProduct: "philadelphia(veg)", nameProduct: "Сыр Philadelphia", descriptionProduct: "с луком перцем и укропом", weightProduct: 175, priceProduct: 81)]
    
    
    let eskimo = [Product(imageProduct: "eskimos", nameProduct: "Мороженное Эскимос", descriptionProduct: "Эскимо", weightProduct: 80, priceProduct: 17),Product(imageProduct: "gerkules(cocoa)", nameProduct: "Мороженное Геркулес", descriptionProduct: "Эскимо с какао", weightProduct: 80, priceProduct: 20),Product(imageProduct: "gerkules(eskimo)", nameProduct: "Мороженное Геркулес", descriptionProduct: "Эскимо", weightProduct: 80, priceProduct: 19),Product(imageProduct: "plodovo", nameProduct: "Мороженное Плодовое", descriptionProduct: "Эскимо", weightProduct: 75, priceProduct: 15),Product(imageProduct: "rud(eskimo)", nameProduct: "Мороженное Рудь", descriptionProduct: "Эскимо", weightProduct: 80, priceProduct: 22)]
    
    let plombir = [Product(imageProduct: "gerkules(plombir)", nameProduct: "Мороженное Геркулес", descriptionProduct: "Пломбир", weightProduct: 70, priceProduct: 15),Product(imageProduct: "khreshatik(plombir)", nameProduct: "Мороженное Хрещатик", descriptionProduct: "Пломбир", weightProduct: 70, priceProduct: 16),Product(imageProduct: "plombir", nameProduct: "Мороженное Пломбир", descriptionProduct: "Пломбир", weightProduct: 70, priceProduct: 12),Product(imageProduct: "plombir(cacao)", nameProduct: "Мороженное Плоомбир", descriptionProduct: "Пломбир с какао", weightProduct: 70, priceProduct: 15),Product(imageProduct: "rud(plombir)", nameProduct: "Мороженное Рудь", descriptionProduct: "Пломбир", weightProduct: 70, priceProduct: 17)]
    
    let stakan = [Product(imageProduct: "eskimos(stakan)", nameProduct: "Мороженное Эскимос", descriptionProduct: "Пломбир в вафельном стакане", weightProduct: 60, priceProduct: 12),Product(imageProduct: "prolisok", nameProduct: "Мороженное Пролисок", descriptionProduct: "Пломбир в вафельном стакане", weightProduct: 60, priceProduct: 10),Product(imageProduct: "rud(stakan)", nameProduct: "Мороженное Рудь", descriptionProduct: "Пломбир в вафельном стакане", weightProduct: 60, priceProduct: 15),Product(imageProduct: "super_coco", nameProduct: "Мороженное Супер Шоколад", descriptionProduct: "Пломбир в вафельном стакане", weightProduct: 60, priceProduct: 14),Product(imageProduct: "three_bears", nameProduct: "Мороженное Три Медведя", descriptionProduct: "Пломбир в вафельном стакане", weightProduct: 60, priceProduct: 13)]
    
    
    let mandarin = [Product(imageProduct: "mandarin", nameProduct: "Мандарин", descriptionProduct: "Мандарин", weightProduct: 1000, priceProduct: 29)]
    
    let vinograd = [Product(imageProduct: "vinograd(bezkost)", nameProduct: "Виноград", descriptionProduct: "Без косточек", weightProduct: 1000, priceProduct: 60),Product(imageProduct: "vinograd(black)", nameProduct: "Виноград", descriptionProduct: "Виноград Черный", weightProduct: 1000, priceProduct: 62),Product(imageProduct: "vinograd(prime)", nameProduct: "Виноград", descriptionProduct: "Виноград Прайм", weightProduct: 1000, priceProduct: 70),Product(imageProduct: "vinograd(redglob)", nameProduct: "Виноград", descriptionProduct: "Виноград Красный", weightProduct: 1000, priceProduct: 67)]
    
    let apple = [Product(imageProduct: "apple", nameProduct: "Яблоко", descriptionProduct: "Яблоко", weightProduct: 1000, priceProduct: 7),Product(imageProduct: "apple(big)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Большое", weightProduct: 1000, priceProduct: 12),Product(imageProduct: "apple(golden)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Голден", weightProduct: 1000, priceProduct: 15),Product(imageProduct: "apple(mutsu)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Мутцу", weightProduct: 1000, priceProduct: 17),Product(imageProduct: "apple(prince)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Принц", weightProduct: 1000, priceProduct: 12)]
    
    
    let tomato = [Product(imageProduct: "tomat", nameProduct: "Томат", descriptionProduct: "Томат", weightProduct: 1000, priceProduct: 60),Product(imageProduct: "tomat(chery)", nameProduct: "Томат", descriptionProduct: "Томат Черри", weightProduct: 1000, priceProduct: 120),Product(imageProduct: "tomat(na vetke)", nameProduct: "Томат", descriptionProduct: "Томат на Ветке", weightProduct: 1000, priceProduct: 90),Product(imageProduct: "tomat(sliva)", nameProduct: "Томат", descriptionProduct: "Томат Слива", weightProduct: 1000, priceProduct: 78),Product(imageProduct: "tomat(yellow)", nameProduct: "Томат", descriptionProduct: "Томат Желтый", weightProduct: 1000, priceProduct: 85)]
    
    let potato = [Product(imageProduct: "potato", nameProduct: "Картофель", descriptionProduct: "Картофель", weightProduct: 1000, priceProduct: 8),Product(imageProduct: "potato(agroline)", nameProduct: "Картофель", descriptionProduct: "Картофель АгроЛайн", weightProduct: 1000, priceProduct: 12),Product(imageProduct: "potato(early)", nameProduct: "Картофель", descriptionProduct: "Картофель ранний", weightProduct: 1000, priceProduct: 10),Product(imageProduct: "potato(red)", nameProduct: "Картофель", descriptionProduct: "Картофель Красный", weightProduct: 1000, priceProduct: 12),Product(imageProduct: "potato(wash)", nameProduct: "Картофель", descriptionProduct: "Картофель Чищенный", weightProduct: 1000, priceProduct: 15)]
    
    let apple1 = [Product(imageProduct: "apple", nameProduct: "Яблоко", descriptionProduct: "Яблоко", weightProduct: 1000, priceProduct: 7),Product(imageProduct: "apple(big)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Большое", weightProduct: 1000, priceProduct: 12),Product(imageProduct: "apple(golden)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Голден", weightProduct: 1000, priceProduct: 15),Product(imageProduct: "apple(mutsu)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Мутцу", weightProduct: 1000, priceProduct: 18),Product(imageProduct: "apple(prince)", nameProduct: "Яблоко", descriptionProduct: "Яблоко Принц", weightProduct: 1000, priceProduct: 12)]
    
    
    let rukkola = [Product(imageProduct: "rukkola(80g)", nameProduct: "Руккола", descriptionProduct: "Руккола", weightProduct: 1000, priceProduct: 178)]
    
    let petrushka = [Product(imageProduct: "petrushka", nameProduct: "Петрушка", descriptionProduct: "Петрушка", weightProduct: 50, priceProduct: 10),Product(imageProduct: "petrushka(denikas)", nameProduct: "Петрушка", descriptionProduct: "Петрушка Деникас", weightProduct: 50, priceProduct: 12),Product(imageProduct: "petrushka(fresh)", nameProduct: "Петрушка", descriptionProduct: "Петрушка Свежий пучек", weightProduct: 50, priceProduct: 14)]
    
    let ukrop = [Product(imageProduct: "ukrop", nameProduct: "Укроп", descriptionProduct: "Укроп", weightProduct: 50, priceProduct: 8),Product(imageProduct: "ukrop(denikas)", nameProduct: "Укроп ", descriptionProduct: "Укроп Деникас", weightProduct: 50, priceProduct: 10),Product(imageProduct: "ukrop(fresh)", nameProduct: "Укроп", descriptionProduct: "Укроп Свежий", weightProduct: 50, priceProduct: 12)]
    
    
    let arahis = [Product(imageProduct: "felix_", nameProduct: "Арахис Felix", descriptionProduct: "Соленный", weightProduct: 300, priceProduct: 83),Product(imageProduct: "malatya_pazari", nameProduct: "Арахис в глазури Malatya Pazari", descriptionProduct: "со вкусом пряностей", weightProduct: 250, priceProduct: 80),Product(imageProduct: "misso", nameProduct: "Арахис Misso", descriptionProduct: "Жареный с морской солью", weightProduct: 75, priceProduct: 10),Product(imageProduct: "mogyi", nameProduct: "Арахис Mogyi", descriptionProduct: "жареный в тесте сальса-лайм", weightProduct: 60, priceProduct: 17),Product(imageProduct: "mr_nut", nameProduct: "Арахис Mister Nut", descriptionProduct: "Обжаренный Соленый", weightProduct: 500, priceProduct: 182)]
    
    let mindal = [Product(imageProduct: "mindal(misso)75", nameProduct: "Ядра миндаля Misso", descriptionProduct: "Жареные", weightProduct: 75, priceProduct: 42),Product(imageProduct: "mindal(misso)150", nameProduct: "Ядра миндаля Misso", descriptionProduct: "Жареные", weightProduct: 150, priceProduct: 83),Product(imageProduct: "mindal(seeberger)", nameProduct: "Миндаль Seeberger", descriptionProduct: "Экстра", weightProduct: 500, priceProduct: 521),Product(imageProduct: "mindal(winway)", nameProduct: "Миндаль Winway", descriptionProduct: "жареный", weightProduct: 100, priceProduct: 69),Product(imageProduct: "mogyi(solt)", nameProduct: "Миндаль Mogyi", descriptionProduct: "Соленный Жареный", weightProduct: 70, priceProduct: 69)]
    
    let phistashki = [Product(imageProduct: "fistashka(misso)45", nameProduct: "Фисташка Misso", descriptionProduct: "жареная соленая", weightProduct: 45, priceProduct: 28),Product(imageProduct: "fistashka(misso)75", nameProduct: "Фисташка Misso", descriptionProduct: "жареная соленая", weightProduct: 75, priceProduct: 47),Product(imageProduct: "fistashka(misso)150", nameProduct: "Фисташка Misso", descriptionProduct: "жареная соленая", weightProduct: 150, priceProduct: 92),Product(imageProduct: "fistashka(mr_nut)", nameProduct: "Фисташки Mister Nut", descriptionProduct: "Обжаренные соленые", weightProduct: 300, priceProduct: 369),Product(imageProduct: "fistashka(mogyi)", nameProduct: "Фисташки Mogyi", descriptionProduct: "соленые", weightProduct: 60, priceProduct: 57)]
    
    
    let bruschette = [Product(imageProduct: "bonta_lucane(rozm)", nameProduct: "Брускетта Bonta Lucane", descriptionProduct: "Розмарин", weightProduct: 120, priceProduct: 51),Product(imageProduct: "bonta_lucane(tomat)", nameProduct: "Брускетта Bonta Lucane", descriptionProduct: "Томат", weightProduct: 120, priceProduct: 51),Product(imageProduct: "bruschette(cheese)", nameProduct: "Брускетты Maretti", descriptionProduct: "Сыр", weightProduct: 70, priceProduct: 17),Product(imageProduct: "bruschette(crab)", nameProduct: "Брускетты Maretti", descriptionProduct: "Краб", weightProduct: 70, priceProduct: 17),Product(imageProduct: "bruschette(mush)", nameProduct: "Брускетты Maretti", descriptionProduct: "Грибы", weightProduct: 70, priceProduct: 17)]
    
    let suhari = [Product(imageProduct: "flint(crab)", nameProduct: "Упаковка сухариков Flint", descriptionProduct: "со вкусом краба", weightProduct: 70, priceProduct: 8),Product(imageProduct: "flint(holodec)", nameProduct: "Упаковка сухариков Flint", descriptionProduct: "со вкусом холодца", weightProduct: 70, priceProduct: 8),Product(imageProduct: "flint(smetana)", nameProduct: "Упаковка сухариков Flint", descriptionProduct: "со вкусом сметаны", weightProduct: 70, priceProduct: 8),Product(imageProduct: "khrusteam(kalmar)", nameProduct: "Упаковка сухариков ХрусTeam", descriptionProduct: "со вкусом кальмара", weightProduct: 110, priceProduct: 9),Product(imageProduct: "khrusteam(kolbaski)", nameProduct: "Упаковка сухариков ХрусTeam", descriptionProduct: "со вкусом колбасок", weightProduct: 110, priceProduct: 9)]
    
    let baget = [Product(imageProduct: "khrusteam(buzhenina)60", nameProduct: "Упаковка сухариков ХрусTeam Багет", descriptionProduct: "со вкусом буженины", weightProduct: 60, priceProduct: 6),Product(imageProduct: "khrusteam(buzhenina)100", nameProduct: "Упаковка сухариков ХрусTeam Багет", descriptionProduct: "со вкусом буженины", weightProduct: 100, priceProduct: 10),Product(imageProduct: "khrusteam(crab)60", nameProduct: "Упаковка сухариков ХрусTeam Багет", descriptionProduct: "со вкусом краба", weightProduct: 60, priceProduct: 6),Product(imageProduct: "khrusteam(crab)100", nameProduct: "Упаковка сухариков ХрусTeam Багет", descriptionProduct: "со вкусом краба", weightProduct: 100, priceProduct: 10),Product(imageProduct: "khrusteam(tomato)60", nameProduct: "Упаковка сухариков ХрусTeam Багет", descriptionProduct: "со вкусом томата", weightProduct: 60, priceProduct: 6)]
    
    let chipsKuk = [Product(imageProduct: "chio(nacho)", nameProduct: "Тортиллас Chio", descriptionProduct: "со вкусом сыра", weightProduct: 125, priceProduct: 50),Product(imageProduct: "chio(paprika)", nameProduct: "Тортиллас Chio", descriptionProduct: "со вкусом паприки", weightProduct: 125, priceProduct: 50),Product(imageProduct: "elsabor(chili)", nameProduct: "Чипсы начос El Sabor", descriptionProduct: "с вкусом чили", weightProduct: 100, priceProduct: 45),Product(imageProduct: "mclloyd(cheese)", nameProduct: "Упаковка снеков кукурузных McLloyd`s Love", descriptionProduct: "с сыром", weightProduct: 50, priceProduct: 45),Product(imageProduct: "mclloyd(solt)", nameProduct: "Упаковка снеков кукурузных McLloyd`s Love", descriptionProduct: "с морской солью", weightProduct: 50, priceProduct: 45)]
    
    let chipsPot = [Product(imageProduct: "lays(bekon)", nameProduct: "Упаковка Чипсов Lay's", descriptionProduct: "со вкусом бекона", weightProduct: 133, priceProduct: 26),Product(imageProduct: "lays(cheese)", nameProduct: "Упаковка Чипсов Lay's", descriptionProduct: "со вкусом сыра", weightProduct: 133, priceProduct: 26),Product(imageProduct: "lays(crab)", nameProduct: "Упаковка Чипсов Lay's", descriptionProduct: "со вкусом краба", weightProduct: 133, priceProduct: 26),Product(imageProduct: "lays(smetana)", nameProduct: "Упаковка Чипсов Lay's", descriptionProduct: "со вкусом сметаны", weightProduct: 133, priceProduct: 26),Product(imageProduct: "lays(strong)wasabi", nameProduct: "Упаковка Чипсов Lay's ", descriptionProduct: "со вкусом васаби", weightProduct: 133, priceProduct: 26)]
    
    let chipsFru = [Product(imageProduct: "crispy_natura(peach)", nameProduct: "Чипсы Crispy Natural", descriptionProduct: "Персик", weightProduct: 15, priceProduct: 67),Product(imageProduct: "crispy_natural(ananas)", nameProduct: "Чипсы Crispy Natural", descriptionProduct: "Ананас", weightProduct: 15, priceProduct: 77),Product(imageProduct: "crispy_natural(apple)", nameProduct: "Чипсы Crispy Natural", descriptionProduct: "Яблоко", weightProduct: 15, priceProduct: 43),Product(imageProduct: "crispy_natural(banana)", nameProduct: "Чипсы Crispy Natural", descriptionProduct: "Банан", weightProduct: 15, priceProduct: 67),Product(imageProduct: "crispy_natural(strawberry)", nameProduct: "Чипсы Crispy Natural", descriptionProduct: "Клубника", weightProduct: 10, priceProduct: 43)]
    
    let cidre = [Product(imageProduct: "riestra", nameProduct: "Сидр Riestra", descriptionProduct: "Sidra Natural 6.5%", weightProduct: 700, priceProduct: 111),Product(imageProduct: "royal(apple)", nameProduct: "Сидр Роял", descriptionProduct: "полусухой Яблочный 5-6.9%", weightProduct: 700, priceProduct: 46),Product(imageProduct: "sidr(zoloto)", nameProduct: "Сидр Золотоношский", descriptionProduct: "Яблочный 6%", weightProduct: 700, priceProduct: 24),Product(imageProduct: "somersby", nameProduct: "сидр Somersby", descriptionProduct: "Яблочный полусладкий 4.7%", weightProduct: 950, priceProduct: 38),Product(imageProduct: "trabanco", nameProduct: "Сидр Trabanco", descriptionProduct: "Sidra Natural Camin 6%", weightProduct: 700, priceProduct: 177)]
    
    let wine = [Product(imageProduct: "bodegas_antonio_arraez", nameProduct: "Вино Bodegas Antonio Arraez Bala Perdida", descriptionProduct: "красное сухое 13.5% ", weightProduct: 750, priceProduct: 169),Product(imageProduct: "hans_baer", nameProduct: "Вино Hans Baer Riesling Trock Vis", descriptionProduct: "белое сухое 11% ", weightProduct: 750, priceProduct: 199),Product(imageProduct: "maison_bouey", nameProduct: "Вино Maison Bouey Hommage A Roger Bouey", descriptionProduct: "красное сухое 13.5%", weightProduct: 750, priceProduct: 360),Product(imageProduct: "marlborough_sun", nameProduct: "Вино Marlborough Sun Sauvignon Blanc", descriptionProduct: "белое сухое 13%", weightProduct: 750, priceProduct: 249),Product(imageProduct: "pitters", nameProduct: "Вино Pitters Porto Tawny", descriptionProduct: "Красное сладкое 19,5%", weightProduct: 750, priceProduct: 277)]
    
    let beer = [Product(imageProduct: "corona", nameProduct: "Пиво Corona Extra", descriptionProduct: "светлое фильтрованное 4.2%", weightProduct: 355, priceProduct: 26),Product(imageProduct: "gambrinus", nameProduct: "пиво Gambrinus", descriptionProduct: "светлое фильтрованное 4.3%", weightProduct: 500, priceProduct: 25),Product(imageProduct: "hoegaarden", nameProduct: "пиво HoeGaarden White", descriptionProduct: "светлое нефильтрованное 4.7%", weightProduct: 330, priceProduct: 30),Product(imageProduct: "kronenburg", nameProduct: "пиво Kronenbourg 1664 Blanc", descriptionProduct: "4.8%", weightProduct: 330, priceProduct: 16),Product(imageProduct: "pilsner_urquell", nameProduct: "пиво Pilsner Urquell", descriptionProduct: "светлое фильтрованное 4.4%", weightProduct: 500, priceProduct: 37)]
    
    
    let waterBZ = [Product(imageProduct: "enjoy", nameProduct: "вода Enjoy", descriptionProduct: "не газированная вода", weightProduct: 500, priceProduct: 30),Product(imageProduct: "evian", nameProduct: "вода Evian", descriptionProduct: "не газированная вода", weightProduct: 330, priceProduct: 26),Product(imageProduct: "krajna(bg)", nameProduct: "вода Крайна", descriptionProduct: "негазированная вода", weightProduct: 500, priceProduct: 7),Product(imageProduct: "morshinska(bg)", nameProduct: "Моршинська", descriptionProduct: "сильно газированная вода", weightProduct: 1500, priceProduct: 12),Product(imageProduct: "vittel", nameProduct: "вода Vittel", descriptionProduct: "не газированная вода", weightProduct: 330, priceProduct: 20)]
    
    let waterSG = [Product(imageProduct: "donat_mg(sg)", nameProduct: "вода Donat Mg ", descriptionProduct: "слабо газированная вода", weightProduct: 1000, priceProduct: 48),Product(imageProduct: "jermuk(sg)", nameProduct: "вода Джермук", descriptionProduct: "слабо газированная вода", weightProduct: 500, priceProduct: 22),Product(imageProduct: "morshinska(sg)", nameProduct: "Моршинська", descriptionProduct: "слабогазированная вода", weightProduct: 1500, priceProduct: 12),Product(imageProduct: "narzan(sg)", nameProduct: "вода Нарзан", descriptionProduct: "слабо газированная вода", weightProduct: 1800, priceProduct: 37),Product(imageProduct: "polyana_kvasova(sg)", nameProduct: "вода Алекс Поляна Квасова №8 ", descriptionProduct: "слабо газированная вода", weightProduct: 1500, priceProduct: 13)]
    
    let waterVG = [Product(imageProduct: "bon_buasson(vg)", nameProduct: "вода Бон Буассон", descriptionProduct: "сильно газированная вода", weightProduct: 2000, priceProduct: 10),Product(imageProduct: "borjomi", nameProduct: "вода Borjomi", descriptionProduct: "сильно газированная вода", weightProduct: 500, priceProduct: 25),Product(imageProduct: "krajna(vg)", nameProduct: "вода Крайна", descriptionProduct: "сильно газированная вода", weightProduct: 1500, priceProduct: 10),Product(imageProduct: "mirgorodska(vg)", nameProduct: "вода Миргородская", descriptionProduct: "сильно газированная вода", weightProduct: 1500, priceProduct: 12),Product(imageProduct: "morshinska(vg)", nameProduct: "Моршинська", descriptionProduct: "сильно газированная вода", weightProduct: 1500, priceProduct: 12)]
    
    
    let juiceNS = [Product(imageProduct: "chumak", nameProduct: "сок Чумак", descriptionProduct: "томатный", weightProduct: 1800, priceProduct: 45),Product(imageProduct: "chumak(multi)", nameProduct: "сок Чумак", descriptionProduct: "мультисок", weightProduct: 950, priceProduct: 23),Product(imageProduct: "galicia(nosugar)", nameProduct: "сок Galicia", descriptionProduct: "яблочный", weightProduct: 200, priceProduct: 9),Product(imageProduct: "konik(nosugar)", nameProduct: "Сок Коник", descriptionProduct: "Яблочно-персиково-абрикосовый", weightProduct: 3000, priceProduct: 101),Product(imageProduct: "saville(nosugar)", nameProduct: "сок Saville", descriptionProduct: "Гранатовый 100% без сахара<#T##String#>", weightProduct: 1000, priceProduct: 89)]
    
    let juiceORG = [Product(imageProduct: "eos", nameProduct: "Органический сок EOS Bio", descriptionProduct: "Из квашенной капусты", weightProduct: 700, priceProduct: 135),Product(imageProduct: "eos(orange)", nameProduct: "Органический сок EOS Bio", descriptionProduct: "Апельсиновый", weightProduct: 700, priceProduct: 186),Product(imageProduct: "eos(veg)", nameProduct: "Органический сок EOS Bio", descriptionProduct: "Овощной", weightProduct: 700, priceProduct: 146),Product(imageProduct: "green_planet", nameProduct: "Сок Green Planet", descriptionProduct: "органический виноградный", weightProduct: 1000, priceProduct: 180),Product(imageProduct: "la_finestra", nameProduct: "сок La Finestra", descriptionProduct: "Яблоко-гранат-черника", weightProduct: 200, priceProduct: 60)]
    
    let juiceNAT = [Product(imageProduct: "chumak", nameProduct: "сок Чумак", descriptionProduct: "томатный", weightProduct: 1800, priceProduct: 45),Product(imageProduct: "chumak(apple)", nameProduct: "сок Чумак", descriptionProduct: "яблочный", weightProduct: 950, priceProduct: 23),Product(imageProduct: "chumak(multi)", nameProduct: "сок Чумак", descriptionProduct: "мультисок", weightProduct: 950, priceProduct: 23),Product(imageProduct: "chumak(tomatsalt)", nameProduct: "сок Чумак", descriptionProduct: "томатный соленый", weightProduct: 950, priceProduct: 23)]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        self.navigationController?.isNavigationBarHidden = true
        collectionView.register(UINib(nibName: "ProductListViewCell", bundle: nil), forCellWithReuseIdentifier: "ProductListViewCell")
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return ikraGorbush.count
        case 1:
            return ikraKety.count
        case 2:
            return ikraLosos.count
        case 3:
            return ikraOsetra.count
        case 4:
            return ikraBeluga .count
        case 5:
            return ikraVeslonos.count
        case 6:
            return losos.count
        case 7:
            return semga.count
        case 8:
            return forel.count
        case 9:
            return milkGMO.count
        case 10:
            return milkLaktoza.count
        case 11:
            return milkOrganic.count
        case 12:
            return sofCheese.count
        case 13:
            return hardCheese.count
        case 14:
            return creamCheese.count
        case 15:
            return eskimo.count
        case 16:
            return plombir.count
        case 17:
            return stakan.count
        case 18:
            return mandarin.count
        case 19:
            return vinograd.count
        case 20:
            return apple.count
        case 21:
            return tomato.count
        case 22:
            return potato.count
        case 23:
            return apple1 .count
        case 24:
            return rukkola.count
        case 25:
            return petrushka.count
        case 26:
            return ukrop.count
        case 27:
            return arahis.count
        case 28:
            return mindal.count
        case 29:
            return phistashki.count
        case 30:
            return bruschette.count
        case 31:
            return suhari.count
        case 32:
            return baget.count
        case 33:
            return chipsKuk.count
        case 34:
            return chipsPot.count
        case 35:
            return chipsFru.count
        case 36:
            return cidre.count
        case 37:
            return wine.count
        case 38:
            return beer.count
        case 39:
            return waterBZ .count
        case 40:
            return waterSG.count
        case 41:
            return waterVG.count
        case 42:
            return juiceNS.count
        case 43:
            return juiceORG.count
        case 44:
            return juiceNAT.count
        default:
            return section
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let product = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductListViewCell", for: indexPath) as! ProductListViewCell
        if indexPath.section == 0 {
                    product.update(product : ikraGorbush[indexPath.row])
                } else if indexPath.section == 1 {
                    product.update(product : ikraKety[indexPath.row])
                } else if indexPath.section == 2 {
                    product.update(product : ikraLosos[indexPath.row])
                } else if indexPath.section == 3 {
                    product.update(product : ikraOsetra[indexPath.row])
                } else if indexPath.section == 4 {
                    product.update(product : ikraBeluga[indexPath.row])
                } else if indexPath.section == 5 {
                    product.update(product : ikraVeslonos[indexPath.row])
                } else if indexPath.section == 6 {
                    product.update(product : losos[indexPath.row])
                } else if indexPath.section == 7 {
                    product.update(product : semga[indexPath.row])
                } else if indexPath.section == 8 {
                    product.update(product : forel[indexPath.row])
                } else if indexPath.section == 9 {
                    product.update(product : milkGMO[indexPath.row])
                } else if indexPath.section == 10 {
                    product.update(product : milkLaktoza[indexPath.row])
                } else if indexPath.section == 11{
                    product.update(product : milkOrganic[indexPath.row])
                } else if indexPath.section == 12 {
                    product.update(product : sofCheese[indexPath.row])
                } else if indexPath.section == 13 {
                    product.update(product : hardCheese[indexPath.row])
                } else if indexPath.section == 14 {
                    product.update(product : creamCheese[indexPath.row])
                } else if indexPath.section == 15 {
                    product.update(product : eskimo[indexPath.row])
                } else if indexPath.section == 16 {
                    product.update(product : plombir[indexPath.row])
                } else if indexPath.section == 17 {
                    product.update(product : stakan[indexPath.row])
                } else if indexPath.section == 18 {
                    product.update(product : mandarin[indexPath.row])
                } else if indexPath.section == 19 {
                    product.update(product : vinograd[indexPath.row])
                } else if indexPath.section == 20 {
                    product.update(product : apple[indexPath.row])
                } else if indexPath.section == 21 {
                    product.update(product : tomato[indexPath.row])
                } else if indexPath.section == 22 {
                    product.update(product : potato[indexPath.row])
                } else if indexPath.section == 23 {
                    product.update(product : apple1[indexPath.row])
                } else if indexPath.section == 24 {
                    product.update(product : rukkola[indexPath.row])
                } else if indexPath.section == 25 {
                    product.update(product : petrushka[indexPath.row])
                } else if indexPath.section == 26 {
                    product.update(product : ukrop[indexPath.row])
                } else if indexPath.section == 27 {
                    product.update(product : arahis[indexPath.row])
                } else if indexPath.section == 28 {
                    product.update(product : mindal[indexPath.row])
                } else if indexPath.section == 29 {
                    product.update(product : phistashki[indexPath.row])
                } else if indexPath.section == 30 {
                    product.update(product : bruschette[indexPath.row])
                } else if indexPath.section == 31 {
                    product.update(product : suhari[indexPath.row])
                } else if indexPath.section == 32 {
                    product.update(product : baget[indexPath.row])
                } else if indexPath.section == 33 {
                    product.update(product : chipsKuk[indexPath.row])
                } else if indexPath.section == 34 {
                    product.update(product : chipsPot[indexPath.row])
                } else if indexPath.section == 35 {
                    product.update(product : chipsFru[indexPath.row])
                } else if indexPath.section == 36 {
                    product.update(product : cidre[indexPath.row])
                } else if indexPath.section == 37 {
                    product.update(product : wine[indexPath.row])
                } else if indexPath.section == 38 {
                    product.update(product : beer[indexPath.row])
                } else if indexPath.section == 39 {
                    product.update(product : waterBZ[indexPath.row])
                } else if indexPath.section == 40 {
                    product.update(product : waterSG[indexPath.row])
                } else if indexPath.section == 41 {
                    product.update(product : waterVG[indexPath.row])
                } else if indexPath.section == 42 {
                    product.update(product : juiceNS[indexPath.row])
                } else if indexPath.section == 43 {
                    product.update(product : juiceORG[indexPath.row])
                } else if indexPath.section == 44 {
                    product.update(product : juiceNAT[indexPath.row])
        }
        return product

    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)

    //let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
    //let storyboard = UIStoryboard(name: "", bundle: nil)
        
    
       //vc.product = productArray[indexPath.row]

        //navigationController?.pushViewController(vc, animated: true)
  }
    @IBAction func didTapBackButton(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
    }

}
