.class public Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;,
        Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;,
        Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;,
        Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;
    }
.end annotation


# static fields
.field public static final ACTION_MEIZU_APPCENTER_LAUNCH:Ljava/lang/String; = "com.meizu.mstore.launch"

.field private static volatile c:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;",
            "Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Landroid/content/BroadcastReceiver;

.field public final mNeedReSendAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;",
            "Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "AppCenterSdk"

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    .line 44
    iput-boolean v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->e:Z

    .line 46
    iput-boolean v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->f:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->g:I

    .line 579
    iput-boolean v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->h:Z

    .line 599
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->i:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/e;)Lcom/alibaba/fastjson/e;
    .locals 4

    .prologue
    .line 349
    if-nez p1, :cond_1

    .line 362
    :cond_0
    return-object p1

    .line 352
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/e;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/e;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 358
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_2

    .line 359
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 383
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 384
    const-string v1, "appId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v1, "installType"

    iget v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v1, "sdkVersionCode"

    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/c/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v0}, Lcom/alibaba/fastjson/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 367
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "versionCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    const-string v1, "requestId"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    const-string v1, "installType"

    iget v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v1, "sdkVersionCode"

    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/c/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {v0}, Lcom/alibaba/fastjson/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V
    .locals 3

    .prologue
    .line 466
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    monitor-enter v1

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 460
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->e:Z

    return p1
.end method

