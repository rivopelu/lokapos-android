package com.lokapos.app.routes

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.lokapos.app.components.HomeLayout
import com.lokapos.app.modules.authentication.SignInScreen
import com.lokapos.app.ui.theme.animatedComposable


@Composable
fun AppNavHost() {
    val navController = rememberNavController()

    NavHost(
        navController = navController,
        startDestination = "sign-in"
    ) {
        animatedComposable("sign-in") {
            SignInScreen(
                onNavigateToHome = {
                    navController.navigate("home-screen")
                }
            )
        }
        animatedComposable("home-screen") {
            HomeLayout()
        }

    }
}