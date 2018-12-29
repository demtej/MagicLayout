
##  📲  How to Install

#### Using [CocoaPods]([https://cocoapods.org](https://cocoapods.org/))

Edit your `Podfile` and specify the dependency:


```ruby
pod 'MagicLayout', '~> 0.1.0'
```


##  🌟  Features

- [x] Easy to install
- [x] Easy to use
- [x] Intuitive usage
- [x] Constraints by code in few minute
- [x]  Less code!  🙌



##  🐒 How to use





### 1 - Import into your project

```swift
import MagicLayout
```



### 2 - Extends your ViewController from MagicViewController

```swift
class ViewController: MagicViewController
```

This is optional, you could call ```swift view.applyMagicConstrains() ``` in your view controller instead

### 3 - Set constaints to your views

```swift
override func viewDidLoad() {
	super.viewDidLoad()
	view.backgroundColor = .favouriteColor
	let myView = UIView()
	myView.pin()
	myView.backgroundColor = .secondFavColor
	view.setPadding(padding: 40)
	view.addSubview(myView)
}
```

## and... voilà!



![Screenshot iOS](https://i.imgur.com/4SwxgK9.png))

In few lines you could add a centered custom view in a superview with padding! 😱


##  💪  Let's the example code talks...


```swift
	let myView = UIView()
	myView.pinLeft()
	myView.pinTop()
	myView.setWidth(width: 200)
	myView.setHeight(height: 50)
```
![](https://i.imgur.com/ZIYa8H3.png)

**A fixed size view pinned to top left corner... Not bad at all, right?** 🤠

```swift
	topView.matchWidth()
	topView.pinTop()
	topView.matchHeight(withPercentage: 50)
	bottomView.matchWidth()
	bottomView.pinBottom()
	bottomView.matchHeight(withPercentage: 50)
```
![](https://i.imgur.com/YW6CTzh.png)

**Easy peasy** 😎

**🧙‍♂️One more challenge to show you the POWER of Magic Layout! 💥**

```swift
	innerView.pin()
	topView.matchWidth()
	topView.pinTop()
	topView.setPaddings(left: 10, right: 10, top: 30, bottom: 30)
	topView.matchHeight(withPercentage: 50)
	bottomView.matchWidth()
	bottomView.pinBottom()
	bottomView.matchHeight(withPercentage: 50)
	view.addSubview(topView)
	view.addSubview(bottomView)
	topView.addSubview(innerView)
```
![](https://i.imgur.com/bEx5PCv.png)

💃 **It's magic!**

### 📋  Supported OS & SDK Versions

* iOS 9.0+

* Swift 4

* xCode 9.2+

* @Objc full compatibility



###  🔮 Project Example

This project include an example project using Magic Layout.



###  📚 Documentation & DevSite

[Magic Layout Documentation](https://demtej.github.io/MagicLayout/)


## ❤ Feedback


This is an open source project, so feel free to contribute. How?

- Fork this project and propose your own fixes, suggestions and open a pull request with the changes.





##  👨🏻‍💻 Author

[Demian Tejo](https://demtej.github.io/resume/)
