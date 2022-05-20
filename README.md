# Giftest

extraction from  https://github.com/kirualex/SwiftyGif

let gifManager = SwiftyGifManager(memoryLimit:100)
let images = [
    "https://media.giphy.com/media/5tkEiBCurffluctzB7/giphy.gif",
    "2.gif",
    "https://media.giphy.com/media/5xtDarmOIekHPQSZEpq/giphy.gif",
    "3.gif",
    "https://media.giphy.com/media/3oEjHM2xehrp0lv6bC/giphy.gif",
    "5.gif",
    "https://media.giphy.com/media/l1J9qg0MqSZcQTuGk/giphy.gif",
    "4.gif",
]

if let image = try? UIImage(imageName: images[indexPath.row]) {
    imageVIew.setImage(image, manager: gifManager, loopCount: -1)
} else if let url = URL.init(string: images[indexPath.row]) {
    let loader = UIActivityIndicatorView.init(style: .white)
    imageVIew.gifImageView.setGifFromURL(url, customLoader: loader)
} else {
    imageVIew.gifImageView.clear()
}
