.class public Lcom/meizu/cloud/pushsdk/handler/impl/platform/ReceiveNotifyMessageHandler;
.super Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/ReceiveNotifyMessageHandler;->getMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMessage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "extra_app_push_response_notification_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x4000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 35
    const-string v0, "AbstractMessageHandler"

    const-string v1, "start ReceiveNotifyMessageHandler match"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "response_notification_message"

    .line 37
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/ReceiveNotifyMessageHandler;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/ReceiveNotifyMessageHandler;->unsafeSend(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    return-void
.end method

.method protected unsafeSend(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/ReceiveNotifyMessageHandler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/ReceiveNotifyMessageHandler;->appLogicListener()Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/platform/ReceiveNotifyMessageHandler;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onNotifyMessageArrived(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method
