//
//  Word.swift
//  
//
//  Created by Tetsuki Syu on 2020/08/27.
//

import Foundation

class Word : CustomStringConvertible {
    var word: String = ""
    var replacedWords: Set<String> = []
    
    public var description: String {
        return self.word
    }
    
    init(_ word: String) {
        self.word = word
    }
    
    func replace(searchValue: NSRegularExpression, replaceValue: String, replaceReplacedWords: Bool = false) -> Word {
        if !replaceReplacedWords && self.searchValueContainsReplacedWords(searchValue: searchValue, replaceValue: replaceValue) {
            return self
        }
        var replacingWord = self.word
        if searchValue.numberOfMatches(in: self.word, options: [], range: NSMakeRange(0, self.word.count)) > 0 {
            replacingWord = searchValue.stringByReplacingMatches(in: self.word, options: [], range: NSMakeRange(0, self.word
                .count), withTemplate: replaceValue)
        }
        let collection = searchValue.matches(in: self.word, options: [], range: NSMakeRange(0, self.word.count))
        let replacedWords = collection.count > 1 ? collection.map { res in
            let nsString = self.word as NSString
            let group0: String = nsString.substring(with: res.range(at: 0))
            return group0.replacingOccurrences(of: group0, with: replaceValue)
        } : [String]()
        if replacingWord != self.word {
            for _word in replacedWords {
                self.replacedWords.insert(_word)
            }
            self.word = replacingWord
        }
        return self
    }
    
    func replace(searchValue: NSRegularExpression, f: () -> String, replaceReplacedWords: Bool = false) -> Word {
        let replaceValue = f()
        if !replaceReplacedWords && self.searchValueContainsReplacedWords(searchValue: searchValue, replaceValue: replaceValue) {
            return self
        }
        var replacingWord = self.word
        if searchValue.numberOfMatches(in: self.word, options: [], range: NSMakeRange(0, self.word.count)) > 0 {
            let nsString = self.word as NSString
            let matchItem = searchValue.firstMatch(in: self.word, options: [], range: NSMakeRange(0, self.word.count))
            let matchString: String = nsString.substring(with: matchItem!.range(at: 0))
            replacingWord = self.word.replacingOccurrences(of: matchString, with: replaceValue)
        }
        let collection = searchValue.matches(in: self.word, options: [], range: NSMakeRange(0, self.word.count))
        let replacedWords = collection.count > 1 ? collection.map { res in
            let nsString = self.word as NSString
            let group0: String = nsString.substring(with: res.range(at: 0))
            return group0.replacingOccurrences(of: group0, with: replaceValue)
        } : [String]()
        if replacingWord != self.word {
            for _word in replacedWords {
                self.replacedWords.insert(_word)
            }
            self.word = replacingWord
        }
        return self
    }
    
    func replace(searchValue: NSRegularExpression, f: (String, String) -> String, replaceReplacedWords: Bool = false) -> Word {
        if searchValue.numberOfMatches(in: self.word, options: [], range: NSMakeRange(0, self.word.count)) == 0 {
            return self
        }
        let word = self.word
        let captures = searchValue.firstMatch(in: word, options: [], range: NSMakeRange(0, word.count))
        let nsString0 = word as NSString
        let nsString1 = word as NSString
        let group1 = nsString0.substring(with: captures!.range(at: 1))
        let group2 = nsString1.substring(with: captures!.range(at: 2))
        let replaceValue = f(group1, group2)
        if !replaceReplacedWords && self.searchValueContainsReplacedWords(searchValue: searchValue, replaceValue: replaceValue) {
            return self
        }
        let nsString2 = word as NSString
        let replacingWord = self.word.replacingOccurrences(of: nsString2.substring(with: captures!.range(at: 0)), with: replaceValue)
        let collection = searchValue.matches(in: self.word, options: [], range: NSMakeRange(0, self.word.count))
        let replacedWords = collection.count > 1 ? collection.map { res in
            let nsString = self.word as NSString
            let group0: String = nsString.substring(with: res.range(at: 0))
            return group0.replacingOccurrences(of: group0, with: replaceValue)
        } : [String]()
        if replacingWord != self.word {
            for _word in replacedWords {
                self.replacedWords.insert(_word)
            }
            self.word = replacingWord
        }
        return self
    }
    
    private func searchValueContainsReplacedWords(searchValue: NSRegularExpression, replaceValue: String) -> Bool {
        return self.replacedWords.contains { s in
            if searchValue.numberOfMatches(in: s, options: [], range: NSMakeRange(0, s.count)) > 0 {
                let matchResult = searchValue.firstMatch(in: s, options: [], range: NSMakeRange(0, s.count))
                let range = matchResult?.range(at: 0)
                let nsString = s as NSString
                let group0 = nsString.substring(with: range!)
                return group0.replacingOccurrences(of: group0, with: replaceValue) == replaceValue
            }
            return false
        }
    }
}
