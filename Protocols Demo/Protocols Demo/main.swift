//
//  main.swift
//  Protocols Demo
//
//  Created by user202406 on 3/14/22.
//

class Bird{
    var isFemale = true;
    func fly()  {
        print("The bird flaps its wings and lifts off into the sky")
    }
    func layEgg(){
        if isFemale{
            print("The bird makes a new bird in a shell")
        }
        
    }
}
class Eagle: Bird {
    func soar(){
        print("The eagle glides in the air using air currents")
    }
}
class Penguin: Bird {
    func swim(){
        print("The penguin paddles through the water")
    }
}
let myEagle = Eagle();
myEagle.fly();
myEagle.layEgg();
myEagle.soar();
let myPenguin =  Penguin();
myPenguin.swim();
myPenguin.layEgg();
//some functionality can lead to unintended consequences.
//penguin can't fly
myPenguin.fly()
//we don't need to inherit
struct FlyingMuseum{
    //flyingObject of type Bird(class)
    func flyingDemo(flyingObject:Bird
    ) {
        flyingObject.fly();
    }
}
let museum = FlyingMuseum();
museum.flyingDemo(flyingObject: myEagle)
//some functionality can lead to unintended consequences.
//all birds can't fly
museum.flyingDemo(flyingObject: myPenguin);
class AirPlane:Bird {
    override func fly() {
        print("The airplane uses its engine to lift off into the air.")
    }
}
let myPlane = AirPlane();
myPlane.fly();
//some functionality can lead to unintended consequences.myPlane.layEgg()
