# FOMA - Manual de Usuario

FOMA cuenta con una sintaxis bastante simple, y lo suficientemente compleja para comenzar a familiarizarse con los lenguajes de programación más sofisticados.



### 1. Tipos de datos

FOMA cuenta con diferentes tipos de datos que se pueden manejar en la programación de este lenguaje.


|Tipo de dato| Nomenclatura |
|--|--|
| Entero | `int` |
| Flotante | `float` |
| Caracter | `char` |
| Booleano | `bool` |



### 2. Tipos de operadores  



#### Aritméticos
|Operador| Descripción |
|--|--|
| `/` | Division |
| `*`| Multiplicación |
| `%` (mod) | Residuo |
| `+` | Suma |
| `-` | Resta |



*\*Estos operadores mostrados en ambas tablas se encuentran ordenados por prioridad.*


#### Lógicos

|Operador| Descripción |
|--|--|
| `==` | Checa que sean iguales |
| `>` | Mayor que |
| `>=` | Mayor o igual que |
| `<` | Menor que |
| `<=` | Menor or igual que |
| `<>` | Checa que sean diferentes |
| `and` | Las dos opciones |
| `or` | Elige la opción de mayor prioridad |









### 3. Caracteres especiales



FOMA utiliza ciertos caracteres que le permiten al lenguaje entender algunas cosas en específico.

|Caracter| Descripción |
|--|--|
| `=` | Se utiliza para asignar un valor a una variable |
| `;` | Marca el final de un estatuto en un bloque de código |
| `.` | Se utiliza para invocar funciones o atributos de objetos |




### 4. Asignación y declaración de variables



Para declarar variables y asignarles un valor se debe escribir código de la siguiente manera:



    float decimal;   
    int uno = 1;    
    int suma = 1 + 1;
    char letra = “a”;   
    bool verdadero = true;



Igualmente, se pueden declarar arreglos y matrices. El número entre [ ] es la cantidad de valores que puede tener el arreglo/matriz. Dos ejemplos:



    float fArr[3];    
    fArr[0] = 1.0;    
    fArr[1] = 1.1;    
    fArr[2] = 1.2;    

    int iMat[2][2];    
    iMat[0][0] = 1;    
    iMat[1][0] = 2;    
    iMat[0][1] = 3;    
    iMat[1][1] = 4;  



*\*No es estrictamente necesario asignar un valor a las variables inmediatamente después de declararlas.*

### 5. Declaración y llamadas de funciones



Para declarar funciones se hace de la siguiente manera:



    function int Multiplicar(int param1, int param2)    
    start    
	    return param1 * param2;    
    end



*\*El código dentro de las funciones siempre debe iniciar con start y terminar con end.*
*\*No es necesario tener parámetros.*
*\*Las funciones void no deben de llevar return.*



Para llamar una función previamente declarada se hace de la siguiente manera:



    int a = 2;    
    int b = 5;    
    Multiplicar(a, b);



De la misma manera, se pueden asignar funciones como valores a otras variables:



    int resultado;    
    Resultado = Multiplicar(a, b);



### 6. Estatutos condicionales y de repetición



Comenzando con los estatutos condicionales, tenemos al if-else:



    if (0 < 1)    
    start    
	    //Codigo…    
    end
    else    
    start    
	    //Codigo…    
    end



*\*No es estrictamente necesario utilizar else.*



En seguida están los ciclos repetitivos, while  y for.




    while(true)
    start    
	    //Codigo…    
    end    

    for(int i = 1; i < 5; i = i +1)    
    start    
	    //Codigo…
    end  

### 7. Lectura y escritura para el usuario



El lenguaje soporta desplegar información al usuario, así como la captura de información desde el teclado.




Para leer desde el teclado (input):



    int a;    
    input(a);



Para desplegar información (print):



    print(“Hola mundo!”);
    print(a, “Hola mundo!”);  



*\*El segundo ejemplo de print muestra cómo se pueden imprimir varias cosas sin la necesidad de reescribir la función print.*



### 8. Clases

FOMA cuenta con la capacidad de escribir clases, cada una con sus atributos. Igualmente, cuenta con la funcionalidad de heredar ciertos atributos de otras clases ya existentes.

La estructura de las clases es la siguiente:



    class Person    
    start    
	    int edad; //atributo…          

	    Constructor1(int a) //constructor…    
	    start    
		    edad = a;    
	    end          

	    int metodo1(int a) //metodos...    
	    start    
		    //Codigo…    
	    end    
    end



*\*Solamente se puede agregar un constructor, y se pueden agregar cuantos métodos y atributos sean requeridos.*



Para las herencias se debe llevar la siguiente estructura:





    class Person    
    start    
	    //Codigo…    
    end    
    class Hijo inherits Person    
    start
        //Codigo…    
    end  



Para la declaración de objetos con cierta clase se debe realizar de la manera siguiente:



Person carlos;




Para llamar los métodos de los objetos declarados:

    Person carlos;
    carlos.metodo1(5);

### 9. El código

El código a escribir debe tener cierto orden para que pueda ser compilado y ejecutado de manera correcta. El orden es el siguiente:

> CLASES -> VARIABLES -> FUNCIONES -> PROGRAMA

Se requiere de un programa al final del código escrito, por ejemplo:



    class Person
    start
	    int iEdad; //Atributos...
	    char nombre;

	    setEdad(int iA) //Constructor...
	    start
		    iEdad = a;
	    end

	    void setNombre(char name) //Funciones...
	    start
		    nombre = name;
	    end
    end

    int iA = 5;
    int iArr[2];    
    int iArr[0] = 1;    
    int iArr[1] = 2;

    int suma(int iC, int iD)
    start    
	    return iC + iD;    
    end

    program Main
    start    
	    Person patricio;    
	    float fNumero = 1.0;

	    suma(iA, 5);   
	    if (iA > 20)
	    start
			//Codigo...    
	    end  
    end

### 10. Como utilizarlo

1. Descargar el codigo de github y desarchivarlo.
2. En la Terminal correr los siguientes comandos dentor de la carpeta del proyecto:
	
		antlr4ruby Foma.g

		ruby Main.rb <nombre_del_archivo>
	
3. Los archivos a compilar deben ser de texto.
