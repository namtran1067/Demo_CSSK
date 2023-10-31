import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cartlist_item_model.dart';
import 'package:namtran1067_s_application1/presentation/cart_screen/models/cart_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

/// A bloc that manages the state of a Cart according to the event that is dispatched to it.
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(CartState initialState) : super(initialState) {
    on<CartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(
        cartModelObj: state.cartModelObj
            ?.copyWith(cartlistItemList: fillCartlistItemList())));
  }

  List<CartlistItemModel> fillCartlistItemList() {
    return [
      CartlistItemModel(
          oBHCombi: ImageConstant.imgDrugThumbnail72x72,
          oBHCombi1: "OBH Combi",
          measurement: "75ml",
          counter: "1",
          price: "9.99"),
      CartlistItemModel(
          oBHCombi: ImageConstant.imgDrugThumbnail4,
          oBHCombi1: "Panadol",
          measurement: "20pcs",
          counter: "1",
          price: "9.99")
    ];
  }
}
