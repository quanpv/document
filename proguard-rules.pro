-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontskipnonpubliclibraryclassmembers
-dontpreverify
-dontshrink
-verbose

-dump class_files.txt
-printseeds seeds.txt
-printusage unused.txt
-printmapping mapping.txt
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

-allowaccessmodification
-keepattributes *Annotation*
-renamesourcefileattribute SourceFile
-keepattributes SourceFile,LineNumberTable
-repackageclasses ''

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService
-dontnote com.android.vending.licensing.ILicensingService


-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

-keepclasseswithmembernames class * {
    native <methods>;
}
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class **.R$* {
  public static <fields>;
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

#-keep public class * {
 #   protected *;
#}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}

##---------------End: proguard configuration common for all Android apps ----------
##---------------Begin: proguard configuration for Gson  ----------
# Gson uses generic type information stored in a class file when working with fields. Proguard
# removes such information by default, so configure it to keep all of it.
-keepattributes Signature

# For using GSON @Expose annotation
-keepattributes *Annotation*

# Gson specific classes
-keep class sun.misc.Unsafe { *; }
#-keep class com.google.gson.stream.** { *; }

# Application classes that will be serialized/deserialized over Gson
-keep class com.google.gson.examples.android.model.** { *; }

##---------------End: proguard configuration for Gson  ----------
-dontwarn java.io.**
-dontwarn com.google.android.**
-dontwarn io.fabric.sdk.android.**
-dontwarn com.google.gson.**
-dontwarn com.google.gson.stream.**
-dontwarn com.google.gson.reflect.**
-dontwarn com.google.gson.internal.**
-dontwarn com.google.gson.internal.bind.**
-dontwarn cn.pedant.SweetAlert.**
-dontwarn android.support.**
-dontwarn org.apache.**
-dontwarn android.support.v4.**
-dontwarn android.support.v7.recyclerview.**
-dontwarn android.support.v7.gridlayout.**
-dontwarn android.support.design.**
-dontwarn android.support.v7.cardview.**
-dontwarn android.support.v7.appcompat.**
-dontwarn android.support.multidex.**
-dontwarn retrofit.**
-dontwarn retrofit2.**
-dontwarn com.squareup.okhttp3.**
-dontwarn butterknife.internal.**
-dontwarn com.google.android.gms.analytics.**
-dontwarn io.codetailps.**
-dontwarn com.quinny898.library.persistentsearch.**
-dontwarn com.balysv.materialmenu.ps.**
-dontwarn com.wdullaer.materialdatetimepicker.**
-dontwarn com.squareup.okhttp.**
-dontwarn com.google.android.gms.**
-dontwarn okio.**
-dontwarn sun.misc.**
-dontwarn com.google.android.apps.gmm.**
-dontwarn com.fasterxml.jackson.**
-dontwarn com.nostra13.universalimageloader.**
-dontwarn android.net.SSLCertificateSocketFactory
-dontwarn com.baoyz.actionsheet
-dontwarn com.edmodo
-dontwarn com.eyalbira.loadingdots
-dontwarn com.getkeepsafe.relinker
-dontwarn com.github.Aspsine
-dontwarn com.github.chrisbanes
-dontwarn com.github.douglasjunior
-dontwarn com.github.esafirm.android-image-picker
-dontwarn com.github.lzyzsd
-dontwarn com.github.rahatarmanahmed
-dontwarn com.google.firebase
-dontwarn com.intuit.sdp
-dontwarn com.jakewharton
-dontwarn com.makeramen
-dontwarn com.mani
-dontwarn com.marshalchen.ultimaterecyclerview
-dontwarn com.pavelsikun
-dontwarn de.hdodenhof
-dontwarn in.srain.cube
-dontwarn io.realm
-dontwarn jp.wasabeef
-dontwarn net.gotev
-dontwarn com.squareup.picasso.Transformation
-dontwarn com.squareup.picasso.OkHttpDownloader
-dontwarn com.squareup.picasso.OkHttp3Downloader
-dontwarn okio.Okio
-dontwarn okio.DeflaterSink


-keep public class android.support.v4.**
-keep public class android.support.v7.recyclerview.**
-keep public class android.support.v7.gridlayout.**
-keep public class android.support.design.**
-keep public class android.support.v7.cardview.**
-keep public class android.support.v7.appcompat.**
-keep public class android.support.multidex.**
-keep public class com.google.code.linkedinapi.**
-keep public class com.google.**
-keep public class com.google.gson.**
-keep public class com.google.android.**
-keep public class com.google.gson.**
-keep public class com.google.android.gms.analytics.**
-keep public class cn.pedant.SweetAlert.**
-keep public class  io.codetailps.**
-keep public class  com.quinny898.library.persistentsearch.**
-keep public class  com.balysv.materialmenu.ps.**
-keep public class  com.wdullaer.materialdatetimepicker.**
-keep public class com.squareup.okhttp.**
-keep public class com.google.android.gms.**
-keep public class org.apache.commons.logging.**
-keep public class org.apache.http.**
-keep public class org.apache.http.entity.mime.**
-keep public class com.google.android.apps.gmm.**
-keep public class com.fasterxml.jackson.**
-keep public class com.baoyz.actionsheet.**
-keep public class com.edmodo.**
-keep public class com.eyalbira.loadingdots.**
-keep public class com.getkeepsafe.relinker.**
-keep public class com.github.Aspsine.**
-keep public class com.github.chrisbanes.**
-keep public class com.github.douglasjunior.**
-keep public class com.github.esafirm.android-image-picker.**
-keep public class com.github.lzyzsd.**
-keep public class com.github.rahatarmanahmed.**
-keep public class com.google.firebase.**
-keep public class com.intuit.sdp.**
-keep public class com.jakewharton.**
-keep public class com.makeramen.**
-keep public class com.mani.**
-keep public class com.marshalchen.ultimaterecyclerview.**
-keep public class com.pavelsikun.**
-keep public class de.hdodenhof.**
-keep public class in.srain.cube.**
-keep public class io.realm.**
-keep public class jp.wasabeef.**
-keep public class net.gotev.**
-keep public class * implements butterknife.Unbinder { public <init>(...); }
-keep class butterknife.*


-keep class javax.** { *; }
-keep class java.** { *; }
-keep class android.support.v7.appcompat.** { *; }
-keep class android.support.v7.cardview.** { *; }
-keep class android.support.design.** { *; }
-keep class android.support.v7.gridlayout.** { *; }
-keep class android.support.v7.recyclerview.** { *; }
-keep class android.support.multidex.** { *; }
-keep class com.google.gson.** { *; }
-keep class com.google.android.** { *; }
-keep class io.fabric.sdk.android.** { *; }
-keep class com.google.android.gms.analytics.** { *; }
-keep class cn.pedant.SweetAlert.** {*;}
-keep class io.codetailps.** {*;}
-keep class com.quinny898.library.persistentsearch.** {*;}
-keep class com.balysv.materialmenu.ps.** {*;}
-keep class com.wdullaer.materialdatetimepicker.** {*;}
-keep class com.squareup.okhttp.** {*;}
-keep class com.google.android.gms.** {*;}
-keep class retrofit.** { *; }
-keep class retrofit2.** { *; }
-keep class butterknife.** { *; }
-keep class **$$ViewBinder { *; }
-keep class org.apache.commons.logging.** { *; }
-keep class org.apache.http.** { *; }
-keep class org.apache.http.entity.mime.** { *; }
-keep class com.google.android.apps.gmm.** { *; }
-keep class com.fasterxml.jackson.** { *; }
-keep class com.nostra13.universalimageloader.** { *; }
-keep class com.baoyz.actionsheet.** { *; }
-keep class com.edmodo.** { *; }
-keep class com.eyalbira.loadingdots.** { *; }
-keep class com.getkeepsafe.relinker.** { *; }
-keep class com.github.Aspsine.** { *; }
-keep class com.github.chrisbanes.** { *; }
-keep class com.github.douglasjunior.** { *; }
-keep class com.github.esafirm.android-image-picker.** { *; }
-keep class com.github.lzyzsd.** { *; }
-keep class com.github.rahatarmanahmed.** { *; }
-keep class com.google.firebase.** { *; }
-keep class com.intuit.sdp.** { *; }
-keep class com.jakewharton.** { *; }
-keep class com.makeramen.** { *; }
-keep class com.mani.** { *; }
-keep class com.marshalchen.ultimaterecyclerview.** { *; }
-keep class com.pavelsikun.** { *; }
-keep class de.hdodenhof.** { *; }
-keep class in.srain.cube.** { *; }
-keep class io.realm.** { *; }
-keep class jp.wasabeef.** { *; }
-keep class net.gotev.** { *; }

-keep class com.github.pedrovgs.** { *; }
#-keep class com.github.pedrovgs.transformer.** { *; }
-keep class com.google.android.exoplayer.** { *; }
-keep class com.daimajia.slider.library.** { *; }
-keep class com.balysv.materialmenu.** { *; }
-keep class com.andexert.library.** { *; }
-keep class com.gordonwong.materialsheetfab.** { *; }

-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}

