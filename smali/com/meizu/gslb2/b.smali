.class Lcom/meizu/gslb2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/gslb2/b$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/gslb2/DomainIpInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/meizu/gslb2/b$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/meizu/gslb2/GslbManager;

.field private b:Lcom/meizu/gslb2/q;

.field private c:Lcom/meizu/storage2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/gslb2/b;->d:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/gslb2/b;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/gslb2/GslbManager;)V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    .line 28
    new-instance v0, Lcom/meizu/gslb2/q;

    iget-object v1, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-direct {v0, v1}, Lcom/meizu/gslb2/q;-><init>(Lcom/meizu/gslb2/GslbManager;)V

    iput-object v0, p0, Lcom/meizu/gslb2/b;->b:Lcom/meizu/gslb2/q;

    .line 29
    invoke-virtual {p1}, Lcom/meizu/gslb2/GslbManager;->globalStorageEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Lcom/meizu/storage2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/meizu/gslb2/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/gslb2/GslbManager;->globalStorageSubDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gslb_global_storage"

    invoke-direct {v0, v1, v2}, Lcom/meizu/storage2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gslb2/b;->c:Lcom/meizu/storage2/b;

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/meizu/gslb2/g;

    invoke-virtual {p1}, Lcom/meizu/gslb2/GslbManager;->context()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.meizu.gslb.v2.1"

    invoke-direct {v0, v1, v2}, Lcom/meizu/gslb2/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/gslb2/b;->c:Lcom/meizu/storage2/b;

    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/gslb2/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/gslb2/b$a;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v6, Lcom/meizu/gslb2/b;->e:Ljava/util/Map;

    monitor-enter v6

    .line 60
    :try_start_0
    sget-object v0, Lcom/meizu/gslb2/b;->e:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/gslb2/b$a;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    monitor-exit v6

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/meizu/gslb2/b$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/gslb2/b$a;-><init>(Lcom/meizu/gslb2/b;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    sget-object v1, Lcom/meizu/gslb2/b;->e:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    monitor-exit v6

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/gslb2/o;
    .locals 5

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    sget-object v2, Lcom/meizu/gslb2/b;->d:Ljava/util/Map;

    monitor-enter v2

    .line 39
    :try_start_0
    sget-object v0, Lcom/meizu/gslb2/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/gslb2/DomainIpInfo;

    .line 40
    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/meizu/gslb2/DomainIpInfo;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/meizu/gslb2/DomainIpInfo;->getIpInfo()Lcom/meizu/gslb2/o;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 43
    iget-object v1, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v1}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/meizu/gslb2/f;->b(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lcom/meizu/gslb2/DomainIpInfo;->getIpInfo()Lcom/meizu/gslb2/o;

    move-result-object v0

    .line 51
    :goto_0
    monitor-exit v2

    .line 52
    return-object v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expired, remove it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/gslb2/f;->c(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/meizu/gslb2/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/meizu/gslb2/b;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/meizu/gslb2/b;)Lcom/meizu/storage2/b;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/gslb2/b;->c:Lcom/meizu/storage2/b;

    return-object v0
.end method

.method static synthetic c(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/q;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/gslb2/b;->b:Lcom/meizu/gslb2/q;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/gslb2/o;
    .locals 6
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
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/meizu/gslb2/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0, p1}, Lcom/meizu/gslb2/GslbManager;->getLock(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from cache[0]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/meizu/gslb2/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/gslb2/o;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-object v0

    .line 85
    :cond_0
    monitor-enter v2

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->threadPool()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v2, p1, v1, p2}, Lcom/meizu/gslb2/b;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/gslb2/b$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/meizu/gslb2/b;->a:Lcom/meizu/gslb2/GslbManager;

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->convertTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from cached[1]!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/meizu/gslb2/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/gslb2/o;

    move-result-object v0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/meizu/gslb2/c;->a()Lcom/meizu/gslb2/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/meizu/gslb2/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/gslb2/i;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/meizu/gslb2/b;->c:Lcom/meizu/storage2/b;

    invoke-interface {v1, v0}, Lcom/meizu/storage2/b;->b(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/meizu/gslb2/b;->d:Ljava/util/Map;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v2, Lcom/meizu/gslb2/b;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
