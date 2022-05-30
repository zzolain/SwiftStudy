import Foundation

public protocol Duck {
    public func quack()
    public func fly()
}

class MallardDuck: Duck {
    func quack() {
        print("Quack")
    }
    
    func fly() {
        print("Flying")
    }
}

protocol Turkey {
    func gobble()
    
    func fly()
}

class WildTurkey: Turkey {
    func gobble() {
        print("Gobble gobble")
    }
    
    func fly() {
        print("Flying")
    }
}

class TurkeyAdapter
