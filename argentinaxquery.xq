for $coord in doc("argentina.xml")//coordenadas
return concat("Latitud: ", $coord/latitud/text(), ", Longitud: ", $coord/longitud/text()),
for $foto in doc("argentina.xml")//fotografia
return concat("Nombre: ", $foto/nombre/text(), ", Descripción: ", $foto/descripcion/text()),
for $foto in doc("argentina.xml")//fotografia[empty(url) or not(url)]
return concat("Nombre: ", $foto/nombre/text(), ", Descripción: ", $foto/descripcion/text())
