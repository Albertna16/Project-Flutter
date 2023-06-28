import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorited = false;
  Duration _snackBarDuration = const Duration(milliseconds: 300);

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_isFavorited ? 'Favorit' : 'Tidak favorit'),
          duration: _snackBarDuration,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isFavorited ? Icons.favorite : Icons.favorite_border,
        color: _isFavorited ? Colors.red : null,
      ),
      onPressed: _toggleFavorite,
    );
  }
}
