
//public typealias MeasFormatterOptions = MeasurementFormatter.UnitOptions
//extension MeasFormatterOptions: Hashable{}


public extension MeasurementFormatter {
    private static let _sharedMeasurementFormatter = MeasurementFormatter()
    
    /// - parameter unitStyle:  by default medium
    static func sharedMeasurementFormatter(unitStyle: UnitStyle = .medium,
                                           numFormat: NumFormat = .decimal,
                                           minFractionDigits: Int = 0,
                                           maxFractionDigits: Int = 10,
                                           _ locale: LIDP = LID.english) -> MeasurementFormatter {
        
        let fmtr = _sharedMeasurementFormatter
        fmtr.unitStyle = unitStyle
        fmtr.locale = locale.locale
        fmtr.numberFormatter.minimumFractionDigits = minFractionDigits
        fmtr.numberFormatter.maximumFractionDigits = maxFractionDigits
        
        
        // unitOptions:  by default uses providedUnit, set empty to get preferred value for you Locale
        // if unitOptions is set to the empty set, the formatter will do the following:
        // - kilocalories may be formatted as "C" instead of "kcal" depending on the locale.
        // - kilometersPerHour may be formatted as "miles per hour" for US and UK locales but "kilometers per hour" for other locales.
        //
        // However, if providedUnit is set, the formatter will do the following:
        // - kilocalories would be formatted as "kcal" in the language of the locale, even if the locale prefers "C".
        // - kilometersPerHour would be formatted as "kilometers per hour" for US and UK locales even though the preference is for "miles per hour."
        //
        // Note that formatter will handle converting measurement objects to the preferred units in a particular locale.  For instance, if provided a measurement object in kilometers and the set locale is en_US, the formatter will implicitly convert the measurement object to miles and return the formatted string as the equivalent measurement in miles.
        fmtr.unitOptions = .providedUnit
        
  
        //??
        // alwaysShowsDecimalSeparator = true
        // generatesDecimalNumbers = false
        
        //        if let fmtr = formatter.numberFormatter {
        //            fmtr.numberStyle = numFormat
        //            //fmtr.locale = locale
        //        } else {
        //            fmtr.numberFormatter = NumberFormatter.shared()
        //            fmtr.numberFormatter.numberStyle = numFormat
        //        }
        
        return fmtr
    }
}
