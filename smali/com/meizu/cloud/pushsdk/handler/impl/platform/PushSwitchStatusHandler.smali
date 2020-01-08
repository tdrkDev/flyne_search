.class public Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;
.super Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .locals 5

    .prologue
    .line 25
    const-string v0, "extra_app_push_switch_status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    .line 26
    const-string v1, "200"

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 28
    const-string v2, "AbstractMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PushSwitchStatusHandler update local "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " switch status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchNotificationMessage()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->setNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchThroughMessage()Z

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->setThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 32
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x100

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 44
    const-string v0, "AbstractMessageHandler"

    const-string v1, "start PushSwitchStatusHandler match"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "push_status"

    .line 46
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/PushSwitchStatusHandler;->unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    return-void
.end method
