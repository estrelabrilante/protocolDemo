//
//  main.swift
//  Protocols Demo
//
//  Created by user202406 on 3/14/22.
//

protocol CanFly {
    //for everypne who can fly
    func fly()
}
class Bird{
    var isFemale = true;
    func layEgg(){
        if isFemale{
            print("The bird makes a new bird in a shell")
        }
        
    }
}
//adopts protocol and inherit Bird class
class Eagle: Bird ,CanFly{
    func fly() {
        print("The bird flaps its wings and lifts off into the sky")
    }
    func soar(){
        print("The eagle glides in the air using air currents")
    }
}
//can't fly so don't adopts protocol
class Penguin: Bird {
    func swim(){
        print("The penguin paddles through the water")
    }
}
struct  AirPlane:CanFly {
    func fly() {
        print("The bird flaps its wings and lifts off into the sky")
    }
};
struct FlyingMuseum{
    //flyingObject of data type CanFly(Protocol)
    func flyingDemo(flyingObject:CanFly
    ) {
        flyingObject.fly();
    }
};
let myEagle = Eagle();
myEagle.fly();
myEagle.layEgg();
myEagle.soar();
let myPenguin =  Penguin();
myPenguin.swim();
myPenguin.layEgg();
let museum = FlyingMuseum();
museum.flyingDemo(flyingObject: myEagle);
museum.flyingDemo(flyingObject: myPlane);
let myPlane = AirPlane();
myPlane.fly();


