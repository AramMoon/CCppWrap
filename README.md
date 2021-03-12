# CCppWrap

[![CI Status](https://img.shields.io/travis/28850809/CCppWrap.svg?style=flat)](https://travis-ci.org/28850809/CCppWrap)
[![Version](https://img.shields.io/cocoapods/v/CCppWrap.svg?style=flat)](https://cocoapods.org/pods/CCppWrap)
[![License](https://img.shields.io/cocoapods/l/CCppWrap.svg?style=flat)](https://cocoapods.org/pods/CCppWrap)
[![Platform](https://img.shields.io/cocoapods/p/CCppWrap.svg?style=flat)](https://cocoapods.org/pods/CCppWrap)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CCppWrap is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CCppWrap'
```

## Author

28850809, arammoon11@gmail.com

## License

CCppWrap is available under the MIT license. See the LICENSE file for more info.

## C, C++ 코드를 Swift에서 사용하는 방법
1. C 는 직접 불러 쓴다
2. C++은 ObjectiveC로 Wrapping 해서 사용한다.
3. 라이브러리로 만들어서 C++을 감싼 ObjectiveC, 이것을 사용하는 Swift Library 2개를 만들어서 사용한다.

## 라이브러리 만들기

1. pod library를 만든다
   > pod lib create [프로젝트이름]
2. pod spec 및 파일 구조 변경(아래 두파일을 참고하여 위치를 본다)
  - CCppWrapObjC.podspec
  - CCppWrapSwift.podspec
