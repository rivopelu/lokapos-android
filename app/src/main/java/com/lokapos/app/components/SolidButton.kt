package com.lokapos.app.components

import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ButtonColors
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.unit.dp
import com.lokapos.app.ui.theme.Style


@Composable
fun SolidButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    label: String
) {
    FilledTonalButton(
        shape = RoundedCornerShape(4.dp),
        colors = ButtonDefaults.buttonColors(
            containerColor = Style.Colors.Primary.Main
        ),
        modifier = Modifier.fillMaxWidth().then(modifier),
        onClick = { onClick() }) {
        Text(label)
    }
}