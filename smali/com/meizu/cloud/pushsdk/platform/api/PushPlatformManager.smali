.class public Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PushPlatformManager"

.field private static mInstance:Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;


# instance fields
.field private enableRPC:Z

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mContext:Landroid/content/Context;

.field private notificationClearStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;

.field private pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

.field private registerStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

.field private subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

.field private subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

.field private switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

.field private unRegisterStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;-><init>(Landroid/content/Context;ZZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->enableRPC:Z

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-static {}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Executor;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 57
    :cond_0
    iput-boolean p3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->enableRPC:Z

    .line 58
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->registerStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    .line 59
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unRegisterStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;

    .line 60
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    .line 61
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    .line 62
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    .line 63
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->notificationClearStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;

    .line 64
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;
    .locals 3

    .prologue
    .line 67
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mInstance:Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;

    if-nez v0, :cond_1

    .line 68
    const-class v1, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mInstance:Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mInstance:Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    sget-object v0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mInstance:Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public changeNotificationSwitchAdvance(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    .prologue
    .line 196
    const/4 v0, 0x1

    .line 197
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    invoke-virtual {v1, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->changeNotificationSwitch(Ljava/lang/String;Ljava/lang/String;I)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->isSuccess()Z

    move-result v0

    .line 200
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const-string v2, "PushPlatformManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change notfication switch advance pakcage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const-string v2, "PushPlatformManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change notfication switch advance pakcage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setAppId(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setAppKey(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setPushId(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setSwitchType(I)V

    .line 217
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public checkSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAppId(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAppKey(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setPushId(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setSubAliasType(I)V

    .line 304
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public checkSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppId(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppKey(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setPushId(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setSubTagType(I)V

    .line 275
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public clearAllNotification(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 316
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-boolean v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->enableRPC:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    .line 317
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setClearType(I)V

    .line 318
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public varargs clearNotification(Ljava/lang/String;[I)Z
    .locals 4

    .prologue
    .line 308
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-boolean v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->enableRPC:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    .line 309
    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setNotifyId([I)V

    .line 310
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 311
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setClearType(I)V

    .line 312
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public clearNotifyKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 323
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-boolean v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->enableRPC:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Z)V

    .line 324
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setClearType(I)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setNotifyKey(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/NotificationClearStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public dispatcherStrategyMessage(Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;)Z
    .locals 8

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 90
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyType()I

    move-result v0

    .line 93
    sparse-switch v0, :sswitch_data_0

    .line 151
    :cond_0
    :goto_0
    return v7

    .line 95
    :sswitch_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 98
    :sswitch_1
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 101
    :sswitch_2
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v2, v0, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->checkSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v7, v0, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unSubScribeAllTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 112
    :sswitch_3
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-nez v0, :cond_5

    .line 113
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v4

    const-string v0, "1"

    .line 114
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v6, v7

    :goto_1
    move-object v0, p0

    .line 113
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v7

    goto/16 :goto_0

    :cond_4
    move v6, v5

    .line 114
    goto :goto_1

    .line 115
    :cond_5
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v7, v0, :cond_7

    .line 116
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v4

    const-string v0, "1"

    .line 117
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v6, v7

    :goto_2
    move-object v0, p0

    move v5, v7

    .line 116
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v7

    goto/16 :goto_0

    :cond_6
    move v6, v5

    .line 117
    goto :goto_2

    .line 118
    :cond_7
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v2, v0, :cond_9

    .line 119
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v4

    const-string v0, "1"

    .line 120
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v5, v7

    :cond_8
    move-object v0, p0

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto/16 :goto_0

    .line 121
    :cond_9
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->checkPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 126
    :sswitch_4
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-nez v0, :cond_a

    .line 127
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 128
    :cond_a
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v7, v0, :cond_b

    .line 129
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 130
    :cond_b
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPushId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->checkSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 135
    :sswitch_5
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-nez v0, :cond_c

    .line 136
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->clearAllNotification(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 137
    :cond_c
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v7, v0, :cond_d

    .line 138
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [I

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->clearNotification(Ljava/lang/String;[I)Z

    move-result v7

    goto/16 :goto_0

    .line 139
    :cond_d
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getStrategyChildType()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->clearNotifyKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_0

    .line 144
    :sswitch_6
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getParams()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/platform/message/StrategyMessage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v5

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->changeNotificationSwitchAdvance(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    goto/16 :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_1
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method public enableRemoteInvoker(Z)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->registerStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->setSupportRemoteInvoke(Z)V

    .line 79
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unRegisterStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->setSupportRemoteInvoke(Z)V

    .line 80
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setSupportRemoteInvoke(Z)V

    .line 81
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setSupportRemoteInvoke(Z)V

    .line 82
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setSupportRemoteInvoke(Z)V

    .line 83
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->registerStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->setAppId(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->registerStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->setAppKey(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->registerStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->registerStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/RegisterStatusStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public subScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAppId(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAppKey(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setPushId(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setSubAliasType(I)V

    .line 284
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAlias(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public subScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppId(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppKey(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setPushId(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setSubTagType(I)V

    .line 246
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setSubTags(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setAppId(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setAppKey(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setPushId(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setSwitchType(I)V

    .line 226
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p6}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setSwitcher(Z)V

    .line 227
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setAppId(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setAppKey(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setPushId(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setSwitchType(I)V

    .line 236
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->setSwitcher(Z)V

    .line 237
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->switchStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public unRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unRegisterStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->setAppId(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unRegisterStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->setAppKey(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unRegisterStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->unRegisterStatusStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/UnRegisterStatusStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public unRegisterAdvance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 178
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->unRegister(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->mContext:Landroid/content/Context;

    const-string v2, "com.meizu.flyme.push"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pushId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->changePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "PushPlatformManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisetr advance pakcage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string v1, "PushPlatformManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisetr advance pakcage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAppId(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAppKey(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setPushId(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setSubAliasType(I)V

    .line 294
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->setAlias(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeAliasStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeAliasStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public unSubScribeAllTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppId(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppKey(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setPushId(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setSubTagType(I)V

    .line 266
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public unSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppId(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setAppKey(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setStrategyPackageNanme(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setPushId(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setSubTagType(I)V

    .line 256
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->setSubTags(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->subScribeTagStrategy:Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SubScribeTagStrategy;->process()Z

    move-result v0

    return v0
.end method

.method public uploadLogFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushPlatformManager;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->uploadLogFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    return-object v0
.end method
