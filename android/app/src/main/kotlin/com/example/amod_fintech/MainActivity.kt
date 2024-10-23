package com.example.amod_fintech

import android.view.Gravity
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity(){

    private val channelName = "ToastMethod";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        var channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger,channelName);

        channel.setMethodCallHandler { call, result ->

            var args = call.arguments  as String

            if(call.method == "ShowToast"){
                var toast = Toast.makeText(this,args as String,Toast.LENGTH_LONG);
                toast.setGravity(Gravity.CENTER  , 0, 0);
                toast.show();
            }
        }
    }
    
}

