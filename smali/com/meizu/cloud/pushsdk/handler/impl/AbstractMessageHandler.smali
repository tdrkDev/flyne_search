.class public abstract Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/handler/MessageHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/meizu/cloud/pushsdk/handler/MessageHandler;"
    }
.end annotation


# static fields
.field public static final MESSAGE_TYPE_NOTIFICATION_ARRIVED:I = 0x20000

.field public static final MESSAGE_TYPE_NOTIFICATION_CLICK:I = 0x40

.field public static final MESSAGE_TYPE_NOTIFICATION_DELETE:I = 0x80

.field public static final MESSAGE_TYPE_NOTIFICATION_STATE:I = 0x8000

.field public static final MESSAGE_TYPE_NOTIFICATION_WITHDRAW:I = 0x40000

.field public static final MESSAGE_TYPE_PUSH_REGISTER_STATUS:I = 0x200

.field public static final MESSAGE_TYPE_PUSH_SERVICE_V2:I = 0x2

.field public static final MESSAGE_TYPE_PUSH_SERVICE_V3:I = 0x4

.field public static final MESSAGE_TYPE_PUSH_SUBALIAS_STATUS:I = 0x1000

.field public static final MESSAGE_TYPE_PUSH_SUBTAGS_STATUS:I = 0x800

.field public static final MESSAGE_TYPE_PUSH_SWITCH_STATUS:I = 0x100

.field public static final MESSAGE_TYPE_PUSH_UNREGISTER_STATUS:I = 0x400

.field public static final MESSAGE_TYPE_RECEIVE_NOTIFY_MESSAGE:I = 0x4000

.field public static final MESSAGE_TYPE_REGISTER:I = 0x10

.field public static final MESSAGE_TYPE_SCHEDULE_NOTIFICATION:I = 0x2000

.field public static final MESSAGE_TYPE_THROUGH:I = 0x8

.field public static final MESSAGE_TYPE_UNREGISTER:I = 0x20

.field public static final MESSAGE_TYPE_UPLOAD_FILE_LOG:I = 0x10000

.field public static final SCHEDULE_OFF:I = 0x0

.field public static final SCHEDULE_ON_DELAY:I = 0x3

.field public static final SCHEDULE_ON_EXPIRE:I = 0x1

.field public static final SCHEDULE_ON_TIME:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "AbstractMessageHandler"


# instance fields
.field private abstractAppLogicListener:Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

.field private context:Landroid/content/Context;

