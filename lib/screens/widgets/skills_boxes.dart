import 'package:flutter/material.dart';
import 'package:web_project/core/data/services.dart';

class SkillsBoxes extends StatelessWidget {
  SkillsBoxes({
    Key? key,
  }) : super(key: key);
  ServiceToOffer serviceToOffer = ServiceToOffer();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 500,
        mainAxisExtent: 300,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  flex: 2,
                  child: Image.asset(serviceToOffer.services[index]['image'])),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    serviceToOffer.services[index]['title'],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  serviceToOffer.services[index]['disc'],
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: serviceToOffer.services.length,
    );
  }
}
