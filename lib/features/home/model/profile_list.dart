import 'package:flutter/material.dart';


class ProfileTile {
final IconData icon;
final String title;
const ProfileTile({required this.icon, required this.title});
}


final List<ProfileTile> profileTiles = [
ProfileTile(icon: Icons.shopping_bag_outlined, title: 'Orders'),
ProfileTile(icon: Icons.payment_outlined, title: 'My Details'),
ProfileTile(icon: Icons.payment, title: 'Payments'),
ProfileTile(icon: Icons.location_on, title: 'Delivery Address'),
ProfileTile(icon: Icons.notifications, title: 'Notification'),
ProfileTile(icon: Icons.help_outline_outlined, title: 'Help'),
ProfileTile(icon: Icons.question_mark_outlined, title: 'About'),
];
