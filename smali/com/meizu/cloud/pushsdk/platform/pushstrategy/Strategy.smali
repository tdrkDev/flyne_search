.class public abstract Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app_id"

.field public static final APP_KEY:Ljava/lang/String; = "app_key"

.field public static final DEVICE_ERROR_CODE:Ljava/lang/String; = "20000"

.field public static final FEEDBACK_PARAMETER_ERROR_CODE:Ljava/lang/String; = "20001"

.field public static final PUSH_ID:Ljava/lang/String; = "push_id"

.field public static final STRATEGY_CHILD_TYPE:Ljava/lang/String; = "strategy_child_type"

.field public static final STRATEGY_ClEAR_NOTIFICATION:I = 0x40

.field public static final STRATEGY_PACKAGE_NANME:Ljava/lang/String; = "strategy_package_name"

.field public static final STRATEGY_PARAMS:Ljava/lang/String; = "strategy_params"

.field public static final STRATEGY_REGISTER:I = 0x2

.field public static final STRATEGY_SUBALIAS:I = 0x8

.field public static final STRATEGY_SUBTAGS:I = 0x4

.field public static final STRATEGY_SWITCH:I = 0x10

.field public static final STRATEGY_SWITCH_SYSTEM_NOTIFICATION:I = 0x80

.field public static final STRATEGY_TYPE:Ljava/lang/String; = "strategy_type"

.field public static final STRATEGY_UNREGISTER:I = 0x20

.field public static final SUCCESS_CODE:Ljava/lang/String; = "200"

.field public static final TAG:Ljava/lang/String; = "Strategy"


# instance fields
.field protected appId:Ljava/lang/String;

.field protected appKey:Ljava/lang/String;

.field protected context:Landroid/content/Context;

.field protected volatile deviceId:Ljava/lang/String;

.field protected enableRPC:Z

.field protected executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field protected isSupportRemoteInvoke:Z

.field private managerServicePackageName:Ljava/lang/String;

.field protected pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

.field protected strategyPackageNanme:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->isSupportRemoteInvoke:Z

    .line 41
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->enableRPC:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->managerServicePackageName:Ljava/lang/String;

    .line 66
    iput-object p5, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->context:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->appId:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->appKey:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    .line 72
    return-void
.end method

.method private isServerError(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 252
    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_2

    :cond_0
    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceCode(I)Z
    .locals 1

    .prologue
    .line 155
    const v0, 0x1adb0

    if-lt p1, v0, :cond_0

    const v0, 0x30d40

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private supportAllResponse()Z
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->enableRPC:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->managerServicePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected findService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 280
    const/4 v1, 0x0

    .line 281
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_3

    .line 285
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 286
    const-string v4, "com.meizu.cloud"

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->managerServicePackageName:Ljava/lang/String;

    .line 288
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 292
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 293
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->managerServicePackageName:Ljava/lang/String;

    .line 294
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 298
    :cond_1
    :goto_1
    const-string v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current process packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->managerServicePackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method protected getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->deviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->deviceId:Ljava/lang/String;

    .line 273
    const-string v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method protected isRegisterStatus()Z
    .locals 2

    .prologue
    .line 164
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->strategyType()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->strategyType()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract matchCondition()Z
.end method

.method protected abstract netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public process()Z
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x1

    .line 169
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy$1;

    invoke-direct {v2, p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy$1;-><init>(Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 179
    :goto_0
    return v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->processMainThread()Z

    move-result v0

    goto :goto_0
.end method

.method public processMainThread()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 183
    .line 185
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->matchCondition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    const-string v0, "Strategy"

    const-string v1, "Missing required parameters"

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;

    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    .line 241
    :goto_0
    if-eqz v0, :cond_c

    .line 242
    const-string v1, "Strategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->isServerError(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_1
    move v2, v0

    .line 245
    :cond_0
    return v2

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->supportServiceRpc()Z

    move-result v0

    if-nez v0, :cond_7

    .line 190
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;

    move-result-object v1

    .line 191
    const-string v0, "Strategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "real response status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz v1, :cond_e

    .line 193
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->isRegisterStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "20000"

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->supportAllResponse()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    const-string v0, "Strategy"

    const-string v4, "response all request in local app"

    invoke-static {v0, v4}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    move-object v0, v1

    goto :goto_0

    .line 200
    :cond_3
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    const-string v0, "0"

    .line 205
    :cond_4
    const-string v4, "200"

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 206
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    .line 208
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->isServiceCode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 210
    const-string v4, "Strategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service error so notify pushManager invoker code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " message "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    :cond_6
    move-object v0, v1

    .line 213
    goto/16 :goto_0

    .line 217
    :cond_7
    const-string v0, "Strategy"

    const-string v4, "send message to remote service"

    invoke-static {v0, v4}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->isRegisterStatus()Z

    move-result v0

    if-nez v0, :cond_d

    .line 220
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_8

    .line 222
    const-string v4, "Strategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V

    .line 227
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendRpcRequest()Landroid/content/Intent;

    move-result-object v4

    .line 228
    if-eqz v4, :cond_9

    .line 229
    invoke-virtual {p0, v4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendIntentMessage(Landroid/content/Intent;)V

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendRpcRequests()[Landroid/content/Intent;

    move-result-object v5

    .line 232
    if-eqz v5, :cond_a

    .line 233
    const-string v4, "Strategy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send sendRpcRequests length "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    array-length v6, v5

    move v4, v3

    :goto_3
    if-ge v4, v6, :cond_a

    aget-object v7, v5, v4

    .line 235
    invoke-virtual {p0, v7}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->sendIntentMessage(Landroid/content/Intent;)V

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 239
    :cond_a
    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->context:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.meizu.cloud.pushservice.action.PUSH_SERVICE_START"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v1, v6}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->sendMessageFromBroadcast(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move v0, v3

    .line 243
    goto/16 :goto_1

    :cond_c
    move v0, v2

    goto/16 :goto_1

    :cond_d
    move-object v0, v1

    goto :goto_2

    :cond_e
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected sendIntentMessage(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->managerServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v0, "com.meizu.cloud.pushservice.action.PUSH_MANAGER_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const-string v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start RemoteService error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract sendRpcRequest()Landroid/content/Intent;
.end method

.method protected sendRpcRequests()[Landroid/content/Intent;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->appId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->appKey:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 76
    return-void
.end method

.method public setStrategyPackageNanme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->strategyPackageNanme:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSupportRemoteInvoke(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->isSupportRemoteInvoke:Z

    .line 95
    return-void
.end method

.method protected abstract strategyType()I
.end method

.method protected supportServiceRpc()Z
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->enableRPC:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->isSupportRemoteInvoke:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->context:Landroid/content/Context;

    const-string v1, "com.meizu.cloud.pushservice.action.PUSH_MANAGER_SERVICE"

    .line 113
    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;->findService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
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
