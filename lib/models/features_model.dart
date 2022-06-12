class FeaturesModel {
  final String name;
  final String imgUrl;

  FeaturesModel({
    required this.name,
    required this.imgUrl,
  });
}

List<FeaturesModel> featureData = [
  FeaturesModel(
    name: "Use Maquininha",
    imgUrl: "https://pandapag.com.br/wp-content/uploads/2020/01/ElementoPanda_Header.png",
  ),
  FeaturesModel(
    name: "Pix",
    imgUrl: "https://logospng.org/download/pix/logo-pix-icone-512.png",
  ),
  FeaturesModel(
    name: "Pagar Conta",
    imgUrl: "https://www.pngarts.com/files/8/Barcode-Scan-PNG-Image.png",
  ),
  FeaturesModel(
    name: "Recarga de Celular",
    imgUrl: "https://d9hhrg4mnvzow.cloudfront.net/99app.com/99pay-launch-v02/bfa15142-celular-recarga-v02_10el09p000000000000028.png",
  ),
  FeaturesModel(
    name: "Guardar Dinheiro",
    imgUrl: "https://w1.pngwing.com/pngs/203/698/png-transparent-green-grass-saving-savings-account-bank-money-piggy-bank-savings-bank-finance-thumbnail.png",
  )
];
