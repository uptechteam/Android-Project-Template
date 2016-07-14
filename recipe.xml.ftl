<?xml version="1.0"?>
<recipe>

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

    <instantiate from="root/src/app_package/config/AppComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/config/${app_component}.java" />

    <instantiate from="root/src/app_package/config/AppModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/config/${app_module}.java" />

    <instantiate from="root/src/app_package/config/AppPreferences.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/config/${app_preferences}.java" />

    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

    <instantiate from="root/src/app_package/ApplicationClass.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${application_class}.java" />

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

</recipe>
