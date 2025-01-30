package com.lokapos.app.routes

import androidx.compose.runtime.Composable
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.lokapos.app.components.HomeLayout
import com.lokapos.app.modules.authentication.SignInScreen


@Composable
fun AppNavHost() {
    val navController = rememberNavController()

    NavHost(
        navController = navController,
        startDestination = "sign-in"
    ) {
        composable("sign-in") {
            SignInScreen(
                onNavigateToHome = {
                    navController.navigate("home-screen")
                }
            )
        }
        composable("home-screen") {
            HomeLayout()
        }

    }
}