import 'package:flutter/material.dart';

class FieldItemContent {
  final String title, image;

  FieldItemContent({
    required this.title,
    required this.image,
  });
}

List<FieldItemContent> fieldData = [
  FieldItemContent(
    title: 'Tài chính',
    image: '/icons/field/finance.png',
  ),
  FieldItemContent(
    title: 'Nhân sự',
    image: '/icons/field/personnel.png',
  ),
  FieldItemContent(
    title: 'Kế toán\nKiểm toán',
    image: '/icons/field/accountant.png',
  ),
  FieldItemContent(
    title: 'Business\nAnalysis',
    image: '/icons/field/business.png',
  ),
  FieldItemContent(
    title: 'Marketing\nSales',
    image: '/icons/field/sales-agent.png',
  ),
  FieldItemContent(
    title: 'Supply chain',
    image: '/icons/field/product-chain.png',
  ),
];
