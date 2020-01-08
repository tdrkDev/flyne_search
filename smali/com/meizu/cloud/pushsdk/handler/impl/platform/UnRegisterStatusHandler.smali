.class public Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;
.super Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 4

    .prologue
    .line 26
    const-string v0, "extra_app_push_un_register_status"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    .line 27
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->isUnRegisterSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x400

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 42
    const-string v0, "AbstractMessageHandler"

    const-string v1, "start UnRegisterStatusHandler match"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "un_register_status"

    .line 44
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    .line 38
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/UnRegisterStatusHandler;->unsafeSend(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    return-void
.end method
