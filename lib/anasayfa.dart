import 'package:bloc_pattern_kullanimi/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  int sonuc = 0;
  var tfsayi1 = TextEditingController();
  var tfsayi2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnaSayfaCubit, int>(builder: (context, sonuc) {
                //anasayfa stless olsa bile calısır
                return Text(
                  sonuc.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              }),
              TextField(
                controller: tfsayi1,
                decoration: const InputDecoration(
                  hintText: "Sayı 1",
                ),
              ),
              TextField(
                controller: tfsayi2,
                decoration: const InputDecoration(
                  hintText: "Sayı 2",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        String a1 = tfsayi1.text;
                        String a2 = tfsayi2.text;
                        context.read<AnaSayfaCubit>().toplama(a1, a2);
                      },
                      child: const Text("TOPLA")),
                  ElevatedButton(
                      onPressed: () {
                        String a1 = tfsayi1.text;
                        String a2 = tfsayi2.text;
                        context.read<AnaSayfaCubit>().carpma(a1, a2);
                      },
                      child: const Text("ÇARP")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
