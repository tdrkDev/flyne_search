.class public Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;
.super Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;",
        ">;"
    }
.end annotation


# instance fields
.field protected deviceIdRetry:I

.field protected mainHandler:Landroid/os/Handler;

.field protected scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 38
    invoke-static {}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Executor;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy$1;-><init>(Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->mainHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 54
    iput-boolean p4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->enableRPC:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceIdRetry:I

    .line 34
    return-void
.end method


# virtual methods
.method protected executeAfterGetDeviceId(J)V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy$2;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy$2;-><init>(Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 156
    return-void
.end method

.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;-><init>()V

    .line 66
    const-string v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public matchCondition()Z
    .locals 3

    .prologue
    .line 59
    const-string v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBrandMeizu "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isBrandMeizu(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appKey:Ljava/lang/String;

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

.method public bridge synthetic netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    move-result-object v0

    return-object v0
.end method

.method public netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 93
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getPushId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getPushIdExpireTime(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 96
    invoke-virtual {p0, v1, v2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->retryRegister(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    const-string v3, "200"

    invoke-virtual {v0, v3}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 98
    const-string v3, "already register PushId,dont register frequently"

    invoke-virtual {v0, v3}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setPushId(Ljava/lang/String;)V

    .line 100
    int-to-long v2, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setExpireTime(I)V

    .line 132
    :goto_0
    return-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    const-string v2, ""

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceId:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceIdRetry:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 106
    const-string v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceIdRetry:I

    mul-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds start register"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceIdRetry:I

    mul-int/lit8 v1, v1, 0xa

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->executeAfterGetDeviceId(J)V

    .line 108
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceIdRetry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceIdRetry:I

    .line 109
    const-string v1, "20000"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 110
    const-string v1, "deviceId is empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceIdRetry:I

    .line 113
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;-><init>(Ljava/lang/String;)V

    .line 116
    const-string v0, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getPushId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->putPushId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->getExpireTime()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->putPushIdExpireTime(Landroid/content/Context;ILjava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 122
    :cond_2
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 124
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

    .line 126
    :cond_3
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setCode(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;->setMessage(Ljava/lang/String;)V

    .line 128
    const-string v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected retryRegister(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    .line 166
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->decryptPushId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/platform/PushIdEncryptUtils;->decryptPushId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    int-to-long v4, p2

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 173
    const/4 v0, 0x0

    .line 177
    :cond_1
    return v0
.end method

.method public bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    return-void
.end method

.method public sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->sendRegisterStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    .line 138
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "app_key"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "strategy_package_name"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "strategy_type"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->strategyType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    return v0
.end method