.field private messageHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->abstractAppLogicListener:Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    .line 79
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_PUSH_SERVICE_V2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_PUSH_SERVICE_V3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_REGISTER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_UNREGISTER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_THROUGH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_NOTIFICATION_CLICK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_NOTIFICATION_DELETE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_PUSH_SWITCH_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_PUSH_REGISTER_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_PUSH_SUBTAGS_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_PUSH_UNREGISTER_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_PUSH_SUBALIAS_STATUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_SCHEDULE_NOTIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_RECEIVE_NOTIFY_MESSAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_NOTIFICATION_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_UPLOAD_FILE_LOG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/high16 v1, 0x20000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_NOTIFICATION_ARRIVED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    const/high16 v1, 0x40000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MESSAGE_TYPE_NOTIFICATION_WITHDRAW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private getMessageHandlerType(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageHandlerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->abstractAppLogicListener:Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    return-object v0
.end method

.method protected canReceiveMessage(ILjava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 357
    .line 358
    if-nez p1, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 363
    :cond_0
    :goto_0
    const-string v2, "AbstractMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_2

    const-string v1, " canNotificationMessage "

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return v0

    .line 360
    :cond_1
    if-ne p1, v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 363
    :cond_2
    const-string v1, " canThroughMessage "

    goto :goto_1
.end method

.method protected canSendMessage(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method protected clearNotifyOption(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 4

    .prologue
    .line 369
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyOption;->getNotifyOptionSetting(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lcom/meizu/cloud/pushsdk/notification/model/NotifyOption;

    move-result-object v0

    .line 370
    if-eqz v0, :cond_0

    .line 371
    const-string v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete notifyKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyOption;->getNotifyKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notifyId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyOption;->getNotifyId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyOption;->getNotifyKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyOption;->getNotifyKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/meizu/cloud/pushsdk/notification/util/NotificationUtils;->removeNotifyKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyOption;->getNotifyId()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/meizu/cloud/pushsdk/notification/util/NotificationUtils;->removeNotifyIdByPackageName(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeskTopNotificationPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 322
    const-string v0, ""

    .line 324
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    const-string v2, "launcher"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 326
    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 332
    :cond_0
    :goto_0
    return-object v0

    .line 329
    :catch_0
    move-exception v1

    .line 330
    const-string v1, "AbstractMessageHandler"

    const-string v2, "parse desk top json error"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getDeviceId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    if-eqz p1, :cond_0

    .line 206
    const-string v0, "statistics_imei_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force get deviceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    return-object v0
.end method

.method public getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation
.end method

.method protected getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    const-string v0, "extra_app_push_service_default_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    return-object v0
.end method

.method protected getPushTimestamp(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 233
    const-string v0, "extra_app_push_task_timestamp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    const-string v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive push timestamp from pushservice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0
.end method

.method protected getSeqId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    const-string v0, "extra_app_push_seq_Id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTaskId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "extra_app_push_task_Id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotificationJson(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 309
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 311
    :catch_0
    move-exception v0

    .line 313
    const-string v0, "AbstractMessageHandler"

    const-string v1, "parse notification error"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAfterEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    return-void
.end method

.method protected onBeforeEvent(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 111
    return-void
.end method

.method protected onCreateNotification(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/notification/PushNotification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/meizu/cloud/pushsdk/notification/PushNotification;"
        }
    .end annotation

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected scheduleNotificationStatus(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected scheduleShowNotification(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method protected securityCheck(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method protected final securityCheck0(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/SecurityMessage;->getSecurityEncryption(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getPublicKeyByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v1, v2

    move-object v3, v0

    move v0, v2

    .line 150
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    or-int/2addr v0, v6

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "https://api-push.meizu.com/garcia/api/server/getPublicKey"

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 153
    new-instance v6, Lcom/meizu/cloud/pushsdk/handler/impl/model/SecurityMessage$PublicKeyStatus;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/SecurityMessage$PublicKeyStatus;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/handler/impl/model/SecurityMessage$PublicKeyStatus;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/handler/impl/model/SecurityMessage$PublicKeyStatus;->getPublicKey()Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v0, "AbstractMessageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "down load public key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/handler/impl/model/SecurityMessage$PublicKeyStatus;->getPublicKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v7, v6}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->putPublicKeyByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-static {v3, v5}, Lcom/meizu/cloud/pushsdk/util/RSAUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    const-string v6, "AbstractMessageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptSign "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/SecurityMessage;->check(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 164
    :cond_1
    const-string v0, "AbstractMessageHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force update public key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    add-int/lit8 v0, v1, 0x1

    .line 167
    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    move v4, v2

    .line 183
    :cond_2
    :goto_1
    return v4

    :cond_3
    move v4, v2

    .line 181
    goto :goto_1

    :cond_4
    move v1, v0

    move v0, v4

    goto/16 :goto_0
.end method

.method protected sendArrivedMessage(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 4

    .prologue
    .line 385
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportSetDrawableSmallIcon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;->fromMessageV3(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onNotificationArrived(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isRunningProcess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "AbstractMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send notification arrived message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    const-string v1, "pushMessage"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    const-string v1, "method"

    const-string v2, "notification_arrived"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->sendMessageFromBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendMessage(Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 243
    .line 244
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->messageMatch(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "AbstractMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current message Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->getProcessorType()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->getMessageHandlerType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->getMessage(Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object v2

    .line 247
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->securityCheck(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 248
    const-string v0, "AbstractMessageHandler"

    const-string v2, "invalid push message"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    const-string v3, "AbstractMessageHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current Handler message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->onBeforeEvent(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->scheduleNotificationStatus(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v0, v1

    .line 276
    :goto_1
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->canSendMessage(Ljava/lang/Object;)Z

    move-result v3

    .line 277
    const-string v4, "AbstractMessageHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can send message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 279
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->onCreateNotification(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/notification/PushNotification;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    .line 280
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->onAfterEvent(Ljava/lang/Object;)V

    .line 281
    const-string v0, "AbstractMessageHandler"

    const-string v2, "send message end "

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_0
    const-string v1, "AbstractMessageHandler"

    const-string v3, "schedule send message off, send message directly"

    invoke-static {v1, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 260
    goto :goto_1

    .line 262
    :pswitch_1
    const-string v0, "AbstractMessageHandler"

    const-string v3, "expire notification, dont show message"

    invoke-static {v0, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 264
    goto :goto_1

    .line 266
    :pswitch_2
    const-string v1, "AbstractMessageHandler"

    const-string v3, "notification on time ,show message"

    invoke-static {v1, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 269
    goto :goto_1

    .line 271
    :pswitch_3
    const-string v3, "AbstractMessageHandler"

    const-string v4, "schedule notification"

    invoke-static {v3, v4}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;->scheduleShowNotification(Ljava/lang/Object;)V

    move v7, v1

    move v1, v0

    move v0, v7

    .line 273
    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/meizu/cloud/pushsdk/notification/PushNotification;",
            ")V"
        }
    .end annotation
.end method
