package org.jetbrains.kmptestdata.shared

/**
 * Kotlin interface exported to Swift as a protocol.
 *
 * Swift super-gutter tests use these declarations as navigation destinations.
 */
interface Repository {
    fun fetchData(id: String): String

    fun saveData(key: String, value: String): Boolean

    fun deleteData(id: String): Boolean
}
