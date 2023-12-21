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

## License
[MIT](./LICENSE.txt)
