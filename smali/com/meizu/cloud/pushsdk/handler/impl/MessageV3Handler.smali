.class public Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;
.super Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/MessageV3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V

    .line 56
    return-void
.end method

.method private getQuickPackageName(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;->fromMessageV3(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;->getSelfDefineContentString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 257
    const-string v1, "package_name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    :cond_0
    :goto_0
    return-object v0

    .line 258
    :catch_0
    move-exception v1

    .line 259
    const-string v1, "AbstractMessageHandler"

    const-string v2, "no quick json message"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected canSendMessage(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUriPackageName()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 148
    :cond_0
    return v0
.end method

.method protected bridge synthetic canSendMessage(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->canSendMessage(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z

    move-result v0

    return v0
.end method

.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .locals 7

    .prologue
    .line 61
    const-string v0, "notification_show_v3"

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "pushMessage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getPushTimestamp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getDeviceId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getTaskId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getSeqId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x4

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    const-string v2, "AbstractMessageHandler"

    const-string v3, "start MessageV3Handler match"

    invoke-static {v2, v3}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->canReceiveMessage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    const-string v2, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "notification_show_v3"

    .line 216
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 217
    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "message"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->isNotificationJson(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const-string v0, "AbstractMessageHandler"

    const-string v2, "old cloud notification message"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 225
    goto :goto_0
.end method

.method protected onAfterEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 6

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onShowPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method protected bridge synthetic onAfterEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->onAfterEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 6

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onReceivePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected onCreateNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lcom/meizu/cloud/pushsdk/notification/PushNotification;
    .locals 4

    .prologue
    .line 91
    new-instance v1, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->getQuickPackageName(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;->setClickPackageName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onUpdateNotificationBuilder(Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getBaseStyle()I

    move-result v2

    .line 99
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->FLYME:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 100
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getInnerStyle()I

    move-result v2

    .line 101
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_STANDARD:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 102
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Standard Notification with Expandable disable"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/flyme/StandardNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/flyme/StandardNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    .line 134
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 135
    const-string v0, "AbstractMessageHandler"

    const-string v2, "use standard v2 notification"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/StandardNotificationV2;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/StandardNotificationV2;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    .line 138
    :cond_1
    return-object v0

    .line 104
    :cond_2
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_TEXT:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 105
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Standard Notification with Expandable Text"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/flyme/ExpandableTextNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/flyme/ExpandableTextNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto :goto_0

    .line 107
    :cond_3
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_PIC:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 108
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Standard Notification with Expandable Picture"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/flyme/ExpandablePicNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/flyme/ExpandablePicNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto :goto_0

    .line 110
    :cond_4
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_VIDEO:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 111
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Flyme Video notification"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidVideoNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidVideoNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto :goto_0

    .line 114
    :cond_5
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->PURE_PICTURE:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 115
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/PictureNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/PictureNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    .line 116
    const-string v2, "AbstractMessageHandler"

    const-string v3, "show Pure Picture Notification"

    invoke-static {v2, v3}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_6
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->ANDROID:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 118
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getInnerStyle()I

    move-result v2

    .line 119
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_STANDARD:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 120
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Android  Notification with Expandable disable"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidStandardNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto/16 :goto_0

    .line 122
    :cond_7
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_TEXT:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_8

    .line 123
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Android  Notification with Expandable Text"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidExpandableTextNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidExpandableTextNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto/16 :goto_0

    .line 125
    :cond_8
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_PIC:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_9

    .line 126
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Android  Notification with Expandable Picture"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidExpandablePicNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidExpandablePicNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto/16 :goto_0

    .line 128
    :cond_9
    sget-object v3, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_VIDEO:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 129
    const-string v0, "AbstractMessageHandler"

    const-string v2, "show Flyme Video notification"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/meizu/cloud/pushsdk/notification/android/AndroidVideoNotification;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/notification/android/AndroidVideoNotification;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onCreateNotification(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/notification/PushNotification;
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->onCreateNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lcom/meizu/cloud/pushsdk/notification/PushNotification;

    move-result-object v0

    return-object v0
.end method

.method protected scheduleNotificationStatus(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->getEndShowTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 158
    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "schedule notification expire"

    const/16 v3, 0x898

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->getStartShowTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 161
    const/4 v0, 0x2

    .line 162
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "schedule notification on time"

    const/16 v3, 0x899

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_3
    const/4 v0, 0x3

    .line 165
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "schedule notification delay"

    const/16 v3, 0x89a

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic scheduleNotificationStatus(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->scheduleNotificationStatus(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)I

    move-result v0

    return v0
.end method

.method protected scheduleShowNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 173
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 174
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/meizu/cloud/pushsdk/NotificationService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    const-string v1, "command_type"

    const-string v3, "reflect_receiver"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v1, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "extra_app_push_schedule_notification_message"

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 181
    const-string v1, "method"

    const-string v3, "schedule_notification"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const/high16 v1, 0x40000000    # 2.0f

    .line 183
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportSetDrawableSmallIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const/high16 v1, 0x4000000

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->context()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->getStartShowTime()Ljava/lang/String;

    move-result-object v3

    .line 189
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 192
    new-instance v1, Ljava/util/Date;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 193
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_1
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 197
    const-string v3, "AbstractMessageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds Notification AlarmManager execute At "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_2

    .line 201
    const-string v1, "AbstractMessageHandler"

    const-string v3, "setAlarmManager setWindow ELAPSED_REALTIME_WAKEUP"

    invoke-static {v1, v3}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v10, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v10, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected bridge synthetic scheduleShowNotification(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->scheduleShowNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected securityCheck(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->securityCheck0(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic securityCheck(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->securityCheck(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z

    move-result v0

    return v0
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 83
    if-eqz p2, :cond_0

    .line 84
    invoke-interface {p2, p1}, Lcom/meizu/cloud/pushsdk/notification/PushNotification;->show(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->sendArrivedMessage(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 87
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/MessageV3Handler;->unsafeSend(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    return-void
.end method
