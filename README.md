<img src="https://img.shields.io/badge/swift-5.9.2-orange.svg?style=flat" alt="Swift 5.9.2 Compatible">

# SwiftClearOptional

This library is designed to make the Nil-Coalescing Operator more readable, almost like a sentence. For instance, consider Swift code written using the Nil-Coalescing Operator as follows:

```Swift
let resultString = optionalString ?? ""
let resultInt = optionalInt ?? 0
let resultFloat = optionalFloat ?? 0
let resultBool = optionalBool ?? false
let resultDate = optionalDate ?? Date()
```

Upon incorporating this library, it would transform as shown below:

```Swift
let resultString = optionalString.orBlank
let resultInt = optionalInt.orZero
let resultFloat = optionalFloat.orZero
let resltBool = optionalBool.orFalse
let resultDate = optionalDate.orToday
```

URLs may also use forced unwrapping as follos:

```Swift
let url = URL(string: urlString)!
```

If you set a 404 URL and return a default value, you can write the following.

```Swift
let url = URL(string: urlString).or404
```

## License
[MIT](./LICENSE.txt)
