# owoifySwift
Turning your worst nightmare into a Swift package.

This is a Swift port of [mohan-cao's owoify-js](https://github.com/mohan-cao/owoify-js), which will help you turn any string into nonsensical babyspeak similar to LeafySweet's infamous Chrome extension.

Just like my other Owoify ports, three levels of owoness are available:

1. **owo (default)**: The most vanilla one.
2. **uwu**: The moderate one.
3. **uvu**: Litewawwy unweadabwal.

Please refer to the original [owoify-js repository](https://github.com/mohan-cao/owoify-js) for more information.

Seriously, if you have seen my other ports, you probably have already known the details.

## Reason for development
Because it doesn't seem that Swift has any owoify package. And since I have already ported it to several languages, I might as well just keep porting it.

## Install instructions
Put this in your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/deadshot465/owoifySwift", from: "1.0.0")
]
```

Alternatively, you can read the article [here](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app) to learn how to add dependencies to your Swift application using Xcode.

## Usage
owoifySwift is implemented as a single function. That means you don't need to create an instance of any class; instead, just call the method `owoify` and pass the string you want to owoify and optionally provide a level of owoness.

```swift
import OwoifySwift

func main() {
    print(owoify(source: "This is the string to owo! Kinda cute, isn't it?"))
    print(owoify(source: "This is the string to owo! Kinda cute, isn't it?", level: OwoifyLevel.Uvu))
}

// Output:
// This is teh stwing two owo! Kinda cute, isn't it?
// fwis is teh stwing two owo(｡♥‿♥｡) Kinda cute(*^ω^) isn't it?
```

## Disclaimer
As usual, I'm writing this package for both practicing and bots' needs. Performance is **NOT** guaranteed.

That being said, all regular expressions are declared beforehand rather than being declared inside a function. That should be able to avoid the performance cost of building regular expressions every time the method is called.

## See also
- [owoify-js](https://github.com/mohan-cao/owoify-js) - The original owoify-js repository.
- [Owoify.Net](https://www.nuget.org/packages/Owoify.Net/1.0.1) - The C# port of Owoify written by me.
- [Owoify++](https://github.com/deadshot465/OwoifyCpp) - The C++ header-only port of Owoify written by me.
- [owoify_rs](https://crates.io/crates/owoify_rs) - The Rust port of Owoify written by me.
- [owoify-py](https://pypi.org/project/owoify-py/) - The Python port of Owoify written by me.
- [owoify_dart](https://pub.dev/packages/owoify_dart) - The Dart port of Owoify written by me.
- [owoify_rb](https://rubygems.org/gems/owoify_rb) - The Ruby port of Owoify written by me.
- [owoify-go](https://github.com/deadshot465/owoify-go) - The Go port of Owoify written by me.
- [owoifyKt](https://github.com/deadshot465/owoifyKt) - The Kotlin port of Owoify written by me.
