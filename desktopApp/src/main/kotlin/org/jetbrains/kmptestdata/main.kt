package org.jetbrains.kmptestdata

import androidx.compose.ui.window.Window
import androidx.compose.ui.window.application

fun main() = application {
    Window(
        onCloseRequest = ::exitApplication,
        title = "a60",
    ) {
        App()
    }
}