.class public abstract Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver;
.super Lcom/meizu/cloud/pushsdk/base/IntentReceiver;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "MzPushMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/IntentReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 38
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->with(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    move-result-object v0

    const-string v1, "MzPushMessageReceiver"

    new-instance v2, Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver$1;

    invoke-direct {v2, p0}, Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver$1;-><init>(Lcom/meizu/cloud/pushsdk/MzPushMessageReceiver;)V

    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->receiverListener(Ljava/lang/String;Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;)Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->processMessage(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onNotificationArrived(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onNotificationClicked(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public onNotificationDeleted(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onNotifyMessageArrived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public abstract onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 29
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/base/IntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "MzPushMessageReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event core error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "3.8.2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MzPushMessageReceiver "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xbb8

    move-object v0, p1

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onRecordMessageFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public abstract onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
.end method

.method public abstract onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
.end method

.method public abstract onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
.end method

.method public abstract onUnRegister(Landroid/content/Context;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
.end method

.method public onUpdateNotificationBuilder(Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
