import 'dart:ui';

import 'package:listado_pedidos/models/products_model.dart';

import 'models/ciudades_model.dart';

//En este archivo almacenamos el listado de ciudades, haciéndolo accesible para todos los archivos.
final List<CiudadesModel> listaCiudades = [
  CiudadesModel(
    1,
    "1000mil",
    "Londres",
    "Reino Unido",
    "Esta emblématica ciudad está situada al sureste de Inglaterra, justo en los dos márgenes del río Támesis. Fundada como Londinium en el año 43, es una de las ciudades más pobladas de Europa, y diríamos que del mundo. El clima de Londres es de tipo templado oceánico.",
    "https://www.hofmann.es/blog/wp-content/uploads/2017/11/1-Big-Ben.jpg",
  ),
  CiudadesModel(
    2,
    "234mil",
    "Escocia",
    "Reino Unido",
    "Escocia (en inglés, Scotland; en escocés, Scotland; en gaélico escocés, Alba) es el más septentrional de los cuatro países que forman el Reino Unido. Junto con Inglaterra y Gales, forma parte de la isla de Gran Bretaña, abarcando un tercio de su superficie total; además consta de más de 790 islas, unas 40 habitadas.",
    "https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/Escocia_Edimburgo_500px_80066529_Evan%20Hammonds_500px.jpg?itok=bH_K-9E7",
  ),
  CiudadesModel(
    3,
    "230mil",
    "Toronto",
    "Canada",
    "Toronto es la ciudad más grande de Canadá y la capital de la provincia de Ontario. A la orilla del lago Ontario, al sur del estado, es conocida como la ciudad más segura de América del Norte.",
    "https://upload.wikimedia.org/wikipedia/commons/6/65/Toronto_Skyline_Summer_2020.jpg",
  ),
  CiudadesModel(
    4,
    "142mil",
    "Vancouver",
    "Canada",
    "Es una ciudad de la costa pacífica de Canadá, ubicada en el suroeste de la provincia de Columbia Británica, entre el estrecho de Georgia y las Montañas Costeras. La ciudad fue llamada así en honor del capitán George Vancouver, un explorador inglés.",
    "https://nextdestinium.com/viajes-a-medida/wp-content/uploads/2018/03/Aerial_Sunset_Vancouver_d3_copy_1bb86ed0-1edc-4cda-841d-0b033ca0bb72.jpg",
  ),
  CiudadesModel(
    5,
    "342mil",
    "Nueva Delhi",
    "India",
    "El Territorio Capital Nacional de Nueva Delhi tiene un área total de 1483 km². Está situado entre la llanura Indo-Gangética y los montes Aravalis. La mayor parte del territorio está situado en la orilla oeste del río Yamuna. La ciudad está situada a una altitud entre los 213 y los 305 metros sobre el nivel del mar.",
    "https://media.gettyimages.com/id/541283954/es/foto/vida-de-ciudad-principal-bazar-paharganj-en-nueva-delhi-india.jpg?s=612x612&w=gi&k=20&c=xa8BfvJEGJbAquklv4GZY9OCMRyHtFs2DtKb8tBW_Ec=",
  ),
  CiudadesModel(
    6,
    "213mil",
    "Berlín",
    "Alemania",
    "La ciudad de Berlín está situada en el noroeste de Alemania, a orillas de los ríos Spree y Havel. Es la capital de la República Federal de Alemania y uno de los 16 Estados federales.",
    "https://a.cdn-hotels.com/gdcs/production99/d1929/6e1ec2a9-3215-49a3-be43-b409ef581652.jpg?impolicy=fcrop&w=800&h=533&q=medium",
  ),
  CiudadesModel(
    7,
    "137mil",
    "Múnich",
    "Alemania",
    "Una ciudad cosmopolita con corazón, encantadora y relajada, animada y a la vez soñadora: Munich es la capital del estilo de vida de Alemania y tiene una de las plazas más bonitas del país, Marienplatz, el centro de Munich con el Antiguo y el Nuevo Ayuntamiento.",
    "https://www.guiadealemania.com/wp-content/uploads/2009/08/Ciudad-de-Munich-760x500.jpg",
  ),
  CiudadesModel(
    8,
    "170mil",
    "Barcelona",
    "España",
    "Barcelona es la capital de Cataluña. Se encuentra situada en el noreste de España, a escasa distancia de Francia y de los Pirineos. La ciudad roza una población de 1.700.000 habitantes, siendo la ciudad más poblada de España por detrás de Madrid.",
    "https://img2.rtve.es/imagenes/ciudades-para-siglo-xxi-barcelona-ciudad-vertebrada-2/1561977573130.jpg",
  ),
  CiudadesModel(
    9,
    "360mil",
    "Madird",
    "España",
    "Capital de España y conocida habitualmente como Villa y Corte, Madrid es la mayor ciudad del país y la segunda de la Unión Europea, con una población de más de 3 millones de habitantes (más de 6 en el área metropolitana).",
    "https://www.barnes-madrid.com/images/titres_personnalises/-titre-aze4T.jpg",
  ),
  CiudadesModel(
    10,
    "210mil",
    "Sevilla",
    "España",
    "Es capital de la provincia de Sevilla y hoy en día cuenta con una población superior a los setecientos mil habitantes en un área de 140 kilómetros cuadrados. Sevilla posee un clima mediterráneo, lo cual hace que las temperaturas estén alrededor de los 30 grados centígrados en verano y cerca de los 14 en invierno.",
    "https://images.squarespace-cdn.com/content/v1/5a86b05bcf81e0af04936cc7/1657901179340-KUOF0AHLFCZYB9TCMXZL/setas-sevilla.jpg?format=1500w",
  )
];

