package org.jetbrains.kmptestdata.kotlinTestFixtures

fun existingKotlinDeclarationTopLevelFunction(): String {
    return "topLevel"
}

class ExistingKotlinGoToDeclarationSourceType : ExistingKotlinGoToDeclarationSourceContract {
    val existingKotlinDeclarationMemberValue: String = "member"

    fun existingKotlinDeclarationMemberFunction(): String {
        return existingKotlinDeclarationMemberValue
    }

    override fun existingKotlinDeclarationContractFunction(): String {
        return existingKotlinDeclarationMemberFunction()
    }
}

interface ExistingKotlinGoToDeclarationSourceContract {
    fun existingKotlinDeclarationContractFunction(): String
}

enum class ExistingKotlinGoToDeclarationSourceMode {
    READY,
    PAUSED
}
