.class public Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;
.super Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;
.source "SourceFile"


# static fields
.field public static final CLEAR_ALL:I = 0x0

.field public static final CLEAR_NOTIFY_ID:I = 0x1

.field public static final CLEAR_NOTIFY_KEY:I = 0x2


# instance fields
.field private clearType:I

.field private notifyId:[I

.field private notifyKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 36
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportSetDrawableSmallIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->isSupportRemoteInvoke:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 29
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 30
    iput-boolean p3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->enableRPC:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method protected matchCondition()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 54
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    if-eq v1, v0, :cond_1

    :cond_0
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyKey:Ljava/lang/String;

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    :cond_1
    :goto_0
    return v0

    .line 55
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 7

    .prologue
    .line 97
    iget v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 99
    :pswitch_0
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportSetDrawableSmallIcon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "Strategy"

    const-string v1, "android 6.0 blow so cancel all by context"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/notification/util/NotificationUtils;->clearAllNotification(Landroid/content/Context;)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/meizu/cloud/pushsdk/notification/util/NotificationUtils;->clearNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 108
    const-string v4, "Strategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clear notifyId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/meizu/cloud/pushsdk/notification/util/NotificationUtils;->clearNotification(Landroid/content/Context;Ljava/lang/String;I)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->strategyPackageNanme:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/notification/util/NotificationUtils;->removeNotifyKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method protected sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    const-string v1, "strategy_package_name"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v1, "strategy_type"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    const-string v1, "strategy_child_type"

    iget v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 70
    const-string v1, "strategy_params"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected sendRpcRequests()[Landroid/content/Intent;
    .locals 6

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    if-eqz v1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    array-length v0, v0

    new-array v1, v0, [Landroid/content/Intent;

    .line 82
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 83
    const-string v2, "Strategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send notifyId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to PushManagerService"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 85
    const-string v3, "strategy_package_name"

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v3, "strategy_type"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->strategyType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v3, "strategy_child_type"

    iget v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v3, "strategy_params"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 92
    :cond_1
    return-object v0
.end method

.method public setClearType(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->clearType:I

    .line 46
    return-void
.end method

.method public varargs setNotifyId([I)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyId:[I

    .line 42
    return-void
.end method

.method public setNotifyKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->notifyKey:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 131
    const/16 v0, 0x40

    return v0
.end method
