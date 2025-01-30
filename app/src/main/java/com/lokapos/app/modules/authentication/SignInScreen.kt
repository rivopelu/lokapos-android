package com.lokapos.app.modules.authentication

import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Checkbox
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.lokapos.app.R
import com.lokapos.app.components.BaseScreen
import com.lokapos.app.components.CustomPasswordField
import com.lokapos.app.components.CustomTextField
import com.lokapos.app.components.ScreenContainer
import com.lokapos.app.components.SolidButton
import com.lokapos.app.ui.theme.Style

@Composable
fun SignInScreen(
    onNavigateToHome: () -> Unit
) {
    val email = remember { mutableStateOf("") }
    val password = remember { mutableStateOf("") }
    val isPasswordVisible = remember { mutableStateOf(false) } // For toggling password visibility

    return BaseScreen { innerPadding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .background(color = Style.Colors.Primary.SuperLight)
                .then(innerPadding ?: Modifier), verticalArrangement = Arrangement.SpaceBetween
        ) {
            Column(
                modifier = Modifier.fillMaxSize(), verticalArrangement = Arrangement.SpaceBetween
            ) {
                Column(
                    modifier = Modifier.fillMaxWidth(), // Ensure it takes full screen space
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Spacer(Modifier.size(64.dp))
                    Image(
                        modifier = Modifier.size(48.dp),
                        painter = painterResource(id = R.drawable.app_logo),
                        contentDescription = "This is what less-abled people will hear when they tap the image. Please write a conscious description of your image"
                    )
                    Spacer(Modifier.size(16.dp))

                    Text(
                        "LOKAPOS", fontSize = 32.sp, color = Color.Black
                    )
                }

                ScreenContainer {
                    Column {
                        CustomTextField(
                            modifier = Modifier.fillMaxWidth(),
                            value = email.value,
                            onValueChange = { email.value = it },
                            label = "Email",
                            placeholder = "Insert email"
                        )

                        Spacer(Modifier.size(16.dp))

                        CustomPasswordField(
                            showPassword = isPasswordVisible.value,
                            modifier = Modifier.fillMaxWidth(),
                            value = password.value,
                            onValueChange = { password.value = it },
                            label = "Password",
                            placeholder = "Insert password"
                        )
                        Spacer(Modifier.size(12.dp))

                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                        ) {

                            Checkbox(
                                checked = isPasswordVisible.value,
                                onCheckedChange = { isPasswordVisible.value = it }
                            )
                            Text(
                                "Show Password"
                            )
                        }
                        Spacer(Modifier.size(12.dp))

                        SolidButton(
                            label = "Sign In",
                            onClick = {
                                onNavigateToHome()
                            }
                        )
                    }
                }

                Column(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalAlignment = Alignment.CenterHorizontally,
                ) {
                    Text(
                        "V 1.0.0", fontSize = 12.sp, color = Color.LightGray
                    )
                    Spacer(Modifier.size(32.dp))
                }
            }
        }
    }
}