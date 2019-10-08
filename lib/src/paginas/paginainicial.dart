import 'package:flutter/material.dart';
import 'package:peliculas/src/widgets/card_swiper_widget.dart';
class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
                  appBar: AppBar(title: Text('Películas en cines'),
      backgroundColor: Colors.indigoAccent,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        )
      ],
      ),
    body: Container(
      child: Column(
        children: <Widget>[
          swiperTarjetas()
        ],
      )
    )
  );
}
Widget swiperTarjetas(){
  return CardSwiper(
    peliculas:[1,2,3,4,5],
  );
}
}