final ciutatsLlista = [
  CiudadesModel(
    1,
    "1000mil",
    "Londres",
    "Regne Unit",
    "Aquesta emblemàtica ciutat està situada al sud-est d'Anglaterra, just als dos marges del riu Tàmesi. Fundada com a Londinium l'any 43, és una de les ciutats més poblades d'Europa, i diríem que del món. El clima de Londres és de tipus temperat oceànic.","https://www.hofmann.es/blog/wp-content/uploads/2017/11/1-Big-Ben.jpg",
  ),
  CiudadesModel(
    2,
    "234mil",
    "Escòcia",
    "Regne Unit",
    "Escòcia (en anglès, Scotland; en escocès, Scotland; en gaèlic escocès, Alba) és el més septentrional dels quatre països que formen el Regne Unit. Juntament amb Anglaterra i Gal·les, forma part de l'illa de Gran Bretanya, abastant un terç de la seva superfície total, a més consta de més de 790 illes, unes 40 habitades.",
    "https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/Escocia_Edimburgo_500px_80066529_Evan%20Hammonds_500px.jpg?itok=bH_K-9E7",
  ),
  CiudadesModel(
    3,
    "230mil",
    "Toronto",
    "Canada",
    "Toronto és la ciutat més gran del Canadà i la capital de la província d'Ontario. A la riba del llac Ontario, al sud de l'estat, és coneguda com la ciutat més segura d'Amèrica del Nord.",
    "https://upload.wikimedia.org/wikipedia/commons/6/65/Toronto_Skyline_Summer_2020.jpg",
  ),
  CiudadesModel(
    4,
    "142mil",
    "Vancouver",
    "Canada",
    "És una ciutat de la costa pacífica del Canadà, ubicada al sud-oest de la província de Columbia Britànica, entre l'estret de Geòrgia i les Muntanyes Costaneres. La ciutat va ser anomenada així en honor del capità George Vancouver, un explorador anglès.",
    "https://nextdestinium.com/viajes-a-medida/wp-content/uploads/2018/03/Aerial_Sunset_Vancouver_d3_copy_1bb86ed0-1edc-4cda-841d-0b033ca0bb72.jpg",
  ),
  CiudadesModel(
    5,
    "342mil",
   "Nova Delhi",
    "Índia",
    "El Territori Capital Nacional de Nova Delhi té una àrea total de 1483 km². Està situat entre la plana Indo-Gangètica i les muntanyes Aravalis. La major part del territori està situat a la riba oest del riu Yamuna. La ciutat està situada a una altitud entre els 213 i els 305 metres sobre el nivell del mar.",
    "https://media.gettyimages.com/id/541283954/es/foto/vida-de-ciudad-principal-bazar-paharganj-en-nueva-delhi-india.jpg?s=612x612&w=gi&k=20&c=xa8BfvJEGJbAquklv4GZY9OCMRyHtFs2DtKb8tBW_Ec=",
  ),
  CiudadesModel(
    6,
    "213mil",
    "Berlín",
    "Alemanya",
    "La ciutat de Berlín està situada al nord-oest d'Alemanya, a la vora dels rius Spree i Havel. És la capital de la República Federal d'Alemanya i un dels 16 Estats federals.",
    "https://a.cdn-hotels.com/gdcs/production99/d1929/6e1ec2a9-3215-49a3-be43-b409ef581652.jpg?impolicy=fcrop&w=800&h=533&q=medium",
  ),
  CiudadesModel(
    7,
    "137mil",
    "Munic",
    "Alemanya",
    "Una ciutat cosmopolita amb cor, encantadora i relaxada, animada i alhora somiadora: Munic és la capital de l'estil de vida d'Alemanya i té una de les places més boniques del país, Marienplatz, el centre de Munic amb l'Antic i el Nou Ajuntament.",
    "https://www.guiadealemania.com/wp-content/uploads/2009/08/Ciudad-de-Munich-760x500.jpg",
  ),
  CiudadesModel(
    8,
    "170mil",
    "Barcelona",
    "Espanya",
    "Barcelona és la capital de Catalunya. Es troba situada al nord-est d'Espanya, a poca distància de França i dels Pirineus. La ciutat frega una població de 1.700.000 habitants, sent la ciutat més poblada d'Espanya per darrere de Madrid. ",
    "https://img2.rtve.es/imagenes/ciudades-para-siglo-xxi-barcelona-ciudad-vertebrada-2/1561977573130.jpg",
  ),
  CiudadesModel(
    9,
    "360mil",
    "Madird",
    "Espanya",
    "Capital d'Espanya i coneguda habitualment com Villa i Corte, Madrid és la ciutat més gran del país i la segona de la Unió Europea, amb una població de més de 3 milions d'habitants (més de 6 a l'àrea metropolitana).",
    "https://www.barnes-madrid.com/images/titres_personnalises/-titre-aze4T.jpg",
  ),
  CiudadesModel(
    10,
    "210mil",
    "Sevilla",
    "Espanya",
    "És capital de la província de Sevilla i avui dia compta amb una població superior als set-cents mil habitants en una àrea de 140 quilòmetres quadrats. Sevilla té un clima mediterrani, la qual cosa fa que les temperatures estiguin al voltant dels 30 graus centígrads a estiu i prop dels 14 a l'hivern.",
    "https://images.squarespace-cdn.com/content/v1/5a86b05bcf81e0af04936cc7/1657901179340-KUOF0AHLFCZYB9TCMXZL/setas-sevilla.jpg?format=1500w",
  )
];

