.class public Lcom/meizu/flyme/appcenter/appcentersdk/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile c:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private d:Lokhttp3/w;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "ad-stats"

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->b:Ljava/util/concurrent/ExecutorService;

    .line 43
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a/a;->a()Lokhttp3/w;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->d:Lokhttp3/w;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->e:Ljava/util/Map;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->e:Ljava/util/Map;

    const-string v2, "v"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/flyme/appcenter/appcentersdk/c/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->e:Ljava/util/Map;

    const-string v2, "vc"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/c/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->e:Ljava/util/Map;

    const-string v1, "source"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->e:Ljava/util/Map;

    const-string v1, "cp"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/flyme/appcenter/appcentersdk/c/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Lcom/meizu/flyme/appcenter/appcentersdk/c/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->e:Ljava/util/Map;

    const-string v2, "imei"

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const-string v1, "ad-stats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get packageinfo occurs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/meizu/flyme/appcenter/appcentersdk/b/b;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->c:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->c:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->c:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->c:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/b/b;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/flyme/appcenter/appcentersdk/b/b;)Lokhttp3/w;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->d:Lokhttp3/w;

    return-object v0
.end method


# virtual methods
.method public onEvent(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V
    .locals 2

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/b/b;Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
