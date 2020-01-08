.class public Lcom/meizu/gslb2/GslbManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/gslb2/GslbManager$a;
    }
.end annotation


# static fields
.field static sManagerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/gslb2/GslbManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertTimeoutMilli:J

.field private mConverter:Lcom/meizu/gslb2/b;

.field private mEventListener:Lcom/meizu/gslb2/j;

.field private mExecutor:Lcom/meizu/gslb2/q$a;

.field private mGlobalStorageEnable:Z

.field private mGlobalStorageSubDir:Ljava/lang/String;

.field private mLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLogProxy:Lcom/meizu/gslb2/f;

.field private mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mThreadPool:Ljava/util/concurrent/Executor;

.field private mUsage:Lcom/meizu/gslb2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/gslb2/GslbManager;->sManagerList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 36
    const-wide/16 v6, 0x1f4

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v9, v2

    move v10, v8

    move-object v11, v2

    invoke-direct/range {v0 .. v11}, Lcom/meizu/gslb2/GslbManager;-><init>(Landroid/content/Context;Lcom/meizu/gslb2/q$a;Lcom/meizu/gslb2/n;Lcom/meizu/gslb2/k;Ljava/util/concurrent/Executor;JZLjava/lang/String;ZLcom/meizu/gslb2/j;)V

    .line 37
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/meizu/gslb2/q$a;Lcom/meizu/gslb2/n;Lcom/meizu/gslb2/k;Ljava/util/concurrent/Executor;JZLjava/lang/String;ZLcom/meizu/gslb2/j;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mLocks:Ljava/util/Map;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mGlobalStorageSubDir:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mContext:Landroid/content/Context;

    .line 50
    if-eqz p10, :cond_0

    .line 51
    new-instance v0, Lcom/meizu/flyme/internet/c/a;

    iget-object v1, p0, Lcom/meizu/gslb2/GslbManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/flyme/internet/c/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 53
    :cond_0
    if-nez p2, :cond_1

    .line 54
    new-instance p2, Lcom/meizu/gslb2/v;

    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {p2, v0}, Lcom/meizu/gslb2/v;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 56
    :cond_1
    iput-object p2, p0, Lcom/meizu/gslb2/GslbManager;->mExecutor:Lcom/meizu/gslb2/q$a;

    .line 57
    new-instance v0, Lcom/meizu/gslb2/h;

    iget-object v1, p0, Lcom/meizu/gslb2/GslbManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/meizu/gslb2/h;-><init>(Landroid/content/Context;Lcom/meizu/gslb2/n;)V

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mUsage:Lcom/meizu/gslb2/h;

    .line 58
    new-instance v0, Lcom/meizu/gslb2/f;

    invoke-direct {v0, p4}, Lcom/meizu/gslb2/f;-><init>(Lcom/meizu/gslb2/k;)V

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mLogProxy:Lcom/meizu/gslb2/f;

    .line 59
    if-nez p5, :cond_3

    .line 60
    new-instance v0, Lcom/meizu/gslb2/u;

    invoke-direct {v0}, Lcom/meizu/gslb2/u;-><init>()V

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mThreadPool:Ljava/util/concurrent/Executor;

    .line 64
    :goto_0
    iput-wide p6, p0, Lcom/meizu/gslb2/GslbManager;->mConvertTimeoutMilli:J

    .line 65
    iput-boolean p8, p0, Lcom/meizu/gslb2/GslbManager;->mGlobalStorageEnable:Z

    .line 66
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iput-object p9, p0, Lcom/meizu/gslb2/GslbManager;->mGlobalStorageSubDir:Ljava/lang/String;

    .line 69
    :cond_2
    new-instance v0, Lcom/meizu/gslb2/d;

    invoke-direct {v0, p11}, Lcom/meizu/gslb2/d;-><init>(Lcom/meizu/gslb2/j;)V

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mEventListener:Lcom/meizu/gslb2/j;

    .line 70
    new-instance v0, Lcom/meizu/gslb2/b;

    invoke-direct {v0, p0}, Lcom/meizu/gslb2/b;-><init>(Lcom/meizu/gslb2/GslbManager;)V

    iput-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mConverter:Lcom/meizu/gslb2/b;

    .line 71
    sget-object v1, Lcom/meizu/gslb2/GslbManager;->sManagerList:Ljava/util/List;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/meizu/gslb2/GslbManager;->sManagerList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    return-void

    .line 62
    :cond_3
    iput-object p5, p0, Lcom/meizu/gslb2/GslbManager;->mThreadPool:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/meizu/gslb2/q$a;Lcom/meizu/gslb2/n;Lcom/meizu/gslb2/k;Ljava/util/concurrent/Executor;JZLjava/lang/String;ZLcom/meizu/gslb2/j;Lcom/meizu/gslb2/GslbManager$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p11}, Lcom/meizu/gslb2/GslbManager;-><init>(Landroid/content/Context;Lcom/meizu/gslb2/q$a;Lcom/meizu/gslb2/n;Lcom/meizu/gslb2/k;Ljava/util/concurrent/Executor;JZLjava/lang/String;ZLcom/meizu/gslb2/j;)V

    return-void
.end method


# virtual methods
.method context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public convert(Ljava/lang/String;)Lcom/meizu/gslb2/o;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/gslb2/GslbManager;->convert(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/gslb2/o;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/gslb2/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/gslb2/o;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mConverter:Lcom/meizu/gslb2/b;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/gslb2/b;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/gslb2/o;

    move-result-object v0

    return-object v0
.end method

.method convertTimeout()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/meizu/gslb2/GslbManager;->mConvertTimeoutMilli:J

    return-wide v0
.end method

.method public eventListener()Lcom/meizu/gslb2/j;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mEventListener:Lcom/meizu/gslb2/j;

    return-object v0
.end method

.method executor()Lcom/meizu/gslb2/q$a;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mExecutor:Lcom/meizu/gslb2/q$a;

    return-object v0
.end method

.method declared-synchronized getLock(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mLocks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/meizu/gslb2/GslbManager;->mLocks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-object v0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method globalStorageEnable()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/meizu/gslb2/GslbManager;->mGlobalStorageEnable:Z

    return v0
.end method

.method globalStorageSubDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mGlobalStorageSubDir:Ljava/lang/String;

    return-object v0
.end method

.method logger()Lcom/meizu/gslb2/f;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mLogProxy:Lcom/meizu/gslb2/f;

    return-object v0
.end method

.method remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mConverter:Lcom/meizu/gslb2/b;

    invoke-virtual {v0, p1}, Lcom/meizu/gslb2/b;->a(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method threadPool()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mThreadPool:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method usage()Lcom/meizu/gslb2/h;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/gslb2/GslbManager;->mUsage:Lcom/meizu/gslb2/h;

    return-object v0
.end method
