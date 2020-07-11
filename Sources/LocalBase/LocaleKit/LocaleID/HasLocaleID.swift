

public protocol HasLID: HasLocale {
    
    var lid: LID {get}
}
public extension HasLID {
    
    var locale: Locale {
        lid.locale
    }
}


public extension HasAllFormsT where Self: HasLID {
    
    /// allForms.map{$0.lid}.set
    static var lids: Set<LID> {
        allForms.map{$0.lid}.set
    }
}



//MARK: -

public extension Array where Element: HasLID {
    
    var lids: [LID] {
        map{$0.lid}
    }
    var lidSet: Set<LID> {
        map{$0.lid}.set
    }
    
    
    /// filter {$0.lid == lid}
    func filter(with lid: LID) -> Array {
        filter {$0.lid == lid}
    }
    /// filter {$0.lid != lid}
    func filter(without lid: LID) -> Array {
        filter {$0.lid != lid}
    }
}

public extension Set where Element: HasLID {
    
    var lids: Set<LID> {
        map{$0.lid}.set
    }
    
    /// filter {$0.lid == lid}
    func filter(with lid: LID) -> Set {
        filter {$0.lid == lid}.set
    }
    /// filter {$0.lid != lid}
    func filter(without lid: LID) -> Set {
        filter {$0.lid != lid}
    }
}
