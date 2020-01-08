.class public Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;
.super Lcom/meizu/cloud/pushsdk/base/Proxy;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/base/Proxy",
        "<",
        "Ljava/util/concurrent/Executor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/base/Proxy;-><init>(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public static get()Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;
    .locals 10

    .prologue
    .line 17
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->sInstance:Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    if-nez v0, :cond_1

    .line 18
    const-class v9, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    monitor-enter v9

    .line 19
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->sInstance:Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    new-instance v8, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy$1;

    invoke-direct {v8}, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy$1;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->sInstance:Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    .line 26
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->sInstance:Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method
