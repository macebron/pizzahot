## Diseño de la base de datos Pizza Hot
Crearemos una base de datos que controle los ingredientes que tiene cada una
1. Crear 10 pizzas diferentes
    Margherita
    Marinara
    Prosciutto e funghi
    Quattro Stagioni
    Capricciosa
    Quattro Formaggi
    Ortolana / Vegetariana
    Diavola
    Boscaiola
    Frutti di Mare
    hawaiana
    barbacoa
    carbonara
    Nueces y cebolla
    tonno

2. Ingredientes :
    salsa de tomate
    tomates cherry
    piña
    mozzarella
    gorgonzola
    queso de cabra
    gouda
    emmental
    tofu
    aceitunas negras
    aceitunas verdes
    pepperoni
    salami
    pimientos morrones
    pimientos verdes
    cebolla
    bacon
    jamón york
    procciuto
    pollo
    ternera
    atun
    salmon
    anchoas
    nueces
    oregano
    albahaca
    salvia
    ajo
    champiñones
    gambas
    mejillones 

    aceite de oliva
    parmesano
    alcachofas
    fontina
    nata
    guindilla picante


3. 
Margherita: salsa de tomate, mozzarela,orégano
    Marinara : salsa de tomate, ajo, orégano, albahaca
    Prosciutto e funghi: salsa de tomate, proscitto, champiñon, mozzarella
    Quattro Stagioni: alchachofas, salsa de tomate,albahaca,champiñones,prosciutto,aceitunas,
    Capricciosa: mozzarela,prosciutto,alcachofas,anchoas, champiñones
    Quattro Formaggi:mozzarella. gorgonzola, fontina,parmesano
    Vegetariana: pimiento verde, cebolla, champiñones, aceitunas,mozzarella, tomate
    Diavola: pepperoni,salsa de tomate,guindilla,mozzarella, emental, albahaca
    Boscaiola:champiñones,tomates cherry, pepperoni, albahaca, mozzarella
    Frutti di Mare:mejillones,gambas,salsa de tomate,
    hawaiana: piña, jamon york, mozzarella, salsa de tomate
    barbacoa: ternera, bacon, salsa barbacoa,mozzarella
    carbonara: nata, bacon, champiñon, mozzarella, cebolla
    Nueces y cebolla: nueces,cebolla, mozzarella
    tonno: atun, tomate, cebolla,ajo

1. Estructura de tabla pizzas
Nombre pizza
precio
imagen varchar default 'default.jpg'
2. estructura de la tabla ingredientes
-ingrediente
 -tipo(enum: 'vegetal', 'carne', 'pescado', 'lácteos','condimentos')
-activo default 1
3. Tabla pizzasIngredientes
id pizza
id ingrediente



Consultas:
1. Lista los ingredientes de la pizza margarita
2. Cuenta el numero de pizzas con tomate
3. Dime las pizzas sin tomate
4. Pizzas con pescado
5. pizzas sin queso
6. pizzas veganas
7. pizzas que no tengan ni carne ni pescado
8. pizzas con carne
9. Lista el número de ingredientes que sean carne


