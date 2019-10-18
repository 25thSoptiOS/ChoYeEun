# 25th_SOPT_iOS_Seminar

## 1st_assignment
### Make a instagram view
1. AutoLayout
2. Like button Action 

<img width="200" alt="스크린샷 2019-10-01 오후 12 12 47" src="https://user-images.githubusercontent.com/31615715/65931582-40a5e100-e445-11e9-9878-c351e6d73373.png"><img width="200" alt="스크린샷 2019-10-01 오후 12 18 01" src="https://user-images.githubusercontent.com/31615715/65931647-8e224e00-e445-11e9-911d-3b8a72976b27.png">

## 2nd_seminar_handsOn
### Login View
1. stack view
2. Move stack view position by keyboard position

<img width=200 src="https://user-images.githubusercontent.com/31615715/66793448-597bbf80-ef38-11e9-9029-dc1074d2b3a7.gif">

## 2nd_assignment
### Calculator App
1. stack view
2. Autolayout
3. Add UIClass

<img width="200" alt="스크린샷 2019-10-18 오후 2 15 59" src="https://user-images.githubusercontent.com/31615715/67067674-2a708280-f1b2-11e9-8a5f-34beb837f009.png">

```swift
@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
        self.layer.cornerRadius = cornerRadius
        }
    }
}
```
