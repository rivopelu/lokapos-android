package com.lokapos.app.modules.history

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.navigation.NavHostController


@Composable
fun HistoryScreen(

) {
    Column(
        modifier = Modifier
            .fillMaxSize(),
        Arrangement.SpaceBetween
    ) {
        Text("HELLO HISTORY")
        Text("HELLO 2")
        Text("HELLO 3")
    }
}