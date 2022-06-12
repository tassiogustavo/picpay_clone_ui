class ActivityModel {
  final String name;
  final String acao;
  final String valor;
  final int diasAtras;
  final int qtdComents;
  final int likes;
  final String imgUrl;

  ActivityModel({
    required this.name,
    required this.acao,
    required this.valor,
    required this.diasAtras,
    required this.qtdComents,
    required this.likes,
    required this.imgUrl,
  });
}

List<ActivityModel> activityModel = [
  ActivityModel(
    name: " Pix",
    acao: 'enviou um',
    valor: '19,90',
    diasAtras: 1,
    qtdComents: 2,
    likes: 4,
    imgUrl: "https://logospng.org/download/pix/logo-pix-icone-512.png",
  ),
  ActivityModel(
    name: " Pix",
    acao: 'enviou um',
    valor: '40,24',
    diasAtras: 3,
    qtdComents: 12,
    likes: 9,
    imgUrl: "https://logospng.org/download/pix/logo-pix-icone-512.png",
  ),
  ActivityModel(
    name: " Pagou uma Conta",
    acao: '',
    valor: '5,66',
    diasAtras: 3,
    qtdComents: 2,
    likes: 15,
    imgUrl: "https://www.pngarts.com/files/8/Barcode-Scan-PNG-Image.png",
  ),
  ActivityModel(
    name: " Recarga de Celular",
    acao: 'efetuou',
    valor: '10,00',
    diasAtras: 4,
    qtdComents: 1,
    likes: 0,
    imgUrl: "https://d9hhrg4mnvzow.cloudfront.net/99app.com/99pay-launch-v02/bfa15142-celular-recarga-v02_10el09p000000000000028.png",
  ),
  ActivityModel(
    name: " Pix",
    acao: 'enviou um',
    valor: '6,64',
    diasAtras: 4,
    qtdComents: 15,
    likes: 0,
    imgUrl: "https://logospng.org/download/pix/logo-pix-icone-512.png",
  ),
  ActivityModel(
    name: " Guardar Dinheiro",
    acao: 'acabou de ',
    valor: '500,00',
    diasAtras: 5,
    qtdComents: 0,
    likes: 7,
    imgUrl: "https://w1.pngwing.com/pngs/203/698/png-transparent-green-grass-saving-savings-account-bank-money-piggy-bank-savings-bank-finance-thumbnail.png",
  ),
  ActivityModel(
    name: " Pix",
    acao: 'enviou um',
    valor: '20,20',
    diasAtras: 10,
    qtdComents: 1,
    likes: 0,
    imgUrl: "https://logospng.org/download/pix/logo-pix-icone-512.png",
  ),
];
