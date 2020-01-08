.class public Lcom/inveno/se/volley/toolbox/Volley;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CACHE_DIR:Ljava/lang/String; = "piconfig"

.field private static volatile instance:Lcom/inveno/se/volley/toolbox/Volley;


# instance fields
.field private queue:Lcom/inveno/se/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/volley/toolbox/Volley;->instance:Lcom/inveno/se/volley/toolbox/Volley;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/io/File;

    const-string v0, "piconfig"

    invoke-static {p1, v0}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "volley/0"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    new-instance v0, Lcom/inveno/se/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/inveno/se/volley/toolbox/HurlStack;-><init>()V

    :goto_1
    new-instance v1, Lcom/inveno/se/volley/toolbox/BasicNetwork;

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/toolbox/BasicNetwork;-><init>(Lcom/inveno/se/volley/toolbox/HttpStack;)V

    new-instance v0, Lcom/inveno/se/volley/RequestQueue;

    new-instance v3, Lcom/inveno/se/volley/toolbox/DiskBasedCache;

    invoke-direct {v3, v2}, Lcom/inveno/se/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3, v1}, Lcom/inveno/se/volley/RequestQueue;-><init>(Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/Network;)V

    iput-object v0, p0, Lcom/inveno/se/volley/toolbox/Volley;->queue:Lcom/inveno/se/volley/RequestQueue;

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/Volley;->queue:Lcom/inveno/se/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/inveno/se/volley/RequestQueue;->start()V

    return-void

    :cond_0
    new-instance v1, Lcom/inveno/se/volley/toolbox/HttpClientStack;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/toolbox/HttpClientStack;-><init>(Lorg/apache/http/client/HttpClient;)V

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/inveno/se/volley/toolbox/Volley;
    .locals 2

    sget-object v0, Lcom/inveno/se/volley/toolbox/Volley;->instance:Lcom/inveno/se/volley/toolbox/Volley;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/inveno/se/volley/toolbox/Volley;->instance:Lcom/inveno/se/volley/toolbox/Volley;

    return-object v0

    :cond_0
    const-class v1, Lcom/inveno/se/volley/toolbox/Volley;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/volley/toolbox/Volley;->instance:Lcom/inveno/se/volley/toolbox/Volley;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inveno/se/volley/toolbox/Volley;

    invoke-direct {v0, p0}, Lcom/inveno/se/volley/toolbox/Volley;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/volley/toolbox/Volley;->instance:Lcom/inveno/se/volley/toolbox/Volley;

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public newRequestQueue()Lcom/inveno/se/volley/RequestQueue;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/Volley;->queue:Lcom/inveno/se/volley/RequestQueue;

    return-object v0
.end method
