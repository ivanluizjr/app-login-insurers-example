import 'package:flutter/material.dart';

//* Cores

const kVerde = Color(0xFF35947A);
const kVerdeAmarelo = Color(0xFFA7B473);
const kColorLoginCard = Color(0xFF2B3038);

//!=======================================

//* Frases e Textos

const kTextoBemVindo = Text(
  'Bem Vindo!',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 35.0,
  ),
);

const kFraseTelaLogin = Text(
  'Aqui você gerencia seus seguros e de seus familiares em poucos cliques!',
  style: TextStyle(
    color: Colors.white,
    fontSize: 14.0,
  ),
  textAlign: TextAlign.center,
);

const kTextoBotaoDrawer = Text(
  'Clique para fechar',
);

const kTextoDrawer = Text(
  'Aguardando Login',
  style: TextStyle(color: Colors.white),
);

const kTextoEntrar = Text(
  'Entrar',
  style: TextStyle(color: Colors.white, fontSize: 20),
);

const kTextoCadastrar = Text(
  'Cadastrar',
  style: TextStyle(color: Colors.white, fontSize: 20),
);

const kTextoCheckCircle = Text(
  'Lembrar Sempre',
  style: TextStyle(
    color: Colors.white,
    fontSize: 12,
  ),
);

const kTextoRedefinirSenha = Text(
  'Esqueceu a senha?',
  style: TextStyle(
    color: Colors.white,
    fontSize: 12,
  ),
);

const kTextoRedesSociais = Text(
  'Acesse através das redes sociais.',
  style: TextStyle(
    color: Colors.white,
    fontSize: 12,
  ),
);

//!=======================================

//* Url Server

const kUrlBase = 'http://localhost:3031';
const kEndPointUsers = '/users';

//!=======================================