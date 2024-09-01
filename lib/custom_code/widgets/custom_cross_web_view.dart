// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!

import 'package:webviewx_plus/webviewx_plus.dart';

class CustomCrossWebView extends StatefulWidget {
  const CustomCrossWebView({
    Key? key,
    this.width,
    this.height,
    required this.videoUrl,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String videoUrl;

  @override
  _CustomCrossWebViewState createState() => _CustomCrossWebViewState();
}

class _CustomCrossWebViewState extends State<CustomCrossWebView> {
  late WebViewXController webviewController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    webviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final videoHeight = widget.height ?? MediaQuery.of(context).size.height;
    final videoWidth = widget.width ?? MediaQuery.of(context).size.width;
    final htmlContent = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
            background-color: #000;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .video-container {
            position: relative;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
        .video-js {
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            width: 100%;
            height: 100%;
            object-fit: fill;
        }
        .vjs-control-bar {
            font-size: 20px; /* Aumenta o tamanho da barra de controle */
            height: 60px; /* Aumenta a altura da barra */
        }
        .vjs-big-play-button {
            top: 50% !important;
            left: 50% !important;
            transform: translate(-50%, -50%) !important;
            font-size: 3em; /* Aumenta o tamanho do botão play grande */
        }
    </style>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/video.js/7.11.4/video-js.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/video.js/7.11.4/video.min.js"></script>
</head>
<body>
    <div class="video-container">
        <video
            id="video"
            class="video-js vjs-default-skin"
            controls
            preload="auto"
            autoplay
            muted
            data-setup='{"liveui": true}'>
            <source src="${widget.videoUrl}" type="application/x-mpegURL">
        </video>
    </div>
    <script>
        var player = videojs('video');
        player.ready(function() {
            player.muted(true);  // Mantém o mudo para garantir o autoplay
            player.play();
        });
    </script>
</body>
</html>
''';

    return WebViewX(
      initialContent: htmlContent,
      initialSourceType: SourceType.html,
      width: videoWidth,
      height: videoHeight,
      onWebViewCreated: (controller) => webviewController = controller,
    );
  }
}
