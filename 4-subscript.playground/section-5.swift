class WriteOnlyWannabe {
    subscript(whatever: String) -> String {
        get { return "" }
        set { println("\(newValue)") }
    }
}

WriteOnlyWannabe()["doesn't matter"] = "to be printed"