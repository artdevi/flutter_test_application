import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/cart/data/bloc/cart_bloc.dart';
import 'package:flutter_application_1/feature/cart/data/models/cart_data.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartContainer extends StatefulWidget {
  const CartContainer({Key? key}) : super(key: key);

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  @override
  void initState() {
    context
      .read<CartBloc>()
      .add(const CartEvent.fetch());
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    final state = context.watch<CartBloc>().state;

    return state.when(
      loading: () {
        return const Padding(
          padding: EdgeInsets.all(10),
          child: Center(
            child: CircularProgressIndicator(color: AppColors.primaryOrange),
          ),
        );
      }, 
      loaded: (data) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.primaryBlue,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Column(
            children: [
              _cartProducts(data.cartItems),
              _totalPriceAndDelivery(data.total, data.delivery),
              _checkoutButton(() {}),
            ],
          ),
        );
      },
      error: () => const Center(
        child: Text(
          'Something went wrong :(',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: AppColors.primaryBlue,
          ),
        ),
      ),
    );

  }

  Widget _checkoutButton(void Function() callback) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: 54,
        width: 326,
        alignment: Alignment.center,
        margin: const EdgeInsets.only(bottom: 44, top: 27),
        decoration: BoxDecoration(
          color: AppColors.primaryOrange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          'Checkout',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _totalPriceAndDelivery(int totalPrice, String delivery) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.only(left: 51, right: 31, top: 15, bottom: 26),
      decoration: BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Colors.black.withOpacity(0.25),
            width: 2,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '\$${totalPrice}',
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                delivery,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cartProducts(List<CartItem> items) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 23, right: 32.25, top: 50),
        child: ListView(
          children: [
            for (var item in items)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 7),
                child: _cartItem(item)
              ),
          ],
        ),
      ),
    );
  }

  Widget _cartItem(CartItem item) {
    return
    Container(
      height: 90,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Container(
            height: 89,
            width: 100,
            decoration: BoxDecoration(
              borderRadius:  BorderRadius.circular(15),
              color: Colors.white
            ),
            child: Center(
              child: SizedBox(
                height: double.infinity,
                child: ClipRRect(
                  borderRadius:  BorderRadius.circular(15),
                  child: Image.network(
                    item.images, 
                    fit: BoxFit.fitWidth
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 165,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${item.price.toStringAsFixed(2)}\$',
                  style: const TextStyle(
                    fontSize: 20,
                    color: AppColors.primaryOrange,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
            width: 26,
            decoration: BoxDecoration(
              color: const Color(0xFF282843),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: const [
                Text(
                  '-',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '+',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset(
            'assets/icons/trash_bin.svg',
          ),
        ],
      ),
    );
  }
}