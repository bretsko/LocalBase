


public protocol HasSatisfiablesP: CanBeSatisfiedP {
    var satisfiables: [CanBeSatisfiedP] {get}
}

public extension HasSatisfiablesP {
    // CanBeSatisfiedP
    var isSatisfied: Bool {
        return satisfiables.allSatisfy{$0.isSatisfied}
    }
    var numSatisfied: Int {
        return satisfiables.count{$0.isSatisfied}
    }
    var numUnsatisfied: Int {
        return satisfiables.count{!$0.isSatisfied}
    }
    
    var percentSatisfied: Double {
        return numSatisfied.d / satisfiables.len.d
    }
}