final List<CiudadesModel> citiesList = [
  CiudadesModel(
    1,
    "1000 thousand",
    "London",
    "Uinode Kingdom",
    "This emblematic city is located in the southeast of England, right on the two banks of the River Thames. Founded as Londinium in the year 43, it is one of the most populated cities in Europe, and we would say that in the world. London's climate is oceanic temperate type.",
    "https://www.hofmann.es/blog/wp-content/uploads/2017/11/1-Big-Ben.jpg",
  ),
  CiudadesModel(
    2,
    "234 thousand",
    "Scotland",
    "Uinode Kingdom",
    "Scotland (in English, Scotland; in Scots, Scotland; in Scottish Gaelic, Alba) is the northernmost of the four countries that make up the United Kingdom. Together with England and Wales, it is part of the island of Great Britain, covering a third of its total area; it also consists of more than 790 islands, some 40 of which are inhabited.",
    "https://lonelyplanetes.cdnstatics2.com/sites/default/files/styles/max_1300x1300/public/fotos/Escocia_Edimburgo_500px_80066529_Evan%20Hammonds_500px.jpg?itok=bH_K-9E7",
  ),
  CiudadesModel(
    3,
    "230 thousand",
    "Toronto",
    "Canada",
    "Toronto is the largest city in Canada and the capital of the province of Ontario. On the shores of Lake Ontario, in the south of the state, it is known as the safest city in North America.",
    "https://upload.wikimedia.org/wikipedia/commons/6/65/Toronto_Skyline_Summer_2020.jpg",
  ),
  CiudadesModel(
    4,
    "142 thousand",
    "Vancouver",
    "Canada",
    "It is a city on the Pacific coast of Canada, located in the southwestern province of British Columbia, between the Strait of Georgia and the Coastal Mountains. The city was named after Captain George Vancouver, an English explorer.",
    "https://nextdestinium.com/viajes-a-medida/wp-content/uploads/2018/03/Aerial_Sunset_Vancouver_d3_copy_1bb86ed0-1edc-4cda-841d-0b033ca0bb72.jpg",
  ),
  CiudadesModel(
    5,
    "342 thousand",
    "New Delhi",
    "India",
    "The National Capital Territory of New Delhi has a total area of ​​1,483 km². It is situated between the Indo-Gangetic Plain and the Aravalis Mountains. Most of the territory is situated on the west bank of the Yamuna River. The city is situated one altitude between 213 and 305 meters above sea level.",
    "https://media.gettyimages.com/id/541283954/es/foto/vida-de-ciudad-principal-bazar-paharganj-en-nueva-delhi-india.jpg?s=612x612&w=gi&k=20&c=xa8BfvJEGJbAquklv4GZY9OCMRyHtFs2DtKb8tBW_Ec=",
  ),
  CiudadesModel(
    6,
    "213 thousand",
    "Berlin",
    "Germany",
    "The city of Berlin is located in the north-west of Germany, on the banks of the Spree and Havel rivers. It is the capital of the Federal Republic of Germany and one of the 16 federal states.",
    "https://a.cdn-hotels.com/gdcs/production99/d1929/6e1ec2a9-3215-49a3-be43-b409ef581652.jpg?impolicy=fcrop&w=800&h=533&q=medium",
  ),
  CiudadesModel(
    7,
    "137 thousand",
    "Munich",
    "Germany",
    "A cosmopolitan city with a heart, charming and relaxed, lively and dreamy at the same time: Munich is the lifestyle capital of Germany and has one of the most beautiful squares in the country, Marienplatz, the center of Munich with the Old and the New City hall.",
    "https://www.guiadealemania.com/wp-content/uploads/2009/08/Ciudad-de-Munich-760x500.jpg",
  ),
  CiudadesModel(
    8,
    "170 thousand",
    "Barcelona",
    "Spain",
    "Barcelona is the capital of Catalonia. It is located in the northeast of Spain, a short distance from France and the Pyrenees. The city has a population of around 1,700,000 inhabitants, being the most populous city in Spain after Madrid. ",
    "https://img2.rtve.es/imagenes/ciudades-para-siglo-xxi-barcelona-ciudad-vertebrada-2/1561977573130.jpg",
  ),
  CiudadesModel(
    9,
    "360 thousand",
    "Madrid",
    "Spain",
    "Capital of Spain and commonly known as Villa y Corte, Madrid is the largest city in the country and the second in the European Union, with a population of more than 3 million inhabitants (more than 6 in the metropolitan area).",
    "https://www.barnes-madrid.com/images/titres_personnalises/-titre-aze4T.jpg",
  ),
  CiudadesModel(
    10,
    "210 thousand",
    "Seville",
    "Spain",
    "It is the capital of the province of Seville and today it has a population of over seven hundred thousand inhabitants in an area of ​​140 square kilometers. Seville has a Mediterranean climate, which means that temperatures are around 30 degrees Celsius in summer and about 14 in winter.",
    "https://images.squarespace-cdn.com/content/v1/5a86b05bcf81e0af04936cc7/1657901179340-KUOF0AHLFCZYB9TCMXZL/setas-sevilla.jpg?format=1500w",
  )
];

