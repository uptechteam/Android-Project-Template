<?xml version="1.0"?>
<recipe>
    <#if includeButterknife>
        <dependency mavenUrl="com.jakewharton:butterknife:7.0.1"/>    
    </#if>
    <#if includeRetrofit>
        <dependency mavenUrl="com.google.code.gson:gson:2.6.1"/>
        <dependency mavenUrl="com.squareup.retrofit2:retrofit:2.0.0"/>
        <dependency mavenUrl="com.squareup.retrofit2:converter-gson:2.0.0"/>
    </#if>
    <#if includeRx>
        <dependency mavenUrl="io.reactivex:rxandroid:1.1.0"/>
        <dependency mavenUrl="io.reactivex:rxjava:1.1.0"/>
        <#if includeRetrofit>
            <dependency mavenUrl="com.squareup.retrofit2:adapter-rxjava:2.0.0"/>
        </#if>
    </#if>
    <#if includeStetho>
        <dependency mavenUrl="com.facebook.stetho:stetho:1.3.1"/>
        <dependency mavenUrl="com.facebook.stetho:stetho-okhttp3:1.3.1"/>
    </#if>
    <#if includeGlide> 
        <dependency mavenUrl="com.github.bumptech.glide:glide:3.7.0"/>
    </#if>

    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="root/src/build.gradle.ftl"
             to="${escapeXmlAttribute(projectOut)}/build.gradle" />

    <merge from="root/build.gradle.ftl"
             to="build.gradle" />

    <merge from="root/res/values/dimens.xml"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />

    <merge from="root/res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <instantiate from="root/res/layout/activity_simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="root/src/app_package/ui/BaseActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${baseActivityName}.java" />

    <instantiate from="root/src/app_package/config/AppComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/config/${app_component}.java" />

    <instantiate from="root/src/app_package/config/AppModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/config/${app_module}.java" />

    <instantiate from="root/src/app_package/config/AppPreferences.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/config/${app_preferences}.java" />

    <instantiate from="root/src/app_package/ui/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/${activityClass}.java" />

    <instantiate from="root/src/app_package/ApplicationClass.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${application_class}.java" />

    <#if addStaticChecks>
        <copy from="root/config/quality.gradle"
                   to="config/quality.gradle" />
        <copy from="root/config/quality/checkstyle/checkstyle.xml"
                   to="config/quality/checkstyle/checkstyle.xml"/>
        <copy from="root/config/quality/checkstyle/suppressions.xml"
                   to="config/quality/checkstyle/suppressions.xml"/>
        <copy from="root/config/quality/findbugs/findbugs-filter.xml"
                   to="config/quality/findbugs/findbugs-filter.xml"/>
        <copy from="root/config/quality/lint/lint.xml"
                   to="config/quality/lint/lint.xml"/>
        <copy from="root/config/quality/pmd/pmd-ruleset.xml"
                   to="config/quality/pmd/pmd-ruleset.xml"/>
    </#if>

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
