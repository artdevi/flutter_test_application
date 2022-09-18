package com.example.flutter_application_1

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        MapKitFactory.setApiKey("3047e48c-bdbf-4be4-82e7-47cf6168b8b6") // Your generated API key
        super.configureFlutterEngine(flutterEngine)
    }
}
