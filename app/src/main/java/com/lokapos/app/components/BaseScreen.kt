package com.lokapos.app.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier

@Composable
fun BaseScreen(
    modifier: Modifier = Modifier,
    content: @Composable (innerPadding: Modifier?) -> Unit

) {
    Scaffold(
        modifier = modifier

    ) { innerPadding ->
        Column() {
            content(Modifier.padding(innerPadding))
        }
    }
}