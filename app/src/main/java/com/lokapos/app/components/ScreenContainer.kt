package com.lokapos.app.components

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ScreenContainer(
    modifier: Modifier = Modifier,
    content: @Composable () -> Unit

) {
    Box(
        modifier = Modifier
            .padding(12.dp)
            .fillMaxWidth()
            .then(modifier)
    ) {
        content();
    }
}