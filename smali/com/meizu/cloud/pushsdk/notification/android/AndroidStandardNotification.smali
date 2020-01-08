.class public Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;
.super Lcom/meizu/cloud/pushsdk/notification/AbstractPushNotification;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/notification/AbstractPushNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected appIconSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 3

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmAppIconSetting()Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->isDefaultLargeIcon()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->pushNotificationBuilder:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->pushNotificationBuilder:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getmLargIcon()I

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->pushNotificationBuilder:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getmLargIcon()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    const-string v1, "AbstractPushNotification"

    const-string v2, "set largeIcon by resource id"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 57
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->pushNotificationBuilder:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getAppLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->pushNotificationBuilder:Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->getAppLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    const-string v1, "AbstractPushNotification"

    const-string v2, "set largeIcon by bitmap provided by user setting"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    const-string v1, "AbstractPushNotification"

    const-string v2, "set largeIcon by package default large icon"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->getLargeIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    const-string v1, "AbstractPushNotification"

    const-string v2, "On other Thread down load largeIcon image success"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method