final List<ProductModel> listaProductos = [
  ProductModel(1, "Manzana", "Granjas verdes asociados", DateTime.parse("2002-12-10"), 220.23, "Muy buena manzana"),
  ProductModel(2, "Pera", "Buena Pera", DateTime.parse("2020-08-18"), 1002.44, "Estas peras se venden inmediatamente"),
  ProductModel(3, "Coca", "The Coca-Cola Company", DateTime.parse("2000-01-20"), 60.99, "Bebe siempre coca cola, SIEMPRE"),
  ProductModel(4, "Fanta", "The Coca-Cola Company", DateTime.parse("1987-11-03"), 19.23, "Mejor bebe coca, esta mas buena"),
  ProductModel(5, "Pepsi", "PepsiCo", DateTime.parse("2001-06-21"), 50.99, "No bebas pepsi bebé COCACOLA"),
  ProductModel(6, "Waifu", "JAPAN-UNITED", DateTime.parse("2017-12-10"), 674.99, "Si te sientes muy solo y no quieres una cocacola, nosotros tenemos el preoducto perfecto."),
  ProductModel(7, "Teclado gaming", "Razer", DateTime.parse("2012-09-11"), 99.99, "Mejor teclado del mercado"),
  ProductModel(8, "Pantalla gaming", "Razer", DateTime.parse("2012-10-01"), 249.95, "Mejor pantalla gaming de la historia (recomendado 100% por profesionales)"),
  ProductModel(9, "Silla gaming", "Razer", DateTime.parse("2012-10-02"), 399.99, "Silla gaming con bebidas energeticas incluidas una vez te sientes no hace falta que vuelvas a dormir."),
  ProductModel(10, "Póster gaming", "Razer", DateTime.parse("2013-01-29"), 67.32, "Poster de lo mejor, mas si eres streamer, pontelo en el fondo de los streams, QUE TUS MILES DE SEGUIDORES NOS COMPREN TAMBIEN"),
  ProductModel(11, "Alfombrilla gaming", "Razer", DateTime.parse("2013-02-09"), 9887.88, "Alfombrilla gaming con leds hecha de cocodrilos"),
];

