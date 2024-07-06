import 'package:flutter/material.dart';

class TPricingCalculator{
  /// Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  /// calculate tax
  static String calculateTax(double productPrice,String location){
    double  taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    // lookup the tax rate for the given location from a tax rate database or API.
    // return the appropriate tax rate
    return 0.10; // example the tax rate 10%
  }

  static double getShippingCost(String location){
    // lookup the shipping cost for the given location from using shipping rate or API
    // Calculate the shipping cost based on various factors like distance, weight etc,
    return 5.00; // example the shipping cost $5.
  }


  /// -- Sum all cart values and return total amount
  // static double calculateTotal(CartModel cart){
  // return cart.item.map((e)=>e.price).fold(0(previousPrice,currentPrice)=> previousPrice + (currentPrice ?? 0));
  // }
}