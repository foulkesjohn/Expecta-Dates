# Expecta+Dates

[![Version](http://cocoapod-badges.herokuapp.com/v/Expecta+Dates/badge.png)](http://cocoadocs.org/docsets/Expecta+Dates)
[![Platform](http://cocoapod-badges.herokuapp.com/p/Expecta+Dates/badge.png)](http://cocoadocs.org/docsets/Expecta+Dates)

[Expecta](https://github.com/specta/expecta) matchers for NSDate

## Usage

To run the example project; clone the repo, and run `pod install` from the Example directory first.

## Matchers

### Same date

```
NSDate *dateOne = [NSDate date];
NSDate *dateTwo = [NSDate date];
expect(dateOne).to.beSameDay(dateTwo);
```

## Installation

Expecta+Dates is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "Expecta+Dates"

## Author

John Foulkes, foulkes_john@hotmail.com
## License

Expecta+Dates is available under the MIT license. See the LICENSE file for more info.
