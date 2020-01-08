.class public Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;
.super Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 33
    iput-boolean p4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->enableRPC:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;-><init>()V

    .line 44
    const-string v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setCode(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method protected matchCondition()Z
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;-><init>()V

    .line 66
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getPushId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "200"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setCode(Ljava/lang/String;)V

    .line 69
    const-string v1, "already unRegister PushId,dont unRegister frequently"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setIsUnRegisterSuccess(Z)V

    .line 90
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->deviceId:Ljava/lang/String;

    .line 73
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->unRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v2

    .line 74
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    new-instance v1, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v0, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network unRegisterStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "200"

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 83
    const-string v2, "Strategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setCode(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 87
    const-string v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    return-void
.end method

.method protected sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->sendUnRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    .line 108
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "app_key"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "strategy_package_name"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "strategy_type"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x20

    return v0
.end method
