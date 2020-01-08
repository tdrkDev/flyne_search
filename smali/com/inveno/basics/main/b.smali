.class public Lcom/inveno/basics/main/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/inveno/basics/main/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static declared-synchronized a()Lcom/inveno/basics/main/b;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/inveno/basics/main/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/basics/main/b;->a:Lcom/inveno/basics/main/b;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/inveno/basics/main/b;

    invoke-direct {v0}, Lcom/inveno/basics/main/b;-><init>()V

    sput-object v0, Lcom/inveno/basics/main/b;->a:Lcom/inveno/basics/main/b;

    .line 26
    :cond_0
    sget-object v0, Lcom/inveno/basics/main/b;->a:Lcom/inveno/basics/main/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 34
    invoke-static {}, Lcom/inveno/se/NContext;->getInstance()Lcom/inveno/se/NContext;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/NContext;->initConfig(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->setOPENLOG(Z)V

    .line 36
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/inveno/se/CustomController;->setSdkVersion(I)V

    .line 38
    const-string v0, "129"

    const-string v1, "263"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inveno/nxadsdk/d/a;->a(Z)V

    .line 43
    :cond_0
    const-string v0, "zh_CN"

    invoke-static {v0}, Lcom/inveno/se/ZZSDKManager;->setAppLan(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "meizusearch"

    const-string v2, "meizu"

    const-string v3, "2864f44b6b67be71aa87451a318c3c0a"

    const-string v4, "5a9dc5700977632da4bed56f6cc8a5b805c5d72b"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/inveno/se/ZZSDKManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "https://search.inveno.com/moreInfoSearch"

    invoke-static {v0}, Lcom/inveno/se/CustomController;->setKeywordUrl(Ljava/lang/String;)V

    .line 46
    const-string v0, "initSdk\uff1a\u521d\u59cb\u5316"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 47
    return-void
.end method
