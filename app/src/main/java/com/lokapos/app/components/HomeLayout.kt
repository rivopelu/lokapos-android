package com.lokapos.app.components

import android.annotation.SuppressLint
import androidx.activity.ComponentActivity
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.core.view.WindowCompat
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.lokapos.app.modules.history.HistoryScreen
import com.lokapos.app.modules.home.HomeScreen
import com.lokapos.app.ui.theme.animatedComposable

@SuppressLint("ContextCastToActivity")
@Composable
fun HomeLayout(
) {
    (LocalContext.current as? ComponentActivity)?.let {
        WindowCompat.getInsetsController(it.window, it.window.decorView).apply {
            isAppearanceLightStatusBars = true
        }
    }

    val homeNavController = rememberNavController()

    Scaffold(

        bottomBar = { BottomNavigationBar(homeNavController) }


    ) { innerPadding ->
        Column(
            modifier = Modifier.fillMaxSize()
        ) {
            NavHostContainer(homeNavController, Modifier.padding(innerPadding))
        }
    }
}

@Composable
private fun NavHostContainer(navController: NavHostController, modifier: Modifier = Modifier) {
    NavHost(
        navController = navController, startDestination = "home-screen", modifier = modifier,

        ) {
        animatedComposable("home-screen") { HomeScreen(navController) }
        animatedComposable("history-screen") { HistoryScreen() }
    }
}