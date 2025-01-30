package com.lokapos.app.ui.theme

import androidx.compose.ui.graphics.Color

object Style {
    object Colors {
        val white = Color(0xFFFFFFFF)

        object Primary {
            val Main = Color(0xFF1B769F)
            val Dark = Color(0xFF51AAD2)
            val Light = Color(0xFF044E70)
            val SuperLight = Color(0xFFE8F4FC)
        }

        object Text {
            val LightGray = Color(0xFF9A9A9A)
        }
    }
}

object LoupMoiTextInputColors {
    val focusedSupportingTextColor: Color = Style.Colors.Primary.Main
    val unfocusedSupportingTextColor: Color = Color(0xFFBDBDBD)
    val textFieldBackgroundColor: Color = Style.Colors.Primary.SuperLight
}