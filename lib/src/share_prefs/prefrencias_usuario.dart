import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario _instancia =
      new PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return _instancia;
  }

  PreferenciasUsuario._internal();

  late SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //GET y SET del genero
  get genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set getnero(int value) {
    _prefs.setInt('genero', value);
  }

  //GET y SET del color secundario
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario1(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  //get y set del nombre
  get nombre {
    return _prefs.getString('nombre') ?? '';
  }

  set getnombre(String value) {
    _prefs.setString('nombre', value);
  }

  get getultimaPagina {
    return _prefs.getString('ultimaPagina') ?? 'home';
  }

  set setultimaPagina(String value) {
    _prefs.setString('ultimaPagina', value);
  }
}
