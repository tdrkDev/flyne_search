.class public Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;
.super Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/handler/impl/AbstractMessageHandler",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;",
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
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 26
    const-string v0, "notification_extra_show_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    const-string v0, "notification_extra_task_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    const-string v0, "notification_extra_seq_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    const-string v0, "notification_extra_device_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 30
    const-string v0, "notification_extra_push_timestamp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    const-string v0, "notification_state_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    const-string v0, "AbstractMessageHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current taskId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seqId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deviceId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;-><init>(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 35
    const-string v0, "flyme:notification_pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v2, "flyme:notification_id"

    invoke-virtual {p1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 37
    const-string v3, "flyme:notification_state"

    invoke-virtual {p1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 38
    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->setNotificationId(I)V

    .line 39
    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->setNotificationPkg(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->setState(I)V

    .line 41
    return-object v1
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x8000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 53
    const-string v0, "AbstractMessageHandler"

    const-string v1, "start NotificationStateMessageHandler match"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "notification_state"

    .line 55
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;)V
    .locals 6

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 67
    :pswitch_0
    const-string v0, "AbstractMessageHandler"

    const-string v1, "notification STATE_NOTIFICATION_SHOW_ACCESS_DENY"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onNoShowPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_1
    const-string v0, "AbstractMessageHandler"

    const-string v1, "notification STATE_NOTIFICATION_SHOW_INBOX"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onShowInBoxPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    const-string v0, "AbstractMessageHandler"

    const-string v1, "notification STATE_NOTIFICATION_SHOW_NORMAL"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_3
    const-string v0, "AbstractMessageHandler"

    const-string v1, "notification STATE_NOTIFICATION_SHOW_FLOAT"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;)V

    return-void
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 3

    .prologue
    .line 46
    const-string v0, "AbstractMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "store notification id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getNotificationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getNotificationId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/util/NotificationUtils;->storeNotifyIdByPackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 48
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/notification/NotificationStateMessageHandler;->unsafeSend(Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;Lcom/meizu/cloud/pushsdk/notification/PushNotification;)V

    return-void
.end method