-keepclasseswithmembernames class * { @butterknife.* <methods>; }
-keepclasseswithmembernames class * { @butterknife.* <fields>; }
-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

-keepattributes Signature
-keepattributes Exceptions

-keep public enum com.quanpv.ftvplay2.model$** {
    **[] $VALUES;
    public *;
}
-keep public class com.google.android.gms.ads.** {
   public *;
}
-keep public class com.google.ads.** {
   public *;
}
-keep class * extends java.util.ListResourceBundle {
    protected Object[][] getContents();
}
-keep class com.quanpv.ftvplay2.model.** { *; }
-keepclassmembers class com.quanpv.ftvplay2.model.** { *; }
-keep public class com.google.android.gms.common.internal.safeparcel.SafeParcelable {
    public static final *** NULL;
}

-keepnames @com.google.android.gms.common.annotation.KeepName class *
-keepclassmembernames class * {
    @com.google.android.gms.common.annotation.KeepName *;
}

-keepnames class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

-keepclassmembers class rx.internal.util.unsafe.*ArrayQueue*Field* {
   long producerIndex;
   long consumerIndex;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueProducerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode producerNode;
}

-keepclassmembers class rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef {
    rx.internal.util.atomic.LinkedQueueNode consumerNode;
}

-keep class com.quanpv.ftvplay2.ActivityMonitor.ClassMultiPoints.** { *; }
-keep public class com.quanpv.ftvplay2.ActivityMonitor$ClassMultiPoints     { public protected *; }
-keep public class com.quanpv.ftvplay2.ActivityMonitor$ClassMultiPoints$ClassPoints { public protected *; }
-keep public class com.quanpv.ftvplay2.ActivityMonitor$ClassMultiPoints$ClassPoints$ClassPoint { public protected *; }
# --------------------------------------------------------------------
# REMOVE all Log messages except warnings and errors
# --------------------------------------------------------------------
#-assumenosideeffects class android.util.Log {
#   # public static *** d(...);
#   # public static *** v(...);
#  #  public static *** i(...);
#      public static boolean isLoggable(java.lang.String, int);
#      public static int v(...);
#      public static int i(...);
#      public static int w(...);
#      public static int d(...);
#      public static int e(...);
#}
-assumenosideeffects class android.util.Log { *; }
-keepattributes *Annotation*
-keepclassmembers class ** {
    @org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

# Only required if you use AsyncExecutor
-keepclassmembers class * extends org.greenrobot.eventbus.util.ThrowableFailureEvent {
    <init>(java.lang.Throwable);
}

-dontnote com.squareup.picasso.Utils
-dontnote okhttp3.internal.Platform
-dontnote com.squareup.okhttp.internal.Platform