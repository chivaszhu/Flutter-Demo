import java.io.File

pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_PROJECT)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "FlutterDemo"
include(":app")
//include(":flutter_module")
//project(":flutter_module").projectDir = File("../flutter_module/.android/Flutter")