# tdd-objc-barebone

The aim of this project is to (1) provide a barebone Objective-C TDD environment for developers to play around with, and (2) introduce developers to [BDD](https://en.wikipedia.org/wiki/Behavior-driven_development) style testing on iOS.

## Setting Up

1. `pod install`, if you don't have cocoapods, try `$ sudo gem install cocoapods` or visit the [getting started site](https://guides.cocoapods.org/using/getting-started.html)
2. `tddObjcBlank.xcworkspace`
3. Hit `⌘`+`U` to run the tests.  You should see something like,
```
Finished in 0.0062 seconds

0 examples, 0 failures
Test Suite 'All tests' passed at 2017-04-11 17:18:49.269.
	 Executed 0 tests, with 0 failures (0 unexpected) in 0.000 (0.036) seconds
```

and voila!  You're good to go!


## The BDD Exercise

> Build a calculator that computes the total cost of a list of goods.  Tax rules are as follows,
>   * _10% HST on all goods except books and food_
>   * _5% GST on books_
>   * _Food is tax exempt_

In this exercise, we've decided to split the feature into the stories **A**, **B**, **C**, and **D** below.

Begin by adding a new `...spec` to `tddObjcBlankTests/tax`, and then implementing your design under `tddObjcBlank/tax`.  Don't forget to check out [these tips](#helpful-tips).  Go [here](#a-few-notes-on-tooling) if you're interested in learning a bit more about the TDD framework.

**Story A**
```
Given:  Jimmy is in a hurry to purchase some goods.
When:  Jimmy supplies his list of items to the cost calculator.
Then:  Jimmy is shown the final cost of his goods with 10% HST added.
```

**Story B**
```
Given:  Jimmy is looking to purchase some books (HST exempt, but subject to 5% GST tax).
When:  Jimmy supplies his list of books to the cost calculator.
Then:  Jimmy is shown the final cost of his books with 5% GST added.
```

**Story C**
```
Given:  Jimmy is feeling hungry, but first needs to know the wallet-damage of his food (tax exempt).
When:  Jimmy supplies his list of produce to the cost calculator.
Then:  Jimmy is shown the final cost of his food with no tax added.
```

**Story D**
```
Given:  Jimmy is mindful of his budget and wishes to know the total cost of his shopping list before buying.
When:  Jimmy supplies his shopping list to the cost calculator.
Then:  Jimmy is shown an accurate final cost of his shopping list with tax included.

Acceptance Criteria:
- 10% HST on all goods except books and food
- 5% GST on books
- food is tax exempt
(See stories A, B, and C for details)
```

A set of solutions to this exercise can be found under the `tax_swu` folder.  To run the tests, simply remove the `x` from `xdescribe` in each spec.

## Helpful Tips

- `⌘`+`U` to run tests.
- prefix a `describe`, `context`, or `it` with `f` to focus the test (i.e. don't run other tests)
- prefix a `describe`, `context`, or `it` with `x` to exclude the test


##### Boiler plate & auto-completion

You may want to run,

```
$ git clone https://github.com/pivotal/cedar.git && cd cedar
$ ./installCodeSnippetsAndTemplates # or rake install
```
and restart Xcode to get the `Cedar` template and snippets.  The template makes creating pre-formatted `spec` files easy, and the snippets make writing new tests easy (try `cdes`, `cccont`, `cit`).



## A Few Notes on Tooling

In this example, the test framework we are using is [Cedar](https://github.com/pivotal/cedar).  It builds on top of `XCTest` to provide a BDD-styled way of writing tests in iOS.  It comes with a helpful set of matchers (for asserting and comparing outcomes) built in, and provides the ability to create custom matchers.

Another very popular test framework is [Kiwi](https://github.com/kiwi-bdd/Kiwi).  It compliments nicely with additional matches from [Expecta](https://github.com/specta/expecta).

This tutorial only covers testing in Objective-C, for Swift, visit tdd-swift-barebone (_coming soon!_).

