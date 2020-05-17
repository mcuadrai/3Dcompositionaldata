// Persistence Of Vision raytracer version 2.0 sample file.

// Por   Mario de la Cuadra I.
//    &  Christian Sifaqui M. (Profesor Gu¡a)
//  Universidad Cat¢lica de Valpara¡so (UCV)

#include "shapes.inc"
#include "colors.inc"
#include "shapes2.inc"
#include "textures.inc"
#include "puntos.inc"

//ubicacion de la camara
//   y   z
//   | /
//   |---->   x
camera {
   location <-0.6, 0.3333, 2.50>
   look_at < -0.6, 0.3333, 0.4>
   up <0.0, 1.0, 0.0>
//   right <4/3, 0.0, 0.0>
}


// caracteristica del tetrahedro
//
#declare Tetra = object {
   Tetrahedron

   texture { Glass3 }
   finish {
      crand 0.01
      ambient 0.1
      diffuse 0.7
      reflection 0.4
      brilliance 6.0
      refraction 1.0
      ior 1.5
   }
}

object { Tetra
     translate <0.000,0.000,1.000>
     translate <0.000,1.000,0.000>
     scale <.3, .3, .3>
     translate <0.612372435,0.0,0.0>
     translate <-1.22,0.0,0.0>
}

plane { y, -50.0
   pigment {
      checker colour Gray15 colour Gray95
      quick_color Blue
      scale 40.0
   }
   finish {
      crand 0.01
      ambient 0.3
      diffuse 0.7
      reflection 0.1
      brilliance 3.0
   }
}
// Luces del fondo
light_source { < 10.0, 15.0, -100.0> colour White }
light_source { < -10.0, 15.0, -100.0> colour White }
// Luz horizontal hacia el fondo
//light_source { < 0.0, -40.0, -150.0> colour White }
//Luces de adelante
light_source { < 5.0, 1.0, 10.0> colour White }
light_source { <-5.0, 1.0, 10.0> colour White }

//
// definiendo puntos
//
