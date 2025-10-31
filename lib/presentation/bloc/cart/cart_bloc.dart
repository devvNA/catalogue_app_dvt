import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases/add_to_cart.dart';
import '../../../domain/usecases/get_cart_items.dart';
import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartItems getCartItems;
  final AddToCart addToCart;

  CartBloc({
    required this.getCartItems,
    required this.addToCart,
  }) : super(const CartState.initial()) {
    on<LoadCart>(_onLoadCart);
    on<AddToCartEvent>(_onAddToCart);
  }

  Future<void> _onLoadCart(
    LoadCart event,
    Emitter<CartState> emit,
  ) async {
    emit(const CartState.loading());

    final result = await getCartItems();

    result.fold(
      (failure) => emit(CartState.error(failure.message)),
      (items) => emit(CartState.loaded(items)),
    );
  }

  Future<void> _onAddToCart(
    AddToCartEvent event,
    Emitter<CartState> emit,
  ) async {
    final result = await addToCart(event.productId);

    result.fold(
      (failure) => emit(CartState.error(failure.message)),
      (_) => add(const CartEvent.loadCart()),
    );
  }
}
