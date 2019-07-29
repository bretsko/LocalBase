

public extension Array where Element: HasDateP {
    
    /// sorted
    var dates: [Date] {
        return map{$0.date}.sorted()
    }
    var minDate: Date? {
        return dates.first
    }
    var maxDate: Date? {
        return dates.last
    }
    
    var sortedByDate: [E] {
        return sorted(by: {$0.date < $1.date})
    }
    var unitWithMinDate: E? {
        return sortedByDate.first
    }
    var unitWithMaxDate: E? {
        return sortedByDate.last
    }
}

public extension Set where Element: HasDateP {
    
    /// sorted
    var dates: [Date] {
        return map{$0.date}.sorted()
    }
    var minDate: Date? {
        return dates.first
    }
    var maxDate: Date? {
        return dates.last
    }
    
    var sortedByDate: [E] {
        return sorted(by: {$0.date < $1.date})
    }
    var unitWithMinDate: E? {
        return sortedByDate.first
    }
    var unitWithMaxDate: E? {
        return sortedByDate.last
    }
}

