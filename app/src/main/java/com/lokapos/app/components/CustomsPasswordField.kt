package com.lokapos.app.components

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.text.input.VisualTransformation
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.lokapos.app.ui.theme.AppTextInputColors


@Composable
fun CustomPasswordField(
    modifier: Modifier = Modifier,
    value: String,
    label: String? = null,
    placeholder: String? = null,
    onValueChange: (String) -> Unit,
    showPassword : Boolean = false
) {
    Column {
        if (label != null) {
            Row {
                Text(label, fontSize = 12.sp)
                Spacer(Modifier.size(4.dp))
                Text("*", fontSize = 14.sp, color = Color.Red)
            }
            Spacer(Modifier.size(2.dp))
        }
        OutlinedTextField(

            placeholder = {
                if (placeholder != null) {
                    Text(placeholder)
                }
            },
            modifier = modifier,
            value = value,
            onValueChange = onValueChange,
            colors = AppTextInputColors,
            visualTransformation = if (showPassword) VisualTransformation.None else PasswordVisualTransformation(),
            keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Password),



            )
    }

}
