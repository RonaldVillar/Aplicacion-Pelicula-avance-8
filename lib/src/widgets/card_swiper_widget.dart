import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
class CardSwiper extends StatelessWidget {
  final List<dynamic>peliculas;
  CardSwiper({ @required this.peliculas}); 
  // ↑ @required obliga que muestre la Lista de películas
  @override
  Widget build(BuildContext context) {
    final _screenSize=MediaQuery.of(context).size; //Esto ayuda a cambiar el ancho y alto de la tarjeta
    return Container(
    padding: EdgeInsets.only(top:21.0), //Separación superior al inicio.
        child:Swiper(
        layout: SwiperLayout.STACK, //Especificamos el diseño del Swiper.
        itemWidth: _screenSize.width* 0.7,
        // ↑ Especificamos que el ancho del diseño de la tarjeta será el 50% de la pantalla.
        itemHeight: _screenSize.height*0.5, 
        // ↑ Especificamos que el alto del diseño de la tarjeta será el 50% de la pantalla.
        itemBuilder: (BuildContext context,int index){
          return new ClipRRect(
            borderRadius: BorderRadius.circular( 20.0),
            child: Image.network("http://via.placeholder.com/350x150",fit: BoxFit.cover)
          );
        },
        itemCount: peliculas.length,
       //pagination: new SwiperPagination(),
       // control: new SwiperControl(),
      ),
  );
  }
}

