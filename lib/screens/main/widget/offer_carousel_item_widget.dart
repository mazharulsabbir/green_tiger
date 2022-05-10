import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/constraints/index.dart';

class OfferCarouselItemWidget extends StatelessWidget {
  const OfferCarouselItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: Get.width * 0.5,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Text(
                  'Super Flash Sale',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(
                width: Get.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    TimerWidget(),
                    TimerColonWidget(),
                    TimerWidget(),
                    TimerColonWidget(),
                    TimerWidget()
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: Get.width * 0.4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(bikeImage),
          ),
        ),
      ],
    );
  }
}

class TimerColonWidget extends StatelessWidget {
  const TimerColonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Text(
          ':',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class TimerWidget extends StatelessWidget {
  const TimerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(
          '20',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
