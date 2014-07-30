operator prefix ♥ {}
operator postfix ☕ {}
@prefix func ♥ <T> (value: T) -> String { return "I love \(value)" }
@postfix func ☕ <T> (value: T) -> String { return "\(value) but I need some coffee!" }

♥"Swift"☕