.method private b()V
    .locals 6

    .prologue
    .line 485
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    monitor-enter v2

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 487
    const-string v1, "AppCenterSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendNeedReSendAction: msg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v4

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-virtual {v4, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    return-void
.end method

.method private b(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V
    .locals 4

    .prologue
    .line 472
    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    monitor-enter v3

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    const/4 v0, -0x1

    if-le v2, v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 475
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-virtual {v1, p1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-virtual {v0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 481
    :cond_0
    monitor-exit v3

    .line 482
    return-void

    .line 473
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->f:Z

    if-nez v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->h:Z

    .line 586
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.meizu.mstore.launch"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 588
    const-string v0, "AppCenterSdk"

    const-string v1, "registerAppCenterLaunchReciever: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->h:Z

    if-eqz v0, :cond_0

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->h:Z

    .line 594
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 595
    const-string v0, "AppCenterSdk"

    const-string v1, "unregisterAppCenterLauncherReciever: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->c()V

    return-void
.end method

.method static synthetic e(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->f:Z

    return v0
.end method

.method static synthetic f(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->c:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    if-nez v0, :cond_1

    .line 61
    const-class v1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->c:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;-><init>()V

    sput-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->c:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->c:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public batchInstallApps(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/appcenter/appcentersdk/data/SdkAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    if-nez p2, :cond_0

    .line 291
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 284
    const/16 v1, 0x3ec

    iput v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 285
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 286
    const-string v2, "pageName"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v2, "apps"

    invoke-static {p2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v2, "sdkVersionCode"

    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/c/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {v1}, Lcom/alibaba/fastjson/e;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    goto :goto_0
.end method

.method public deleteDownloadTask(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 338
    const/16 v1, 0x8

    iput v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 339
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 340
    const-string v2, "packageNames"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {v1}, Lcom/alibaba/fastjson/e;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 342
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    goto :goto_0
.end method

.method public getInstallType()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->g:I

    return v0
.end method

.method public getRecommendApps(ZLjava/lang/String;Ljava/lang/String;IJLcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;)V
    .locals 5

    .prologue
    .line 229
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 230
    const/16 v1, 0x3ea

    iput v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 231
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 232
    const-string v2, "isFromMeizuPhone"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v2, "oldImei"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v2, "max"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v2, "timeout"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v2, "oldSn"

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v2, "sdkVersionCode"

    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/c/a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v1}, Lcom/alibaba/fastjson/e;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 239
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;

    invoke-direct {v2, p0, p7}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;)V

    invoke-virtual {v1, v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 252
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->f:Z

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b:Landroid/content/Context;

    .line 82
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Landroid/content/Context;)Z

    .line 83
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    new-instance v1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/appcentersdk/a$a;)V

    goto :goto_0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b()V

    .line 108
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d()V

    .line 109
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->mNeedReSendAction:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->f:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public onMovedAppReceived(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 304
    const/16 v1, 0x3ed

    iput v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 305
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 306
    const-string v2, "isFromMeizuPhone"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v2, "packageInfos"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 309
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    goto :goto_0
.end method

.method public onRecommendAppExposure(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/appcenter/appcentersdk/data/SdkAppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    if-nez p2, :cond_0

    .line 271
    :goto_0
    return-void

    .line 264
    :cond_0
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 265
    const/16 v1, 0x3eb

    iput v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 266
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 267
    const-string v2, "pageName"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v2, "apps"

    invoke-static {p2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {v1}, Lcom/alibaba/fastjson/e;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 270
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    goto :goto_0
.end method

.method public performDownloadClick(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V
    .locals 5
    .param p1    # Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "downloadParams must not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    new-instance v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 124
    const/4 v0, 0x1

    iput v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 125
    iget-object v0, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->a:Ljava/lang/String;

    iget v2, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->b:I

    iget-object v3, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 126
    iget-object v0, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    .line 127
    if-eqz p2, :cond_1

    .line 128
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {v2, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v2, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v2}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 131
    const/4 v0, 0x3

    iput v0, v2, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 132
    iget-object v0, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->a:Ljava/lang/String;

    iget v3, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->b:I

    iget-object v4, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {p0, v2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V

    .line 136
    :cond_1
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 137
    return-void
.end method

.method public performDownloadClickByAppId(JLjava/lang/String;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V
    .locals 3

    .prologue
    .line 201
    new-instance v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 202
    const/16 v0, 0x1f42

    iput v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 204
    iput-object p3, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    .line 205
    if-eqz p4, :cond_0

    .line 206
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {v2, p4}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    invoke-virtual {v0, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v2, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v2}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 209
    const/16 v0, 0x2329

    iput v0, v2, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 211
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {p0, v2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V

    .line 214
    :cond_0
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 215
    return-void
.end method

.method public registerGlobalListener(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V
    .locals 3

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 443
    :goto_0
    return-void

    .line 436
    :cond_0
    new-instance v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 437
    const/4 v0, 0x5

    iput v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 438
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {v2, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {p0, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V

    .line 442
    :cond_1
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    goto :goto_0
.end method

.method public registerListener(Ljava/lang/String;ILcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V
    .locals 3

    .prologue
    .line 396
    if-nez p3, :cond_0

    .line 408
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 400
    const/4 v0, 0x3

    iput v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {v2, p3}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    invoke-virtual {v0, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {p0, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V

    .line 407
    :cond_1
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    goto :goto_0
.end method

.method public setInstallType(I)V
    .locals 0

    .prologue
    .line 504
    iput p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->g:I

    .line 505
    return-void
.end method

.method public statistics(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V
    .locals 4

    .prologue
    .line 320
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 321
    const/4 v1, 0x7

    iput v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 322
    new-instance v1, Lcom/alibaba/fastjson/e;

    invoke-direct {v1}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 323
    const-string v2, "actionName"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string v2, "pageName"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "properties"

    invoke-direct {p0, p3}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/alibaba/fastjson/e;)Lcom/alibaba/fastjson/e;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {v1}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 327
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 328
    return-void
.end method

.method public unRegisterGlobalListener(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V
    .locals 3

    .prologue
    .line 446
    if-nez p1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    new-instance v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 450
    const/4 v0, 0x6

    iput v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 451
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 455
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    invoke-direct {p0, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V

    .line 456
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unRegisterListener(Ljava/lang/String;ILcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V
    .locals 3

    .prologue
    .line 416
    if-nez p3, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    new-instance v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 420
    const/4 v0, 0x4

    iput v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 422
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-virtual {v2, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 426
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    .line 427
    invoke-direct {p0, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;)V

    .line 428
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
