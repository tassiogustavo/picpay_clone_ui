import 'package:flutter/material.dart';
import 'package:recriando_picpay/models/activity_model.dart';

class ActivityItem extends StatelessWidget {
  const ActivityItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.network(activityModel[index].imgUrl),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Você ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      children: [
                        TextSpan(
                          text: activityModel[index].acao,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(text: activityModel[index].name),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Alguma descrição aqui na atividade',
                  style: TextStyle(fontSize: 17),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    'R\$ ${activityModel[index].valor}',
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    ' | ',
                    style: TextStyle(
                        fontSize: 13
                    ),
                  ),
                  const Icon(
                    Icons.lock,
                    size: 15,
                    color: Colors.black38,
                  ),
                  Text(
                    '${activityModel[index].diasAtras} dias atrás',
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    activityModel[index].qtdComents == 0 ? Icons.chat_bubble_outline : Icons.chat_bubble,
                    color: activityModel[index].qtdComents == 0 ? Colors.black38 : Colors.amber,
                  ),
                  Text(
                    activityModel[index].qtdComents.toString(),
                    style: const TextStyle(color: Colors.black38),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    activityModel[index].likes == 0 ? Icons.favorite_border_outlined : Icons.favorite_outlined,
                    color: activityModel[index].likes == 0 ? Colors.black38 : Colors.red,
                  ),
                  Text(
                    activityModel[index].likes.toString(),
                    style: const TextStyle(color: Colors.black38),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
