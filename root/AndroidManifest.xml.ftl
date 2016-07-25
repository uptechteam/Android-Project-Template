<manifest xmlns:android="http://schemas.android.com/apk/res/android" 
    package="${packageName}">

    <application android:allowBackup="true"
        android:name="${packageName}.${application_class}"
        android:label="@string/app_name"
        android:icon="@mipmap/ic_launcher"
        android:supportsRtl="true"
        android:theme="@style/AppTheme">

        <activity android:name=".ui.${activityClass}"
            android:label="@string/app_name"
            <#if hasNoActionBar>
            android:theme="@style/${themeNameNoActionBar}"</#if>>
            <#if isLauncher && !(isLibraryProject!false)>
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
            </#if>
        </activity>

    </application>

</manifest>