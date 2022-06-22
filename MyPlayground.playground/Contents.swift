import Foundation

        //RETO
        
struct Persona{
    let nombre:String
    let apellidop:String
    let apellidom:String
    let fechanac:String
    let dni:Int64
    let hermanos:Int8
    var usuario:String?
}

let persona1 = Persona(nombre: "CARLOS JOSÉ", apellidop: "ROBLES", apellidom: "GOMES", fechanac: "06/08/1995", dni: 78451245, hermanos: 2, usuario: "carlos.roblesg@hotmail.com")

let persona2 = Persona(nombre: "MIGUEL ANGEL", apellidop: "QUISPE", apellidom: "OTERO", fechanac: "28/12/1995", dni: 79451654, hermanos: 0, usuario: "miguel.anguel@gmail.com")

let persona3 = Persona(nombre: "KARLA ALEXANDRA", apellidop: "FLORES", apellidom: "ROSAS", fechanac: "15/02/1997", dni: 77485812, hermanos: 1, usuario: "Karla.alexandra@hotmail.com")

let persona4 = Persona(nombre: "NICOLAS", apellidop: "QUISPE", apellidom: "ZEBALLOS", fechanac: "08/10/1990", dni: 71748552, hermanos: 1, usuario: "nicolas123@gmail.com")

let persona5 = Persona(nombre: "PEDRO ANDRE", apellidop: "PICASSO", apellidom: "BETANCUR", fechanac: "17/05/1994", dni: 74823157, hermanos: 2, usuario: "pedroandrepicasso@gmail.com")

let persona6 = Persona(nombre: "FABIOLA MARIA", apellidop: "PALACIO", apellidom: "VEGA", fechanac: "02/02/1992", dni: 76758254, hermanos: 2, usuario: "fabi@hotmail.com")




let personas:[Persona] = [persona1,persona2,persona3,persona4,persona5,persona6]



/*- Obtener la persona con mayor y menor edad
- Obtener dos listas más, una para hombres y otra mara mujeres e imprimir la cantidad de personas que hay en cada lista
- Obtener una lista de todas las personas que tienen más de dos hermanos
- Imprimir cada persona con este formato “Luis Inga M.” Solo primer nombre, ape pate completo y solo la inicial del ape mate más un punto. *Y EN CAPITALIZE* (primera letra de cada palabra en mayúscula y todo lo demás en minúscula)
- Crear usuarios a todas las personas y guardar en la lista.
*/



//Cálculo del mayor y menor
func calcAge(birthday: String) -> Int {
    let dateFormater = DateFormatter()
    dateFormater.dateFormat = "dd/MM/yyyy"
    let birthdayDate = dateFormater.date(from: birthday)
    let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
    let now = Date()
    let calcAge = calendar.components(.year, from: birthdayDate!, to: now, options: [])
    let age = calcAge.year
    return age!
}
var mayor : Int=0
var menor : Int=100
var t : Int
var t2 : Int
var nombremayor : String=""
var nombremenor : String=""

for(index,valor) in personas.enumerated(){
    
    t = calcAge(birthday: "\(valor.fechanac)")
    if t > mayor {
        mayor=t
        nombremayor = valor.nombre
    }
   
    else if t < menor {
        menor=t
        nombremenor = valor.nombre
    }

}
print("\(nombremayor) es mayor que todos con \(mayor) años")
print("\(nombremenor) es menor que todos con \(menor) años")


// Lista de hombres y mujeres

var arrayhombres : [Persona]=[persona1,persona2,persona4,persona5]
var arraymujeres : [Persona]=[persona3,persona6]

print("Hay \(arrayhombres.count) hombres en el grupoo")
print("Hay \(arraymujeres.count) mujeres en el grupoo")


//lista de personas que tienen mas de 2 hermanos
var c : Int8=0
for(index,valor) in personas.enumerated(){
    valor.hermanos
    if valor.hermanos >= 2{
        c += 1
    }
}
print("Hay \(c) personas que tienen 2 o más hermanos")


//Crear formato de nombre. Ejemplo  “Luis Inga M.”
for(index,valor) in personas.enumerated(){

    valor.nombre
    valor.apellidop
    valor.apellidom
    let nom = valor.nombre
    let r = nom.split(separator: " ")
    let apem = valor.apellidom
    let r2 = apem.components(separatedBy: "")
    print(r.first , valor.apellidop, r2.first)
    
}

//Crear usuario
