mapa.base <- function(left.lon, right.lon, bottom.lat, top.lat) {
   # --------------------------------------------------------------------------
   # Funcion que grafica mapa global y se define la región donde hacer zoom
   # --------------------------------------------------------------------------
   library("rworldmap",
           lib.loc = "/data/R-libs/x86_64-pc-linux-gnu-library/3.4")
   library("rworldxtra",
           lib.loc = "/data/R-libs/x86_64-pc-linux-gnu-library/3.4")
   library("maps",
           lib.loc = "/data/R-libs/x86_64-pc-linux-gnu-library/3.4")

   newmap <- getMap(resolution = "high")

   # En caso de tener que cambiar proyección a shp externo...
   # prueba de cambio
   proy <- "+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"

   plot(newmap, col = "lightgrey", border = "darkgray",
        xlim = c(left.lon, right.lon), ylim = c(bottom.lat, top.lat),
        bg = "aliceblue",
        asp = 1)

   map.axes(cex.axis = 0.9)
  }
