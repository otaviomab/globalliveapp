// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart'; // Importação do dio
import 'package:path_provider/path_provider.dart'; // Importação do path_provider
import 'dart:io' as io; // Importação para verificação de plataforma

Future<void> backgroundDownloadPdf(String pdfUrl) async {
  try {
    var dio = Dio();

    // Verificação de plataforma
    if (io.Platform.isAndroid || io.Platform.isIOS) {
      var dir = await getApplicationDocumentsDirectory();
      var filePath = "${dir.path}/boleto_globallive.pdf";
      await dio.download(pdfUrl, filePath);
      print("Download concluído e salvo em: $filePath");
    } else {
      print("Plataforma não suportada");
    }
  } catch (e) {
    print("Erro ao baixar o PDF: $e");
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
