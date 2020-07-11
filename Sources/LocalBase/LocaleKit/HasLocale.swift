
@_exported import Base


public protocol HasLocale {
    
    var locale: Locale {get}
}

public extension HasLocale {
    
    /// returns current Locale's language in the supplied lang (locale)
    func langName(translatedInto lid: LIDP) -> Str? {
        
        //TODO: which cases return nil?
        if let a = langCode {
            return lid.transl(langCode: a)
        }
        return nil
    }
    
    /// For example, in the "en" locale, the result for `"fr"` is `"France"`.
    func transl(regionCode: Str) -> Str? {
        locale.localizedString(forRegionCode: regionCode)
    }
    
    ///  localized string for a specified language code.
    /// For example, in the "en" locale, the result for `"es"` is `"Spanish"`.
    func transl(langCode: Str) -> Str? {
        locale.localizedString(forLanguageCode: langCode)
    }
    
    ///  localized string for a specified script code.
    /// For example, in the "en" locale, the result for `"Hans"` is `"Simplified Han"`.
    func transl(scriptCode: Str) -> Str? {
        locale.localizedString(forScriptCode: scriptCode)
    }
    
    ///  localized string for a specified variant code.
    /// For example, in the "en" locale, the result for `"POSIX"` is `"Computer"`.
    func transl(variantCode: Str) -> Str? {
        locale.localizedString(forVariantCode: variantCode)
    }
    
    //TODO: get all calendar names, maybe impl CalWord
    ///  localized string for a specified `Calendar.Identifier`.
    /// For example, in the "en" locale, the result for `.buddhist` is `"Buddhist Calendar"`.
    func transl(_ calID: Calendar.Identifier) -> Str? {
        locale.localizedString(for: calID)
    }
    
    ///  localized string for a specified ISO 4217 currency code.
    /// For example, in the "en" locale, the result for `"USD"` is `"US Dollar"`.
    /// - seealso: `Locale.isoCurrencyCodes`
    func transl(currencyCode: Str) -> Str? {
        locale.localizedString(forCurrencyCode: currencyCode)
    }
    
    ///  localized string for a specified ICU collation identifier.
    /// For example, in the "en" locale, the result for `"phonebook"` is `"Phonebook Sort Order"`.
    func transl(collationIdentifier: Str) -> Str? {
        locale.localizedString(forCollationIdentifier: collationIdentifier)
    }
    
    ///  localized string for a specified ICU collator identifier.
    func transl(collatorIdentifier: Str) -> Str? {
        locale.localizedString(forCollatorIdentifier: collatorIdentifier)
    }
    
    
    //MARK: -
    
    ///  identifier of the locale.
    var identifier: Str  {
        locale.identifier
    }
    
    ///  language code of the locale, or nil if has none.
    /// For example, for the locale "zh-Hant-HK", returns "zh".
    var langCode: Str? {
        locale.languageCode
    }
    
    ///  region code of the locale, or nil if it has none.
    /// For example, for the locale "zh-Hant-HK", returns "HK".
    var regionCode: Str? {
        locale.regionCode
    }
    
    ///  script code of the locale, or nil if has none.
    /// For example, for the locale "zh-Hant-HK", returns "Hant".
    var scriptCode: Str? {
        locale.scriptCode
    }
    
    ///  variant code for the locale, or nil if it has none.
    /// For example, for the locale "en_POSIX", returns "POSIX".
    var variantCode: Str? {
        locale.variantCode
    }
    
    ///  exemplar character set for the locale, or nil if has none.
    var exemplarCharacterSet: CharacterSet? {
        locale.exemplarCharacterSet
    }
    
    ///  calendar for the locale, or the Gregorian calendar as a fallback.
    var calendar: Calendar {
        locale.calendar
    }
    
    ///  collation identifier for the locale, or nil if it has none.
    /// For example, for the locale "en_US@collation=phonebook", returns "phonebook".
    var collationIdentifier: Str? {
        locale.collationIdentifier
    }
    
    /// Returns true if the locale uses the metric system.
    /// -seealso: MeasurementFormatter
    var usesMetricSystem: Bool {
        locale.usesMetricSystem
    }
    
    ///  decimal separator of the locale.
    /// For example, for "en_US", returns ".".
    var decimalSeparator: Str? {
        locale.decimalSeparator
    }
    
    ///  grouping separator of the locale.
    /// For example, for "en_US", returns ",".
    var groupingSeparator: Str? {
        locale.groupingSeparator
    }
    
