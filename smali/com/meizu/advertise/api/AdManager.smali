.class public Lcom/meizu/advertise/api/AdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/advertise/api/AdManager$a;
    }
.end annotation


# static fields
.field private static final TIMEOUT:J = 0x1f4L

.field private static sAdDataLoaderProxy:Lcom/meizu/advertise/c/b;

.field private static sAppId:Ljava/lang/String;

.field private static sBlockNetworkImage:Z

.field private static sContext:Landroid/content/Context;

.field private static sDebug:Z

.field private static sInstalled:Z

.field private static sLocationEnable:Z

.field private static final sLock:Ljava/lang/Object;

.field private static sMainHandler:Landroid/os/Handler;

.field private static sNightMode:Z

.field private static sOfflineNoticeFactory:Lcom/meizu/advertise/api/j;

.field private static sOpenApi:Z

.field private static sPreload:Z

.field private static sSetBlockNetworkImage:Z

.field private static sSetDebug:Z

.field private static sSetFlymeToken:Z

.field private static sSetLocationEnable:Z

.field private static sSetNightMode:Z

.field private static sSetOfflineNoticeFactory:Z

.field private static sSetUserAgent:Z

.field private static sTimeout:J

.field private static sToken:Ljava/lang/String;

.field private static sUserAgent:Ljava/lang/String;

.field private static sWaited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/meizu/advertise/api/AdManager;->sTimeout:J

    .line 42
    sput-boolean v2, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/advertise/api/AdManager;->sLock:Ljava/lang/Object;

    .line 44
    sput-boolean v2, Lcom/meizu/advertise/api/AdManager;->sWaited:Z

    .line 46
    sput-boolean v2, Lcom/meizu/advertise/api/AdManager;->sDebug:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sLocationEnable:Z

    .line 198
    new-instance v0, Lcom/meizu/advertise/c/b;

    invoke-direct {v0}, Lcom/meizu/advertise/c/b;-><init>()V

    sput-object v0, Lcom/meizu/advertise/api/AdManager;->sAdDataLoaderProxy:Lcom/meizu/advertise/c/b;

    .line 199
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000()Lcom/meizu/advertise/update/g;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->install()Lcom/meizu/advertise/update/g;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .prologue
    .line 34
    sput-boolean p0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    return p0
.end method

.method public static buildAdRequest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lcom/meizu/advertise/api/AdManager$a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdDataLoader()Lcom/meizu/advertise/api/b;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sAdDataLoaderProxy:Lcom/meizu/advertise/c/b;

    return-object v0
.end method

