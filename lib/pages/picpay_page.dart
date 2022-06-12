import 'package:flutter/material.dart';
import 'package:recriando_picpay/models/activity_model.dart';
import 'package:recriando_picpay/models/features_model.dart';
import 'package:recriando_picpay/widgets/activity_item.dart';
import 'package:recriando_picpay/widgets/bottom_manu_widget.dart';
import 'package:recriando_picpay/widgets/button_tab_widget.dart';
import 'package:recriando_picpay/widgets/history_widget.dart';

class PicPayPage extends StatelessWidget {
  const PicPayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (notification) {
            notification.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildAppBar(context),
                buildHistory(),
                const SizedBox(
                  height: 10,
                ),
                buildPromotion(),
                const SizedBox(
                  height: 10,
                ),
                buildActivits(),
                ListView.builder(
                    itemCount: activityModel.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, index) {
                      return ActivityItem(index: index,);
                    })
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 100,
        color: Colors.transparent,
        padding: const EdgeInsets.only(bottom: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.attach_money,
                color: Colors.white70,
              ),
            ),
            const Text(
              'Pagar',
              style: TextStyle(
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: buildBottomBar(),
    );
  }

  Widget buildBottomBar() {
    return Container(
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 0.5, color: Colors.black38))),
      height: 50,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Expanded(
                  child: BottomMenu(
                    isSelected: true,
                    icon: Icons.home_filled,
                    text: 'Início',
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.account_balance_wallet_outlined,
                    text: 'Carteira',
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 2,
            child: Row(
              children: const [
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.notifications_none,
                    text: 'Notificações',
                  ),
                ),
                Expanded(
                  child: BottomMenu(
                    isSelected: false,
                    icon: Icons.shopping_bag_outlined,
                    text: 'Store',
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildActivits() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: const [
          Text(
            'Atividades',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Spacer(),
          ButtonTab(
            isSelected: false,
            text: 'Todos',
            color: Colors.green,
          ),
          ButtonTab(
            isSelected: true,
            text: 'Minhas',
            color: Colors.green,
          ),
        ],
      ),
    );
  }

  Widget buildPromotion() {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              const Icon(
                Icons.qr_code,
                color: Colors.green,
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Seleção especial"),
                  Text(
                    "Promoções disponíveis",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                size: 15,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHistory() {
    return Column(
      children: [
        Row(
          children: const [
            ButtonTab(
              isSelected: true,
              text: 'Sugestões',
            ),
            ButtonTab(
              isSelected: false,
              text: 'Favoritos',
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 120,
          margin: const EdgeInsets.only(left: 5),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (notificantion) {
              notificantion.disallowIndicator();
              return true;
            },
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return History(
                  feature: featureData[index].name,
                  imgUrl: featureData[index].imgUrl,
                );
              },
            ),
          ),
        )
      ],
    );
  }

  Widget buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.qr_code_outlined,
                  color: Colors.green,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.green,
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  const Text(
                    "Meu Saldo",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "R\$ 1.120,47",
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.card_giftcard_outlined,
                  color: Colors.green,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.maps_ugc_outlined,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'O que você quer pagar?',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
