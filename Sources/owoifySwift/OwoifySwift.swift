import Foundation

let WORD_REGEX = try! NSRegularExpression(pattern: #"[^\s]+"#, options: [])
let SPACE_REGEX = try! NSRegularExpression(pattern: #"\s+"#, options: [])

public enum OwoifyLevel {
    case Owo, Uwu, Uvu
}

public func owoify(source: String, level: OwoifyLevel = OwoifyLevel.Owo) -> String {
    let wordMatches = WORD_REGEX.matches(in: source, options: [], range: NSMakeRange(0, source.count))
    let spaceMatches = SPACE_REGEX.matches(in: source, options: [], range: NSMakeRange(0, source.count))
    var words: [Word] = wordMatches.map { res in
        let nsString = source as NSString
        let group0: String = nsString.substring(with: res.range(at: 0))
        return Word(group0)
    }
    let spaces: [Word] = spaceMatches.map { res in
        let nsString = source as NSString
        let group0: String = nsString.substring(with: res.range(at: 0))
        return Word(group0)
    }
    
    words = words.map { w in
        var _word = w
        for f in SPECIFIC_WORD_MAPPING_LIST {
            _word = f(_word)
        }
        switch level {
        case OwoifyLevel.Owo:
            for f in OWO_MAPPING_LIST {
                _word = f(_word)
            }
        case OwoifyLevel.Uwu:
            for f in UWU_MAPPING_LIST {
                _word = f(_word)
            }
            for f in OWO_MAPPING_LIST {
                _word = f(_word)
            }
        case OwoifyLevel.Uvu:
            for f in UVU_MAPPING_LIST {
                _word = f(_word)
            }
            for f in UWU_MAPPING_LIST {
                _word = f(_word)
            }
            for f in OWO_MAPPING_LIST {
                _word = f(_word)
            }
        }
        return _word
    }
    
    let result = interleaveArrays(a: words, b: spaces)
    let resultStrings: [String] = result.map { w in
        return String(describing: w)
    }
    return resultStrings.joined(separator: "")
}
