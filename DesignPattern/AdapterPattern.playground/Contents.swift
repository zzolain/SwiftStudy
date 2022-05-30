import Foundation

protocol Duck {
    func quack()
    func fly()
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

class TurkeyAdapter: Duck {
    let turkey: Turkey
    
    init(turkey: Turkey) {
        self.turkey = turkey
    }
    
    func quack() {
        turkey.gobble()
    }
    
    func fly() {
        // If Turkey.fly has differences from Duck.fly,
        // Adapt it to Duck.fly
        for i in 0..<5 {
            turkey.fly()
        }
    }
}

func test() {
    let duck = MallardDuck()
    let turkey = WildTurkey()
    let turkeyAdapter: Duck = TurkeyAdapter(turkey: turkey)
    
    print("The Turkey says...")
    turkey.gobble()
    turkey.fly()
    print("\n")
    print("The Duck says...")
    duck.quack()
    duck.fly()
    print("\n")
    print("The TurkeyAdapter says...")
    testDuck(duck: turkeyAdapter)
    
}

func testDuck(duck: Duck) {
    duck.quack()
    duck.fly()
}
    
test()
