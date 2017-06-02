# NSPredicateSearch

A NSPredicate category to help with a dinamic Search (smart search)

[![Version](https://img.shields.io/cocoapods/v/NSPredicateSearch.svg?style=flat)](http://cocoapods.org/pods/NSPredicateSearch)
[![License](https://img.shields.io/cocoapods/l/NSPredicateSearch.svg?style=flat)](http://cocoapods.org/pods/NSPredicateSearch)
[![Platform](https://img.shields.io/cocoapods/p/NSPredicateSearch.svg?style=flat)](http://cocoapods.org/pods/NSPredicateSearch)

## Running 

![](use.gif) 


## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.


````Swift
 let predicate = NSPredicate(search: query, searchTerm: "name")
 self.array.filter(using: predicate!)
 self.array = NSMutableArray(array:self.arrayAll.filtered(using: predicate!))

````

````Objective-C
NSPredicate *predicate = [NSPredicate predicateWithSearch:searchText searchTerm:@"searchTerms"];
self.arrayData = [[NSMutableArray alloc] initWithArray:[self.arrayAllData filteredArrayUsingPredicate:predicate]];
````

## Requirements
iOS 8 +

## Installation

NSPredicateSearch is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "NSPredicateSearch"
```

## Author

Narlei A Moreira, narlei.guitar@gmail.com

## License

NSPredicateSearch is available under the MIT license. See the LICENSE file for more info.
