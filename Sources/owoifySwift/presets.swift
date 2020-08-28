//
//  File.swift
//  
//
//  Created by 周哲輝 on 2020/08/28.
//

import Foundation

let SPECIFIC_WORD_MAPPING_LIST: [(Word) -> Word] = [
    mapFucToFwuc,
    mapMomToMwom,
    mapTimeToTim,
    mapMeToMwe,
    mapNVowelToNy,
    mapOverToOwor,
    mapOveToUv,
    mapHahaToHeheXd,
    mapTheToTeh,
    mapYouToU,
    mapReadToWead,
    mapWorseToWose
]

let UVU_MAPPING_LIST: [(Word) -> Word] = [
    mapOToOwO,
    mapEwToUwu,
    mapHeyToHay,
    mapDeadToDed,
    mapNVowelTToNd
]

let UWU_MAPPING_LIST: [(Word) -> Word] = [
    mapBracketToStarTrails,
    mapPeriodCommaExclamationSemicolonToKaomojis,
    mapThatToDat,
    mapThToF,
    mapLeToWal,
    mapVeToWe,
    mapRyToWwy,
    mapROrLToW
]

let OWO_MAPPING_LIST: [(Word) -> Word] = [
    mapLlToWw,
    mapVowelOrRExceptOLToWl,
    mapOldToOwld,
    mapOlToOwl,
    mapLOrROToWo,
    mapSpecificConsonantsOToLetterAndWo,
    mapVOrWLeToWal,
    mapFiToFwi,
    mapVerToWer,
    mapPoiToPwoi,
    mapSpecificConsonantsLeToLetterAndWal,
    mapConsonantsRToConsonantW,
    mapLyToWy,
    mapPleToPwe,
    mapNrToNw
]
