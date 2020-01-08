.class public Lcom/meizu/cloud/pushsdk/handler/impl/notification/WithDrawMessageHandler;
.super Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;
    .locals 6

    .prologue
    .line 49
    const-string v0, "mz_push_control_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string v0, "extra_app_push_seq_Id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    const-string v0, "statistics_imei_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    const-string v0, "pushMessage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/WithDrawMessageHandler;->getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-object v0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/WithDrawMessageHandler;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x40000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string v0, "AbstractMessageHandler"

    const-string v2, "start WithDrawMessageHandler match"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "mz_push_control_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 33
    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getControl()Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 35
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getControl()Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->getPushType()I

    move-result v0

    .line 38
    :goto_0
    const-string v2, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "4"

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 38
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;)V
    .locals 6

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/WithDrawMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->getRevokePackageName()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTaskId()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getSeqId()Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->getTime()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onReceivePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/WithDrawMessageHandler;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;)V

    return-void
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/WithDrawMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    const-string v1, "AbstractMessageHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start cancel notification id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->getNotifyId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->getNotifyId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 65
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/WithDrawMessageHandler;->unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    return-void
.end method
