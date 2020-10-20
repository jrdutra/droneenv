class CardinalPointsService {

  String getCardinalPointByDegree(double degree){

    if(degree < 0){
      return "ERR";
    }

    List<String> cardinalPoints = ["N","NNE","NE","ENE","E","ESE","SE","SSE","S","SSO","SO","OSO","O","ONO","NO","NNO"];

    double comparator = 0.0;
    double step = 22.5;

    for(final cadinalPoint in cardinalPoints){
        if(degree <= comparator){
          return cadinalPoint;
        }
        comparator += step;
    }

    return "ERR";
  }

}