.method public static getApiVersion()I
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/meizu/advertise/api/AdManager$a;->e()I

    move-result v0

    return v0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->waitForInstall()V

    .line 207
    const-string v0, "com.meizu.advertise.plugin"

    invoke-static {v0}, Lcom/meizu/advertise/update/h;->a(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getData(Landroid/content/Intent;)Lcom/meizu/advertise/api/a;
    .locals 1

    .prologue
    .line 377
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager$a;->a(Landroid/content/Intent;)Lcom/meizu/advertise/api/a;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleException(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "Uninitialized!"

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->b(Ljava/lang/String;)I

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v0, "handle exception"

    invoke-static {v0, p0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    const-string v1, "com.meizu.advertise.plugin"

    invoke-static {v0, p0, v1}, Lcom/meizu/advertise/update/h;->a(Landroid/content/Context;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 67
    const-class v1, Lcom/meizu/advertise/api/AdManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    monitor-exit v1

    return-void

    .line 70
    :cond_0
    :try_start_1
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 71
    sput-object p0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    .line 75
    :goto_1
    sput-object p1, Lcom/meizu/advertise/api/AdManager;->sAppId:Ljava/lang/String;

    .line 76
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->installPlugin()V

    .line 77
    const-string v0, "AdLog-Host"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", host version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "8.6.15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 73
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static install()Lcom/meizu/advertise/update/g;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 119
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    const-string v1, "8.6.15"

    invoke-static {v0, v1}, Lcom/meizu/advertise/update/h;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 120
    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_0
    sput-wide v0, Lcom/meizu/advertise/api/AdManager;->sTimeout:J

    .line 121
    new-instance v0, Lcom/meizu/advertise/update/e;

    invoke-direct {v0}, Lcom/meizu/advertise/update/e;-><init>()V

    .line 122
    const-string v1, "com.meizu.advertise.plugin"

    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/e;->b(Ljava/lang/String;)V

    .line 123
    const-string v1, "8.6.15"

    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/e;->c(Ljava/lang/String;)V

    .line 124
    const v1, 0x7a297f

    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/e;->a(I)V

    .line 125
    const-string v1, "8.6.15"

    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/e;->d(Ljava/lang/String;)V

    .line 126
    const-string v1, "com.meizu.advertise.plugin.apk"

    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/e;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v2}, Lcom/meizu/advertise/update/e;->a(Z)V

    .line 128
    invoke-virtual {v0, v2}, Lcom/meizu/advertise/update/e;->b(Z)V

    .line 129
    new-instance v1, Lcom/meizu/advertise/api/f;

    sget-object v2, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/advertise/api/f;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/meizu/advertise/update/e;->a(Lcom/meizu/advertise/update/i;)V

    .line 131
    sget-object v1, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/meizu/advertise/update/h;->a(Landroid/content/Context;Lcom/meizu/advertise/update/e;)Lcom/meizu/advertise/update/g;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->d()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 134
    sget-object v2, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/meizu/advertise/update/g;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 135
    sget-boolean v3, Lcom/meizu/advertise/api/AdManager;->sSetLocationEnable:Z

    if-eqz v3, :cond_0

    .line 136
    sget-boolean v3, Lcom/meizu/advertise/api/AdManager;->sLocationEnable:Z

    invoke-static {v3, v1}, Lcom/meizu/advertise/api/AdManager$a;->b(ZLjava/lang/ClassLoader;)V

    .line 137
    const-string v3, "install: Proxy.setLocationEnable"

    invoke-static {v3}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {v2, v1}, Lcom/meizu/advertise/api/AdManager$a;->a(Landroid/content/Context;Ljava/lang/ClassLoader;)V

    .line 140
    const-string v2, "installApp: Proxy.init"

    invoke-static {v2}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 141
    sget-object v2, Lcom/meizu/advertise/api/AdManager;->sAppId:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/meizu/advertise/api/AdManager$a;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 142
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sSetDebug:Z

    if-eqz v2, :cond_1

    .line 143
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sDebug:Z

    invoke-static {v2, v1}, Lcom/meizu/advertise/api/AdManager$a;->c(ZLjava/lang/ClassLoader;)V

    .line 145
    :cond_1
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sSetNightMode:Z

    if-eqz v2, :cond_2

    .line 146
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sNightMode:Z

    invoke-static {v2, v1}, Lcom/meizu/advertise/api/AdManager$a;->a(ZLjava/lang/ClassLoader;)V

    .line 148
    :cond_2
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sSetFlymeToken:Z

    if-eqz v2, :cond_3

    .line 149
    sget-object v2, Lcom/meizu/advertise/api/AdManager;->sToken:Ljava/lang/String;

    sget-boolean v3, Lcom/meizu/advertise/api/AdManager;->sOpenApi:Z

    invoke-static {v2, v3, v1}, Lcom/meizu/advertise/api/AdManager$a;->a(Ljava/lang/String;ZLjava/lang/ClassLoader;)V

    .line 151
    :cond_3
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sSetOfflineNoticeFactory:Z

    if-eqz v2, :cond_4

    .line 152
    sget-object v2, Lcom/meizu/advertise/api/AdManager;->sOfflineNoticeFactory:Lcom/meizu/advertise/api/j;

    invoke-static {v2, v1}, Lcom/meizu/advertise/api/AdManager$a;->a(Lcom/meizu/advertise/api/j;Ljava/lang/ClassLoader;)V

    .line 154
    :cond_4
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sPreload:Z

    if-eqz v2, :cond_5

    .line 155
    invoke-static {v1}, Lcom/meizu/advertise/api/AdManager$a;->a(Ljava/lang/ClassLoader;)Z

    .line 157
    :cond_5
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sSetBlockNetworkImage:Z

    if-eqz v2, :cond_6

    .line 158
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sBlockNetworkImage:Z

    invoke-static {v2, v1}, Lcom/meizu/advertise/api/AdManager$a;->d(ZLjava/lang/ClassLoader;)V

    .line 160
    :cond_6
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sSetUserAgent:Z

    if-eqz v2, :cond_7

    .line 161
    sget-object v2, Lcom/meizu/advertise/api/AdManager;->sUserAgent:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/meizu/advertise/api/AdManager$a;->b(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 164
    :cond_7
    return-object v0

    .line 120
    :cond_8
    sget-wide v0, Lcom/meizu/advertise/api/AdManager;->sTimeout:J

    goto/16 :goto_0
.end method

.method private static installPlugin()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/meizu/advertise/api/AdManager$1;

    invoke-direct {v0}, Lcom/meizu/advertise/api/AdManager$1;-><init>()V

    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 112
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "AdSdk-plugin-load"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public static isBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 359
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sBlockNetworkImage:Z

    return v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sDebug:Z

    return v0
.end method

.method public static isLocationEnable()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sLocationEnable:Z

    return v0
.end method

.method public static isNightMode()Z
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-static {}, Lcom/meizu/advertise/api/AdManager$a;->a()Z

    move-result v0

    .line 278
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetNightMode:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sNightMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newPluginContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->waitForInstall()V

    .line 254
    const-string v0, "com.meizu.advertise.plugin"

    invoke-static {p0, v0}, Lcom/meizu/advertise/update/h;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static onDownloadComplete(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager;->sendRequestWithHttpURLConnection(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private static onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/UsageStatsProxy;->getOnlineInstance(Landroid/content/Context;Z)Lcom/meizu/statsapp/UsageStatsProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/meizu/statsapp/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 330
    return-void
.end method

.method private static onEventLib(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/UsageStatsProxy;->getOnlineInstance(Landroid/content/Context;Z)Lcom/meizu/statsapp/UsageStatsProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/meizu/statsapp/UsageStatsProxy;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 325
    return-void
.end method

.method public static onInstallComplete(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 213
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager;->sendRequestWithHttpURLConnection(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method private static onPageStart(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/UsageStatsProxy;->getInstance(Landroid/content/Context;Z)Lcom/meizu/statsapp/UsageStatsProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private static onPageStop(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/UsageStatsProxy;->getInstance(Landroid/content/Context;Z)Lcom/meizu/statsapp/UsageStatsProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public static parseAdResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/advertise/api/a;
    .locals 1

    .prologue
    .line 400
    invoke-static {p0, p1}, Lcom/meizu/advertise/api/AdManager$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/advertise/api/a;

    move-result-object v0

    return-object v0
.end method

.method public static preload()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 283
    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sPreload:Z

    .line 284
    sget-boolean v1, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/advertise/api/AdManager$a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static release()V
    .locals 0

    .prologue
    .line 407
    invoke-static {}, Lcom/meizu/advertise/api/AdManager$a;->f()V

    .line 408
    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 307
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/meizu/advertise/api/AdManager;->sMainHandler:Landroid/os/Handler;

    .line 310
    :cond_0
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method private static sendRequestWithHttpURLConnection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/advertise/api/AdManager$2;

    invoke-direct {v1, p0}, Lcom/meizu/advertise/api/AdManager$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    return-void
.end method

.method public static setBlockNetworkImage(Z)V
    .locals 1

    .prologue
    .line 351
    sput-boolean p0, Lcom/meizu/advertise/api/AdManager;->sBlockNetworkImage:Z

    .line 352
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetBlockNetworkImage:Z

    .line 353
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager$a;->d(Z)V

    .line 356
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 1

    .prologue
    .line 81
    sput-boolean p0, Lcom/meizu/advertise/api/AdManager;->sDebug:Z

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetDebug:Z

    .line 83
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager$a;->c(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public static setFlymeToken(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 314
    sput-object p0, Lcom/meizu/advertise/api/AdManager;->sToken:Ljava/lang/String;

    .line 315
    sput-boolean p1, Lcom/meizu/advertise/api/AdManager;->sOpenApi:Z

    .line 316
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetFlymeToken:Z

    .line 317
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-static {p0, p1}, Lcom/meizu/advertise/api/AdManager$a;->a(Ljava/lang/String;Z)V

    .line 320
    :cond_0
    return-void
.end method

.method public static setLocationEnable(Z)V
    .locals 1

    .prologue
    .line 292
    sput-boolean p0, Lcom/meizu/advertise/api/AdManager;->sLocationEnable:Z

    .line 293
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetLocationEnable:Z

    .line 294
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager$a;->b(Z)V

    .line 296
    const-string v0, "installApp: Proxy.setLocationEnable"

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 298
    :cond_0
    return-void
.end method

.method public static setNightMode(Z)V
    .locals 1

    .prologue
    .line 267
    sput-boolean p0, Lcom/meizu/advertise/api/AdManager;->sNightMode:Z

    .line 268
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetNightMode:Z

    .line 269
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager$a;->a(Z)V

    .line 272
    :cond_0
    return-void
.end method

.method public static setOfflineNoticeFactory(Lcom/meizu/advertise/api/j;)V
    .locals 1

    .prologue
    .line 343
    sput-object p0, Lcom/meizu/advertise/api/AdManager;->sOfflineNoticeFactory:Lcom/meizu/advertise/api/j;

    .line 344
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetOfflineNoticeFactory:Z

    .line 345
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 346
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager$a;->a(Lcom/meizu/advertise/api/j;)V

    .line 348
    :cond_0
    return-void
.end method

.method public static setTimeout(J)V
    .locals 0

    .prologue
    .line 93
    sput-wide p0, Lcom/meizu/advertise/api/AdManager;->sTimeout:J

    .line 94
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    sput-object p0, Lcom/meizu/advertise/api/AdManager;->sUserAgent:Ljava/lang/String;

    .line 367
    const/4 v0, 0x1

    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sSetUserAgent:Z

    .line 368
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager$a;->a(Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method

.method private static waitForInstall()V
    .locals 4

    .prologue
    .line 168
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 169
    const-string v0, "Uninitialized"

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->b(Ljava/lang/String;)I

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-nez v0, :cond_0

    .line 175
    sget-wide v0, Lcom/meizu/advertise/api/AdManager;->sTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sWaited:Z

    if-nez v0, :cond_0

    .line 181
    sget-object v1, Lcom/meizu/advertise/api/AdManager;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 184
    :try_start_1
    sget-object v0, Lcom/meizu/advertise/api/AdManager;->sLock:Ljava/lang/Object;

    sget-wide v2, Lcom/meizu/advertise/api/AdManager;->sTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sWaited:Z

    .line 189
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-nez v0, :cond_2

    .line 190
    const-string v0, "plugin is not installed complete."

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->b(Ljava/lang/String;)I

    .line 194
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    :try_start_3
    const-string v2, "Interrupted!"

    invoke-static {v2, v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/meizu/advertise/api/AdManager;->sWaited:Z

    .line 189
    sget-boolean v0, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-nez v0, :cond_2

    .line 190
    const-string v0, "plugin is not installed complete."

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->b(Ljava/lang/String;)I

    goto :goto_1

    .line 188
    :catchall_1
    move-exception v0

    const/4 v2, 0x1

    sput-boolean v2, Lcom/meizu/advertise/api/AdManager;->sWaited:Z

    .line 189
    sget-boolean v2, Lcom/meizu/advertise/api/AdManager;->sInstalled:Z

    if-nez v2, :cond_3

    .line 190
    const-string v2, "plugin is not installed complete."

    invoke-static {v2}, Lcom/meizu/advertise/b/a;->b(Ljava/lang/String;)I

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
