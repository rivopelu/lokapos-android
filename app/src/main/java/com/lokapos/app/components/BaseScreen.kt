package com.lokapos.app.components

import android.annotation.SuppressLint
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.core.view.WindowCompat

@SuppressLint("ContextCastToActivity")
@Composable
fun BaseScreen(
    modifier: Modifier = Modifier,
    topBar: @Composable () -> Unit = {},
    content: @Composable (innerPadding: Modifier?) -> Unit,

) {

    (LocalContext.current as? ComponentActivity)?.let {
        WindowCompat.getInsetsController(it.window, it.window.decorView).apply {
            isAppearanceLightStatusBars = true // Set to true for dark icons (light status bar)
        }
    }
    Scaffold(

        modifier = modifier,
        topBar = topBar

    ) { innerPadding ->
        Column() {
            content(Modifier.padding(innerPadding))
        }
    }
}