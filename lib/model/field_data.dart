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
    image: '/icons/field/financial-profit.png',
  ),
  FieldItemContent(
    title: 'Nhân sự',
    image: '/icons/field/team-leader.png',
  ),
  FieldItemContent(
    title: 'Kế toán\nKiểm toán',
    image: '/icons/field/accounting.png',
  ),
  FieldItemContent(
    title: 'Business\nAnalysis',
    image: '/icons/field/data-science.png',
  ),
  FieldItemContent(
    title: 'Marketing\nSales',
    image: '/icons/field/stock-market.png',
  ),
  FieldItemContent(
    title: 'Supply chain',
    image: '/icons/field/supply_chain.png',
  ),
];
