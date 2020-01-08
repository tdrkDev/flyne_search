.class public Lcom/meizu/flyme/internet/async/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 13
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/4 v3, 0x6

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/meizu/flyme/internet/async/a$1;

    invoke-direct {v8}, Lcom/meizu/flyme/internet/async/a$1;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/flyme/internet/async/a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/flyme/internet/async/a;->a(Z)Z

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static a(Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 27
    const/4 v1, 0x0

    .line 28
    sget-object v2, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-enter v2

    .line 29
    if-eqz p0, :cond_0

    .line 30
    :try_start_0
    sget-object v3, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    sget-object v4, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v4

    if-ge v3, v4, :cond_1

    sget-object v3, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    sget-object v4, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 32
    sget-object v1, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v3, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 41
    :goto_0
    monitor-exit v2

    .line 42
    return v0

    .line 36
    :cond_0
    sget-object v3, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    if-lez v3, :cond_1

    .line 37
    sget-object v1, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v3, Lcom/meizu/flyme/internet/async/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