final List<ProductModel> llistaProductes = [
  ProductModel(1, "Poma", "Granges verdes associats", DateTime.parse("2002-12-10"), 220.23, "Molt bona poma"),
  ProductModel(2, "Pera", "Buena Pera", DateTime.parse("2020-08-18"), 1002.44, "Aquestes peres es venen immediatament"),
  ProductModel(3, "Coca", "The Coca-Cola Company", DateTime.parse("2000-01-20"), 60.99, "Beu sempre coca, SEMPRE"),
  ProductModel(4, "Fanta", "The Coca-Cola Company", DateTime.parse("1987-11-03"), 19.23, "Millor beu coca, aquesta més bona"),
  ProductModel(5, "Pepsi", "PepsiCo", DateTime.parse("2001-06-21"), 50.99, "No beguis pepsi beu COCACOLA"),
  ProductModel(6, "Waifu", "JAPAN-UNITED", DateTime.parse("2017-12-10"), 674.99, "Si et sents molt sol i no vols una coca cua, nosaltres tenim el preoducte perfecte"),
  ProductModel(7, "Teclat gaming", "Razer", DateTime.parse("2012-09-11"), 99.99, "Millor teclat del mercat"),
  ProductModel(8, "Pantalla gaming", "Razer", DateTime.parse("2012-10-01"), 249.95, "Millor pantalla gaming de la història (recomanat 100% per professionals)"),
  ProductModel(9, "Cadira gaming", "Razer", DateTime.parse("2012-10-02"), 399.99, "Cadira gaming amb begudes energètiques incloses un cop et sents no cal que tornis a dormir"),
  ProductModel(10, "Poster gaming", "Razer", DateTime.parse("2013-01-29"), 67.32, "Pòster del millor, mes si ets streamer, posa't al fons dels streams, QUE ELS TEUS MILERS DE SEGUIDORS ENS COMPREN TAMBÉ"),
  ProductModel(11, "Estoreta gaming", "Razer", DateTime.parse("2013-02-09"), 9887.88, "Estoreta gaming amb leds feta de cocodrils"),
];

final List<ProductModel> productsList = [
  ProductModel(1, "Apple", "Granjas verdes asociados", DateTime.parse("2002-12-10"), 220.23, "Very good apple"),
  ProductModel(2, "Pear", "Buena Pera", DateTime.parse("2020-08-18"), 1002.44, "These pears are sold immediately"),
  ProductModel(3, "Coca", "The Coca-Cola Company", DateTime.parse("2000-01-20"), 60.99, "Always drink Coke, ALWAYS"),
  ProductModel(4, "Fanta", "The Coca-Cola Company", DateTime.parse("1987-11-03"), 19.23, "Better drink coke, it's better"),
  ProductModel(5, "Pepsi", "PepsiCo", DateTime.parse("2001-06-21"), 50.99, "Don't drink Pepsi drink COCACOLA"),
  ProductModel(6, "Waifu", "JAPAN-UNITED", DateTime.parse("2017-12-10"), 674.99, "If you feel very lonely and don't want a Coke, we have the perfect product"),
  ProductModel(7, "Gaming keyboard", "Razer", DateTime.parse("2012-09-11"), 99.99, "Best keyboard on the market"),
  ProductModel(8, "Gaming screen", "Razer", DateTime.parse("2012-10-01"), 249.95, "Best gaming screen ever (100% recommended by professionals)"),
  ProductModel(9, "Gaming chair", "Razer", DateTime.parse("2012-10-02"), 399.99, "Gaming chair with energy drinks included once you sit down you don't need to go back to sleep"),
  ProductModel(10, "Gaming posters", "Razer", DateTime.parse("2013-01-29"), 67.32, "Poster of the best, but if you are a streamer, put it at the bottom of the streams, MAY YOUR THOUSANDS OF FOLLOWERS BUY US TOO"),
  ProductModel(11, "Gaming mat", "Razer", DateTime.parse("2013-02-09"), 9887.88, "Gaming mousepad with leds made of crocodiles"),
];

Map<String,List<CiudadesModel>> ciudadesMap =  {
  'en':citiesList,
  'es':listaCiudades,
  'ca':ciutatsLlista
};

Map<String,List<ProductModel>> productsMap = {
  "en":productsList,
  "es":listaProductos,
  'ca':llistaProductes,
};

late Locale globalLocale;