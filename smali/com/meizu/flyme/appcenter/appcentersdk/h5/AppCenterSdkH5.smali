.class public Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;,
        Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;,
        Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;
    }
.end annotation


# static fields
.field public static final mCachedOpen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

.field private b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private final g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->mCachedOpen:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->e:Ljava/util/HashMap;

    .line 101
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->i:Ljava/util/concurrent/ExecutorService;

    .line 108
    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    .line 109
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->getInstance()Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    .line 110
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    .line 111
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCenterSdkH5: argument context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->init(Landroid/content/Context;)V

    .line 115
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->g:Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .prologue
    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    const-string v0, ""

    .line 796
    :goto_0
    return-object v0

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->e:Ljava/util/HashMap;

    monitor-enter v1

    .line 789
    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    goto :goto_0

    .line 798
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 792
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 793
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/c/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    const-string v2, "AppCenterSdkH5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create requestId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    new-instance v2, Lcom/alibaba/fastjson/e;

    invoke-direct {v2}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 426
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 427
    const-string v3, "q"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    const-string v4, "mstore://details"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    const-string v0, "app_id"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    const-string v4, "package_name"

    invoke-virtual {v1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 431
    const-string v1, "appid"

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v0, "apkname"

    invoke-virtual {v2, v0, v4}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    invoke-direct {p0, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 434
    const-string v0, "requestId"

    invoke-virtual {v2, v0, v5}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v1, "click_detail"

    .line 437
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 438
    const-string v6, "detail"

    invoke-virtual {v0, v6}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v6

    .line 439
    invoke-virtual {v6, v5}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v5

    .line 440
    invoke-virtual {v5, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v4

    .line 441
    invoke-virtual {v4, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->c(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v3

    .line 442
    invoke-virtual {v3, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 477
    :goto_0
    if-eqz v1, :cond_0

    .line 480
    const-string v3, "source_launch_way"

    const-string v4, "sdk"

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v3, "source_info"

    invoke-virtual {v2, v3, p2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    const-string v3, "source_apkname"

    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;

    invoke-direct {v4, p0, v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 492
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a(Landroid/content/Context;)Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->onEvent(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V

    .line 497
    :cond_0
    return-void

    .line 444
    :cond_1
    const-string v4, "mstore://tag_list"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 445
    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v4, "name"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string v0, "package_name"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 448
    const-string v1, "click_tag"

    .line 449
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 450
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 451
    const-string v5, "apkname"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-direct {p0, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 453
    const-string v6, "requestId"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-virtual {v0, v5}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 456
    :cond_2
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v5

    .line 457
    invoke-virtual {v5, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v4

    .line 458
    invoke-virtual {v4, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->c(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v3

    .line 459
    invoke-virtual {v3, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    goto :goto_0

    .line 460
    :cond_3
    const-string v4, "mstore://category"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 461
    const-string v0, "title"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    const-string v4, "name"

    invoke-virtual {v2, v4, v0}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v0, "package_name"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 464
    const-string v1, "click_category"

    .line 465
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 466
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 467
    const-string v5, "apkname"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-direct {p0, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 469
    const-string v6, "requestId"

    invoke-virtual {v2, v6, v5}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual {v0, v5}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 472
    :cond_4
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v5

    .line 473
    invoke-virtual {v5, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v4

    .line 474
    invoke-virtual {v4, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->c(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v3

    .line 475
    invoke-virtual {v3, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V
    .locals 4

    .prologue
    .line 555
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    .line 556
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 576
    invoke-virtual {v1, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 577
    invoke-virtual {v0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 580
    :cond_1
    :goto_1
    if-eqz p3, :cond_2

    const-string v0, "q"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/e;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    const-string v0, "q"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->c(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a(Landroid/content/Context;)Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->onEvent(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V

    .line 584
    return-void

    .line 556
    :pswitch_0
    const-string v2, "exposure"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 558
    :pswitch_1
    const-string v0, "hor_pos"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 559
    const-string v0, "pos"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    :cond_3
    invoke-virtual {v1, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v2

    const-string v3, "page"

    .line 565
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v2

    .line 566
    invoke-virtual {v2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->a(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 568
    const-string v0, "apkname"

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    invoke-virtual {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v2

    .line 571
    invoke-direct {p0, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    goto :goto_1

    .line 556
    nop

    :pswitch_data_0
    .packed-switch -0x72cc82f9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 613
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->mCachedOpen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->mCachedOpen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    const-string v1, "install"

    .line 616
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    const-string v1, "3"

    .line 617
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->f(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 618
    invoke-virtual {v0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 619
    invoke-virtual {v0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 620
    invoke-direct {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 621
    invoke-virtual {v0, p3}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->c(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

    move-result-object v0

    .line 623
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a(Landroid/content/Context;)Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->onEvent(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V

    .line 625
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 599
    const-string v1, "apkname"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v1, "appid"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v1, "source_info"

    invoke-virtual {v0, v1, p3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v1, "source_apkname"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v1, "requestId"

    invoke-direct {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v1, "source_launch_way"

    const-string v2, "sdk"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    const-string v2, "open"

    invoke-virtual {v1, v2, p3, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->statistics(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V

    .line 608
    invoke-direct {p0, p1, p3, p4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "source_apkname"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 341
    const-string v2, "source_info"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v5, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 344
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 345
    :goto_0
    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 346
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    instance-of v2, v2, Landroid/view/ContextThemeWrapper;

    if-nez v2, :cond_0

    .line 347
    const/high16 v2, 0x10000000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 350
    const-string v2, "mstore://details"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    const-string v2, "package_name"

    invoke-virtual {v3, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    const-string v5, "q"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->getInstance()Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    move-result-object v5

    invoke-direct {p0, v2, v4, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    move-result-object v3

    invoke-virtual {v5, v2, v1, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->registerListener(Ljava/lang/String;ILcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    .line 414
    :cond_1
    :goto_1
    invoke-direct {p0, p1, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return v0

    :cond_2
    move v2, v1

    .line 344
    goto :goto_0

    .line 358
    :cond_3
    const-string v2, "mstore://details"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 359
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    if-eqz v2, :cond_8

    .line 360
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$5;

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$5;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 374
    :cond_4
    const-string v2, "mstore://search"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 375
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    if-eqz v2, :cond_8

    .line 376
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$6;

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$6;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 385
    :cond_5
    const-string v2, "mstore://tag_list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 386
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    if-eqz v2, :cond_8

    .line 387
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 396
    :cond_6
    const-string v2, "mstore://category"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 397
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    if-eqz v2, :cond_8

    .line 398
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$8;

    invoke-direct {v2, p0, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$8;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 411
    :cond_7
    const-string v0, "AppCenterSdkH5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDeeplink: fail with unkown uriStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 631
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 632
    invoke-direct {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    .line 633
    invoke-virtual {v1, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    .line 634
    invoke-virtual {v1, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    const-string v2, "install"

    .line 635
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    .line 636
    invoke-virtual {v1, p3}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->c(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    const-string v2, "0"

    .line 637
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->f(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 638
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a(Landroid/content/Context;)Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->onEvent(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V

    .line 639
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 503
    const/4 v0, 0x1

    .line 504
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    :goto_0
    return v1

    .line 509
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 514
    const-string v2, "actionName"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/e;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 515
    const-string v2, "actionName"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 516
    const-string v2, "pageName"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 517
    const-string v2, "actionName"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v2, "pageName"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const/4 v2, 0x0

    .line 521
    :try_start_1
    const-string v6, "properties"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 525
    :goto_1
    if-eqz v2, :cond_1

    const-string v3, "apkname"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/e;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    const-string v3, "exposure"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 528
    const-string v6, "requestId"

    const-string v7, "apkname"

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_1
    const-string v3, "source_launch_way"

    const-string v6, "sdk"

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string v3, "source_apkname"

    iget-object v6, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-direct {p0, v4, v5, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V

    .line 533
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 535
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_2
    move v1, v0

    .line 548
    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    const-string v0, "AppCenterSdkH5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStaticEvent Fail :  args = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 522
    :catch_1
    move-exception v3

    .line 523
    const-string v3, "AppCenterSdkH5"

    const-string v6, "doAction: ACTION_STATISTICS but parse properties data to JSONObject fail "

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 542
    goto :goto_2

    .line 546
    :cond_3
    const-string v0, "AppCenterSdkH5"

    const-string v2, "doAction: actionName is null when statistics"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_2
.end method

.method static synthetic c(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;
    .locals 3

    .prologue
    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    .line 808
    :goto_0
    return-object v0

    .line 806
    :cond_0
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 588
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 589
    const-string v2, "mstore://tag_list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mstore://category"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    :cond_0
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 592
    :cond_1
    :goto_0
    return v0

    .line 590
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->g:Ljava/lang/String;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public doAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 132
    const-string v0, "AppCenterSdkH5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doAction: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " args = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 135
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    move-object v0, v6

    .line 281
    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :sswitch_0
    const-string v2, "goto_detail_and_download"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "perform_download_click"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v2, "register_global_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "register_package_listener"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "statistics"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "open_deeplink"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 138
    :pswitch_0
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    const-string v2, "sourceInfo"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 146
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Ljava/lang/String;)V

    .line 148
    :cond_2
    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string v2, "versionCode"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->getIntValue(Ljava/lang/String;)I

    move-result v7

    .line 150
    const-string v2, "appid"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 151
    const-string v8, "q"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 153
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 154
    iget-object v9, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 156
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;

    invoke-direct {v0, v4, v7}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->a(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-direct {p0, v4, v5, v8}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->performDownloadClick(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    .line 158
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->g:Ljava/lang/String;

    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, v3, v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :cond_3
    invoke-direct {p0, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;)Z

    move-object v0, v6

    .line 163
    goto/16 :goto_1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string v0, "AppCenterSdkH5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAction Fail : action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | args = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/c;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    const-string v1, "appid"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v5, v8}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto/16 :goto_1

    .line 167
    :cond_5
    const-string v0, "AppCenterSdkH5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAction: launch app fail : packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 172
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    const-string v1, "AppCenterSdkH5"

    const-string v2, "doAction: ACTION_PERFORM_DOWNLOAD_CLICK but args is illegal!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 176
    :cond_7
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    if-eqz v0, :cond_1

    .line 178
    iget-object v7, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v6

    .line 184
    goto/16 :goto_1

    .line 189
    :pswitch_1
    :try_start_1
    invoke-static {p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 195
    const-string v2, "sourceInfo"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 197
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Ljava/lang/String;)V

    .line 199
    :cond_8
    const-string v3, "packageName"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 201
    new-instance v1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;

    const-string v4, "versionCode"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/e;->getIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->a(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;

    move-result-object v1

    .line 202
    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    const-string v5, "q"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->performDownloadClick(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    move-object v0, v6

    .line 203
    goto/16 :goto_1

    .line 190
    :catch_1
    move-exception v0

    .line 191
    const-string v0, "AppCenterSdkH5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAction Fail : action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | args = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 204
    :cond_9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 205
    const-string v1, "AppCenterSdkH5"

    const-string v2, "doAction: ACTION_PERFORM_DOWNLOAD_CLICK but args is illegal!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 209
    :pswitch_2
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v6

    .line 210
    goto/16 :goto_1

    .line 212
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 213
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 214
    :try_start_2
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    const-string v2, ""

    invoke-static {p2, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 215
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    const-string v3, ""

    invoke-static {p2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$3;

    invoke-direct {v3, p0, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$3;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 226
    :goto_2
    monitor-exit v1

    move-object v0, v6

    goto/16 :goto_1

    .line 224
    :cond_b
    const-string v0, "AppCenterSdkH5"

    const-string v2, "doAction: has already register global listener"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 228
    :cond_c
    const-string v0, "AppCenterSdkH5"

    const-string v2, "doAction: callback is null when register all package listener"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 233
    :pswitch_3
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_d

    move-object v0, v6

    .line 234
    goto/16 :goto_1

    .line 237
    :cond_d
    :try_start_3
    invoke-static {p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    .line 243
    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    const-string v3, "callback"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    const-string v4, "versionCode"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/e;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 246
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 247
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 248
    :try_start_4
    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 249
    new-instance v4, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    invoke-direct {v4, p0, v3, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v5, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;

    invoke-direct {v5, p0, v2, v0, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;ILcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 258
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 259
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 260
    const-string v3, "packageName"

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/16 v2, 0x15

    invoke-virtual {v0}, Lcom/alibaba/fastjson/e;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->onCallback(ILjava/lang/String;)V

    .line 266
    :cond_e
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v6

    goto/16 :goto_1

    .line 238
    :catch_2
    move-exception v0

    .line 239
    const-string v0, "AppCenterSdkH5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAction Fail : action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | args = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 264
    :cond_f
    :try_start_5
    const-string v0, "AppCenterSdkH5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doAction: has already register package listener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 266
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 268
    :cond_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 269
    const-string v1, "AppCenterSdkH5"

    const-string v2, "doAction: packageName or callback is null when register download package listener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 273
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 276
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 135
    nop

    :sswitch_data_0
    .sparse-switch
        -0x56c82ac5 -> :sswitch_5
        -0x50ccdc51 -> :sswitch_1
        -0x2d06c7cc -> :sswitch_2
        -0x2661e157 -> :sswitch_3
        -0x5a34edd -> :sswitch_4
        0x2c693e42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 313
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    monitor-enter v2

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 315
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    .line 319
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->unRegisterGlobalListener(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->unRegisterListener(Ljava/lang/String;ILcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    goto :goto_0

    .line 328
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 331
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 332
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 333
    iput-object v6, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->f:Landroid/content/Context;

    .line 334
    iput-object v6, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    .line 335
    iput-object v6, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->h:Landroid/os/Handler;

    .line 336
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Ljava/lang/String;)V

    .line 337
    return-void
.end method
