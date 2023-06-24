//Video 191
import Foundation

class Animal {
    var name: String
    
    init(n: String) {
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breathUnderWater() {
        print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")

let neighbours = [angela, jack, nemo]

if neighbours[0] is Human {
    print("First Neighbour is Human")
}

if jack is Human {
    print("First Neighbour is Human")
}

if neighbours[2] is Human {
    print("First Neighbour is Human")
} else {
    print("no")
}

func findNemo1(from animals: [Animal]) {
    for animal in animals {
            print(animal.name)}}
findNemo1(from: neighbours)

//TYPE CHECKING:IS
//let cell = UITableViewCell()
//if cell is UITableViewCell {
//    print("The types match!")
//}
 

func findNemo2(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)}}} //sé que el type de este animal es Fish
findNemo2(from: neighbours)

//FORCE DOWNCAST: AS!
//let messageCell = cell as! MessageCell
//Cons: Debes estar muy seguro de que se puede downcastear, sino usar AS? (Downcastear a un OPTIONAL)

func findNemo3(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name) //sé que el type de este animal es Fish
            //animal.breathUnderWater()}}} //pero no puedo pedirle esto a animal xq a pesar de que este animal es un pez, sigue siendo type Animal, entonces no se nos permite ingresar a la func del pez. Para eso, forzamos el downcasting: Casteamos la Class Animal a ser Subclass Fish.
        }}}
findNemo3(from: neighbours)

func findNemo4(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish4 = animal as! Fish //Casteamos la Class Animal a ser Subclass Fish.
            print("fish4")
            fish4.breathUnderWater()}}}
findNemo4(from: neighbours)

//Cons: Debes estar muy seguro de que se puede downcastear, sino usar AS? (Downcastear a un OPTIONAL)

//AS?
//if let messageCell = cell as? MessageCell {
//    //Then can use messageCell's capabilities
//}

//let fish = neighbours[1] as! Fish //Jack está definido como Class Human, no Fish. Al escribir el código no hay alertas y parece que no hay error, pero falla al ejecutarlo (le rompe al usuario en la mano). Si no estoy segura, usar AS? que downcastea a una subclass pero opcional:
//let fish5 = neighbours[1] as? Fish
//fish5?.breathUnderWater()
//Si no quiero usar el opcional chaining (fish?.) si fish is not nil, usar ese método, usar opcional bind (if):
if let humano1 = neighbours[2] as? Human {
    print("humano1")
    humano1.code()
} else {
    print("Casting has failed")
}
    
// UPCAST: AS
//No lleva signo !? porque siempre va a funcionar (siempre y cuando la Subclass herede de la Class en cuestión.
// let newCell = messageCell as UITableViewCell
func findNemo5(from animals: [Animal]) {
    for animal in animals {
        if animal is Fish {
            print(animal.name)
            let fish5 = animal as! Fish //Downcasteamos la Class Animal a ser Subclass Fish.
            print("fish5")
            fish5.breathUnderWater()
            let animalFish = fish5 as Animal}}} //Upcasteamos el fish de subclass Fish a Class Animal.
findNemo5(from: neighbours)


// Any > AnyObject > NSObject

//ANY: All objects
let arrayOfAnything:[Any] = [angela, jack, nemo, 12]
// angela: subclase Human y clase Animal
// nemo: subclase Fish y clase Animal
// 12: struct e Int

//ANYOBJECT: Objects derived from classes
let arrayOfAnyObject:[AnyObject] = [angela, jack, nemo, 12]
// Rompe porque Int (String, Double, Int) son STRUCTS

//NSOBJECT: Fundation objects, NSString NSNumber, NSData NSDate, JSONSerialization, DateFormatter, FileManager...
let arrayOfNSObject: [NSObject] = [angela]
// Rompe porque angela no es creada a partir de Foundations de Apple
