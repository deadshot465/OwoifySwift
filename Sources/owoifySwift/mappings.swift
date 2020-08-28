//
//  File.swift
//  
//
//  Created by 周哲輝 on 2020/08/28.
//

import Foundation

let O_TO_OWO = try! NSRegularExpression(pattern: #"o"#, options: [])
let EW_TO_UWU = try! NSRegularExpression(pattern: #"ew"#, options: [])
let HEY_TO_HAY = try! NSRegularExpression(pattern: #"([Hh])ey"#, options: [])
let DEAD_TO_DED_UPPER = try! NSRegularExpression(pattern: #"Dead"#, options: [])
let DEAD_TO_DED_LOWER = try! NSRegularExpression(pattern: #"dead"#, options: [])
let N_VOWEL_T_TO_ND = try! NSRegularExpression(pattern: #"n[aeiou]*t"#, options: [])
let READ_TO_WEAD_UPPER = try! NSRegularExpression(pattern: #"Read"#, options: [])
let READ_TO_WEAD_LOWER = try! NSRegularExpression(pattern: #"read"#, options: [])
let BRACKETS_TO_STARTRAILS_FORE = try! NSRegularExpression(pattern: #"[({<]"#, options: [])
let BRACKETS_TO_STARTRAILS_REAR = try! NSRegularExpression(pattern: #"[)}>]"#, options: [])
let PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_FIRST = try! NSRegularExpression(pattern: #"[.,](?![0-9])"#, options: [])
let PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_SECOND = try! NSRegularExpression(pattern: #"[!;]+"#, options: [])
let THAT_TO_DAT_UPPER = try! NSRegularExpression(pattern: #"That"#, options: [])
let THAT_TO_DAT_LOWER = try! NSRegularExpression(pattern: #"that"#, options: [])
let TH_TO_F_UPPER = try! NSRegularExpression(pattern: #"TH(?!E)"#, options: [])
let TH_TO_F_LOWER = try! NSRegularExpression(pattern: #"[Tt]h(?![Ee])"#, options: [])
let LE_TO_WAL = try! NSRegularExpression(pattern: #"le$"#, options: [])
let VE_TO_WE_UPPER = try! NSRegularExpression(pattern: #"Ve"#, options: [])
let VE_TO_WE_LOWER = try! NSRegularExpression(pattern: #"ve"#, options: [])
let RY_TO_WWY = try! NSRegularExpression(pattern: #"ry"#, options: [])
let RORL_TO_W_UPPER = try! NSRegularExpression(pattern: #"(?:R|L)"#, options: [])
let RORL_TO_W_LOWER = try! NSRegularExpression(pattern: #"(?:r|l)"#, options: [])
let LL_TO_WW = try! NSRegularExpression(pattern: #"ll"#, options: [])
let VOWEL_OR_R_EXCEPT_O_L_TO_WL_UPPER = try! NSRegularExpression(pattern: #"[AEIUR]([lL])$"#, options: [])
let VOWEL_OR_R_EXCEPT_O_L_TO_WL_LOWER = try! NSRegularExpression(pattern: #"[aeiur]l$"#, options: [])
let OLD_TO_OWLD_UPPER = try! NSRegularExpression(pattern: #"OLD"#, options: [])
let OLD_TO_OWLD_LOWER = try! NSRegularExpression(pattern: #"([Oo])ld"#, options: [])
let OL_TO_OWL_UPPER = try! NSRegularExpression(pattern: #"OL"#, options: [])
let OL_TO_OWL_LOWER = try! NSRegularExpression(pattern: #"([Oo])l"#, options: [])
let LORR_O_TO_WO_UPPER = try! NSRegularExpression(pattern: #"[LR]([oO])"#, options: [])
let LORR_O_TO_WO_LOWER = try! NSRegularExpression(pattern: #"[lr]o"#, options: [])
let SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_UPPER = try! NSRegularExpression(pattern: #"([BCDFGHJKMNPQSTXYZ])([oO])"#, options: [])
let SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_LOWER = try! NSRegularExpression(pattern: #"([bcdfghjkmnpqstxyz])o"#, options: [])
let VORW_LE_TO_WAL = try! NSRegularExpression(pattern: #"[vw]le"#, options: [])
let FI_TO_FWI_UPPER = try! NSRegularExpression(pattern: #"FI"#, options: [])
let FI_TO_FWI_LOWER = try! NSRegularExpression(pattern: #"([Ff])i"#, options: [])
let VER_TO_WER = try! NSRegularExpression(pattern: #"([Vv])er"#, options: [])
let POI_TO_PWOI = try! NSRegularExpression(pattern: #"([Pp])oi"#, options: [])
let SPECIFIC_CONSONANTS_LE_TO_LETTER_AND_WAL = try! NSRegularExpression(pattern: #"([DdFfGgHhJjPpQqRrSsTtXxYyZz])le$"#, options: [])
let CONSONANT_R_TO_CONSONANT_W = try! NSRegularExpression(pattern: #"([BbCcDdFfGgKkPpQqSsTtWwXxZz])r"#, options: [])
let LY_TO_WY_UPPER = try! NSRegularExpression(pattern: #"Ly"#, options: [])
let LY_TO_WY_LOWER = try! NSRegularExpression(pattern: #"ly"#, options: [])
let PLE_TO_PWE = try! NSRegularExpression(pattern: #"([Pp])le"#, options: [])
let NR_TO_NW_UPPER = try! NSRegularExpression(pattern: #"NR"#, options: [])
let NR_TO_NW_LOWER = try! NSRegularExpression(pattern: #"nr"#, options: [])
let FUC_TO_FWUC = try! NSRegularExpression(pattern: #"([Ff])uc"#, options: [])
let MOM_TO_MWOM = try! NSRegularExpression(pattern: #"([Mm])om"#, options: [])
let ME_TO_MWE = try! NSRegularExpression(pattern: #"([Mm])e"#, options: [])
let N_VOWEL_TO_NY_FIRST = try! NSRegularExpression(pattern: #"n([aeiou])"#, options: [])
let N_VOWEL_TO_NY_SECOND = try! NSRegularExpression(pattern: #"N([aeiou])"#, options: [])
let N_VOWEL_TO_NY_THIRD = try! NSRegularExpression(pattern: #"N([AEIOU])"#, options: [])
let OVE_TO_UV_UPPER = try! NSRegularExpression(pattern: #"OVE"#, options: [])
let OVE_TO_UV_LOWER = try! NSRegularExpression(pattern: #"ove"#, options: [])
let HAHA_TO_HEHE_XD = try! NSRegularExpression(pattern: #"\b(ha|hah|heh|hehe)+\b"#, options: [])
let THE_TO_TEH = try! NSRegularExpression(pattern: #"\b([Tt])he\b"#, options: [])
let YOU_TO_U_UPPER = try! NSRegularExpression(pattern: #"\bYou\b"#, options: [])
let YOU_TO_U_LOWER = try! NSRegularExpression(pattern: #"\byou\b"#, options: [])
let TIME_TO_TIM = try! NSRegularExpression(pattern: #"\b([Tt])ime\b"#, options: [])
let OVER_TO_OWOR = try! NSRegularExpression(pattern: #"([Oo])ver"#, options: [])
let WORSE_TO_WOSE = try! NSRegularExpression(pattern: #"([Ww])orse"#, options: [])

let FACES = ["(・`ω´・)", ";;w;;", "owo", "UwU", ">w<", "^w^", "(* ^ ω ^)", "(⌒ω⌒)", "ヽ(*・ω・)ﾉ", "(o´∀`o)", "(o･ω･o)", "＼(＾▽＾)／", "(*^ω^)", "(◕‿◕✿)", "(◕ᴥ◕)", "ʕ•ᴥ•ʔ", "ʕ￫ᴥ￩ʔ", "(*^.^*)", "(｡♥‿♥｡)", "OwO", "uwu", "uvu", "UvU", "(*￣з￣)", "(つ✧ω✧)つ", "(/ =ω=)/", "(╯°□°）╯︵ ┻━┻", "┬─┬ ノ( ゜-゜ノ)", "¯\\_(ツ)_/¯"]


func mapOToOwO(input: Word) -> Word {
    let replacement = Int.random(in: 0..<2) > 0 ? "owo" : "o"
    return input.replace(searchValue: O_TO_OWO, replaceValue: replacement)
}

func mapEwToUwu(input: Word) -> Word {
    return input.replace(searchValue: EW_TO_UWU, replaceValue: "uwu")
}

func mapHeyToHay(input: Word) -> Word {
    return input.replace(searchValue: HEY_TO_HAY, replaceValue: "$1ay")
}

func mapDeadToDed(input: Word) -> Word {
    return input
        .replace(searchValue: DEAD_TO_DED_UPPER, replaceValue: "Ded")
        .replace(searchValue: DEAD_TO_DED_LOWER, replaceValue: "ded")
}

func mapNVowelTToNd(input: Word) -> Word {
    return input.replace(searchValue: N_VOWEL_T_TO_ND, replaceValue: "nd")
}

func mapReadToWead(input: Word) -> Word {
    return input
        .replace(searchValue: READ_TO_WEAD_UPPER, replaceValue: "Wead")
        .replace(searchValue: READ_TO_WEAD_LOWER, replaceValue: "wead")
}

func mapBracketToStarTrails(input: Word) -> Word {
    return input
        .replace(searchValue: BRACKETS_TO_STARTRAILS_FORE, replaceValue: "｡･:*:･ﾟ★,｡･:*:･ﾟ☆")
        .replace(searchValue: BRACKETS_TO_STARTRAILS_REAR, replaceValue: "☆ﾟ･:*:･｡,★ﾟ･:*:･｡")
}

func mapPeriodCommaExclamationSemicolonToKaomojis(input: Word) -> Word {
    return input.replace(searchValue: PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_FIRST, f: { () -> String in
        return FACES.randomElement()!
    }).replace(searchValue: PERIOD_COMMA_EXCLAMATION_SEMICOLON_TO_KAOMOJIS_SECOND, f: { () -> String in
        return FACES.randomElement()!
    })
}

func mapThatToDat(input: Word) -> Word {
    return input
        .replace(searchValue: THAT_TO_DAT_LOWER, replaceValue: "dat")
        .replace(searchValue: THAT_TO_DAT_UPPER, replaceValue: "Dat")
}

func mapThToF(input: Word) -> Word {
    return input.replace(searchValue: TH_TO_F_LOWER, replaceValue: "f")
        .replace(searchValue: TH_TO_F_UPPER, replaceValue: "F")
}

func mapLeToWal(input: Word) -> Word {
    return input.replace(searchValue: LE_TO_WAL, replaceValue: "wal")
}

func mapVeToWe(input: Word) -> Word {
    return input.replace(searchValue: VE_TO_WE_LOWER, replaceValue: "we")
        .replace(searchValue: VE_TO_WE_UPPER, replaceValue: "We")
}

func mapRyToWwy(input: Word) -> Word {
    return input.replace(searchValue: RY_TO_WWY, replaceValue: "wwy")
}

func mapROrLToW(input: Word) -> Word {
    return input.replace(searchValue: RORL_TO_W_LOWER, replaceValue: "w")
        .replace(searchValue: RORL_TO_W_UPPER, replaceValue: "W")
}


func mapLlToWw(input: Word) -> Word {
    return input.replace(searchValue: LL_TO_WW, replaceValue: "ww")
}

func mapVowelOrRExceptOLToWl(input: Word) -> Word {
    return input.replace(searchValue: VOWEL_OR_R_EXCEPT_O_L_TO_WL_LOWER, replaceValue: "wl")
        .replace(searchValue: VOWEL_OR_R_EXCEPT_O_L_TO_WL_UPPER, replaceValue: "W$1")
}

func mapOldToOwld(input: Word) -> Word {
    return input.replace(searchValue: OLD_TO_OWLD_LOWER, replaceValue: "$1wld")
        .replace(searchValue: OLD_TO_OWLD_UPPER, replaceValue: "OWLD")
}

func mapOlToOwl(input: Word) -> Word {
    return input.replace(searchValue: OL_TO_OWL_LOWER, replaceValue: "$1wl")
        .replace(searchValue: OL_TO_OWL_UPPER, replaceValue: "OWL")
}

func mapLOrROToWo(input: Word) -> Word {
    return input.replace(searchValue: LORR_O_TO_WO_LOWER, replaceValue: "wo")
        .replace(searchValue: LORR_O_TO_WO_UPPER, replaceValue: "W$1")
}

func mapSpecificConsonantsOToLetterAndWo(input: Word) -> Word {
    return input.replace(searchValue: SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_LOWER, replaceValue: "$1wo")
        .replace(searchValue: SPECIFIC_CONSONANTS_O_TO_LETTER_AND_WO_UPPER, f: { (str1: String, str2: String) -> String in
            var msg = str1
            msg += str2.uppercased() == str2 ? "W" : "w"
            msg += str2
            return msg
        })
}

func mapVOrWLeToWal(input: Word) -> Word {
    return input.replace(searchValue: VORW_LE_TO_WAL, replaceValue: "wal")
}

func mapFiToFwi(input: Word) -> Word {
    return input.replace(searchValue: FI_TO_FWI_LOWER, replaceValue: "$1wi")
        .replace(searchValue: FI_TO_FWI_UPPER, replaceValue: "FWI")
}

func mapVerToWer(input: Word) -> Word {
    return input.replace(searchValue: VER_TO_WER, replaceValue: "wer")
}

func mapPoiToPwoi(input: Word) -> Word {
    return input.replace(searchValue: POI_TO_PWOI, replaceValue: "$1woi")
}

func mapSpecificConsonantsLeToLetterAndWal(input: Word) -> Word {
    return input.replace(searchValue: SPECIFIC_CONSONANTS_LE_TO_LETTER_AND_WAL, replaceValue: "$1wal")
}

func mapConsonantsRToConsonantW(input: Word) -> Word {
    return input.replace(searchValue: CONSONANT_R_TO_CONSONANT_W, replaceValue: "$1w")
}

func mapLyToWy(input: Word) -> Word {
    return input.replace(searchValue: LY_TO_WY_LOWER, replaceValue: "wy")
        .replace(searchValue: LY_TO_WY_UPPER, replaceValue: "Wy")
}

func mapPleToPwe(input: Word) -> Word {
    return input.replace(searchValue: PLE_TO_PWE, replaceValue: "$1we")
}

func mapNrToNw(input: Word) -> Word {
    return input.replace(searchValue: NR_TO_NW_LOWER, replaceValue: "nw")
        .replace(searchValue: NR_TO_NW_UPPER, replaceValue: "NW")
}

func mapFucToFwuc(input: Word) -> Word {
    return input.replace(searchValue: FUC_TO_FWUC, replaceValue: "$1wuc")
}

func mapMomToMwom(input: Word) -> Word {
    return input.replace(searchValue: MOM_TO_MWOM, replaceValue: "$1wom")
}

func mapMeToMwe(input: Word) -> Word {
    return input.replace(searchValue: ME_TO_MWE, replaceValue: "$1we")
}

func mapNVowelToNy(input: Word) -> Word {
    return input.replace(searchValue: N_VOWEL_TO_NY_FIRST, replaceValue: "ny$1")
        .replace(searchValue: N_VOWEL_TO_NY_SECOND, replaceValue: "Ny$1")
        .replace(searchValue: N_VOWEL_TO_NY_THIRD, replaceValue: "NY$1")
}

func mapOveToUv(input: Word) -> Word {
    return input.replace(searchValue: OVE_TO_UV_LOWER, replaceValue: "uv")
        .replace(searchValue: OVE_TO_UV_UPPER, replaceValue: "UV")
}

func mapHahaToHeheXd(input: Word) -> Word {
    return input.replace(searchValue: HAHA_TO_HEHE_XD, replaceValue: "hehe xD")
}

func mapTheToTeh(input: Word) -> Word {
    return input.replace(searchValue: THE_TO_TEH, replaceValue: "$1eh")
}

func mapYouToU(input: Word) -> Word {
    return input.replace(searchValue: YOU_TO_U_UPPER, replaceValue: "U")
        .replace(searchValue: YOU_TO_U_LOWER, replaceValue: "u")
}

func mapTimeToTim(input: Word) -> Word {
    return input.replace(searchValue: TIME_TO_TIM, replaceValue: "$1im")
}

func mapOverToOwor(input: Word) -> Word {
    return input.replace(searchValue: OVER_TO_OWOR, replaceValue: "$1wor")
}

func mapWorseToWose(input: Word) -> Word {
    return input.replace(searchValue: WORSE_TO_WOSE, replaceValue: "$1ose")
}
