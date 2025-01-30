package com.lokapos.app

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import com.lokapos.app.components.BaseScreen
import com.lokapos.app.modules.authentication.SignInScreen
import com.lokapos.app.ui.theme.LokaposmobileTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            LokaposmobileTheme {
                BaseScreen {
                    SignInScreen()
                }
            }
        }
    }
}
