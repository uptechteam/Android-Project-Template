allprojects {
    repositories {
        maven { url 'https://maven.fabric.io/public' }
        maven { url "http://dl.bintray.com/tbruyelle/tbruyelle" }
        jcenter()
    }
    ext{
        targetSDKVersion = 23
        minSDKVersion = 16
        buildToolVersion = "23.0.3"
        supportLibraryVersion = "23.2.0"
        playServicesVersion = "8.4.0"
    }
}
buildscript {
    repositories {
        jcenter()
        maven { url 'https://maven.fabric.io/public' }
        dependencies {
            // defining dependencies block is hack for proper adding it with freemarker
            // template. You can move it this dependensies to usual place 
            classpath 'me.tatarka:gradle-retrolambda:3.2.5'
            classpath 'com.neenbedankt.gradle.plugins:android-apt:1.8'
            classpath "io.realm:realm-gradle-plugin:0.89.0"
        }
    }
}