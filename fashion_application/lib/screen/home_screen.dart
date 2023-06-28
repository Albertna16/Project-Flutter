import 'package:fashion_application/package/change_address.dart';
import 'package:fashion_application/widget/address_dialog.dart';
import 'package:fashion_application/widget/discount_slider.dart';
import 'package:fashion_application/widget/menu.dart';
import 'package:fashion_application/widget/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final addressBloc = AddressBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddressBloc>(
      create: (context) => addressBloc,
      child: Scaffold(
        backgroundColor: const Color(0xffffe1e8),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: const Text(
                          "GCOMMERC",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        child: const Icon(Icons.menu, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xffff4779),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.location_pin,
                                size: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "Alamat anda :",
                                  style: TextStyle(color: Colors.grey.shade500),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              BlocBuilder<AddressBloc, AddressState>(
                                builder: (context, state) {
                                  return Container(
                                    // child: TextButton(
                                    // onPressed: () async {
                                    //   final newAddress =
                                    //       await showDialog<String>(
                                    //     context: context,
                                    //     builder: (context) => AddressDialog(),
                                    //   );

                                    // if (newAddress != null) {
                                    //   addressBloc
                                    //       .add(AddressChanged(newAddress));
                                    // }
                                    // },
                                    child: Text(
                                      state.address,
                                      style: TextStyle(color: Colors.black),
                                      textAlign: TextAlign.left,
                                    ),
                                    // ),
                                  );
                                },
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              final newAddress = await showDialog<String>(
                                context: context,
                                builder: (context) => AddressDialog(),
                              );

                              if (newAddress != null) {
                                addressBloc.add(AddressChanged(newAddress));
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: const Color(0xffff4779),
                              ),
                              child: const Center(
                                child: Text(
                                  "Ubah",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  color: const Color(0xffffe1e8),
                  child: Menu(),
                ),
                Expanded(
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Discount(),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Produk populer",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Lihat semua",
                                style: TextStyle(
                                  color: Color(0xffff4779),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 218,
                            width: 330,
                            color: Colors.white,
                            child: const ProductGridView(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
