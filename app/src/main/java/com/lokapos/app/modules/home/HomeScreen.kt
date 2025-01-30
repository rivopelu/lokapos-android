package com.lokapos.app.modules.home

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.NavHostController
import com.lokapos.app.components.ScreenContainer
import com.lokapos.app.components.SolidButton

@Composable
fun HomeScreen(
    navController: NavHostController
) {
    Column(
        modifier = Modifier
            .fillMaxSize(),
        Arrangement.SpaceBetween
    ) {
        Text("HELLO WORLD")
        ScreenContainer {
            Column {
                SolidButton(
                    label = "LOGOUT",
                    onClick = {
                        navController.navigate("sign-in")
                    }
                )
            }
        }
        Text("HELLO WORLD")
    }
}