    ///  currency symbol of the locale.
    /// For example, for "zh-Hant-HK", returns "HK$".
    var currencySymbol: Str? {
        locale.currencySymbol
    }
    
    ///  currency code of the locale.
    /// For example, for "zh-Hant-HK", returns "HKD".
    var currencyCode: Str? {
        locale.currencyCode
    }
    
    ///  collator identifier of the locale.
    var collatorIdentifier: Str? {
        locale.collatorIdentifier
    }
    
    ///  quotation begin delimiter of the locale.
    /// For example, returns `“` for "en_US", and `「` for "zh-Hant-HK".
    var quotationBeginDelimiter: Str? {
        locale.quotationBeginDelimiter
    }
    
    ///  quotation end delimiter of the locale.
    /// For example, returns `”` for "en_US", and `」` for "zh-Hant-HK".
    var quotationEndDelimiter: Str? {
        locale.quotationEndDelimiter
    }
    
    ///  alternate quotation begin delimiter of the locale.
    /// For example, returns `‘` for "en_US", and `『` for "zh-Hant-HK".
    var alternateQuotationBeginDelimiter: Str? {
        locale.alternateQuotationBeginDelimiter
    }
    
    ///  alternate quotation end delimiter of the locale.
    /// For example, returns `’` for "en_US", and `』` for "zh-Hant-HK".
    var alternateQuotationEndDelimiter: Str? {
        locale.alternateQuotationEndDelimiter
    }
    
    //    ///  list of available `Locale` identifiers.
    //    static var availableIdentifiers: [Str] {
    //         Locale.availableIdentifiers
    //    }
    //
    //    ///  list of available `Locale` language codes.
    //    static var isoLanguageCodes: [Str] {
    //         Locale.isoLanguageCodes
    //    }
    //
    //    ///  list of available `Locale` region codes.
    //    static var isoRegionCodes: [Str] {
    //         Locale.isoRegionCodes
    //    }
    //
    //    ///  list of available `Locale` currency codes.
    //    static var isoCurrencyCodes: [Str] {
    //         Locale.isoCurrencyCodes
    //    }
    //
    //    ///  list of common `Locale` currency codes.
    //    static var commonISOCurrencyCodes: [Str] {
    //         Locale.commonISOCurrencyCodes
    //    }
    //
    //    ///  list of the user's preferred languages.
    //    /// - note: `Bundle` is responsible for determining the language that your application will run in, based on the result of this API and combined with the languages your application supports.
    //    /// - seealso: `Bundle.preferredLocalizations(from:)`
    //    /// - seealso: `Bundle.preferredLocalizations(from:forPreferences:)`
    //    static var preferredLanguages: [Str] {
    //         Locale.preferredLanguages
    //    }
    
    //    ///  dictionary that splits an identifier into its component pieces.
    //    static func components(fromIdentifier string: Str) -> [Str : Str]{
    //         Locale.components(fromIdentifier: string)
    //    }
    //
    //    /// Constructs an identifier from a dictionary of components.
    //    static func identifier(fromComponents components: [Str : Str]) -> Str{
    //         Locale.identifier(fromComponents: components)
    //    }
    //
    //    ///  canonical identifier from the given string.
    //    static func canonicalIdentifier(from string: Str) -> Str{
    //         Locale.canonicalIdentifier(from: string)
    //    }
    //
    //    ///  canonical language identifier from the given string.
    //    static func canonicalLanguageIdentifier(from string: Str) -> Str{
    //         Locale.canonicalLanguageIdentifier(from: string)
    //    }
    //
    //    ///  `Locale` identifier from a given Windows locale code, or nil if it could not be converted.
    //    static func identifier(fromWindowsLocaleCode code: Int) -> Str?{
    //         Locale.identifier(fromWindowsLocaleCode: code)
    //    }
    //
    //    ///  Windows locale code from a given identifier, or nil if it could not be converted.
    //    static func windowsLocaleCode(fromIdentifier identifier: Str) -> Int?{
    //         Locale.windowsLocaleCode(fromIdentifier: identifier)
    //    }
    //
    //    ///  character direction for a specified language code.
    //    static func characterDirection(forLanguage isoLangCode: Str) -> Locale.LanguageDirection{
    //         Locale.characterDirection(forLanguage: isoLangCode)
    //    }
    //
    //    ///  line direction for a specified language code.
    //    static func lineDirection(forLanguage isoLangCode: Str) -> Locale.LanguageDirection {
    //         Locale.lineDirection(forLanguage: isoLangCode)
    //    }
}

