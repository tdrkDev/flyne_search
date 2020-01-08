.class public Lcom/inveno/se/volley/CacheDispatcher;
.super Ljava/lang/Thread;


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mCache:Lcom/inveno/se/volley/Cache;

.field private mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

.field private mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;",
            "Lcom/inveno/se/volley/Cache;",
            "Lcom/inveno/se/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/volley/CacheDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/inveno/se/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/inveno/se/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/inveno/se/volley/CacheDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    iput-object p4, p0, Lcom/inveno/se/volley/CacheDispatcher;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    return-void
.end method

.method static synthetic access$000(Lcom/inveno/se/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/se/volley/CacheDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/inveno/se/volley/CacheDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "start new dispatcher"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/inveno/se/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/inveno/se/volley/CacheDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/CacheDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    invoke-interface {v0}, Lcom/inveno/se/volley/Cache;->initialize()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/Request;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/inveno/se/volley/CacheDispatcher;->mQuit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/inveno/se/volley/CacheDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/inveno/se/volley/CacheDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/inveno/se/volley/Cache;->get(Ljava/lang/String;)Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/inveno/se/tools/d;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/inveno/se/tools/URLUtils;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    instance-of v2, v0, Lcom/inveno/se/volley/toolbox/ImageRequest;

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/inveno/se/volley/Cache$Entry;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->setCacheEntry(Lcom/inveno/se/volley/Cache$Entry;)V

    iget-object v1, p0, Lcom/inveno/se/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    new-instance v2, Lcom/inveno/se/volley/NetworkResponse;

    iget-object v3, v1, Lcom/inveno/se/volley/Cache$Entry;->data:[B

    iget-object v4, v1, Lcom/inveno/se/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/inveno/se/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/inveno/se/volley/Request;->parseNetworkResponse(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Response;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inveno/se/volley/Cache$Entry;->refreshNeeded()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/inveno/se/tools/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/inveno/se/tools/URLUtils;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/inveno/se/volley/CacheDispatcher;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    invoke-interface {v1, v0, v2}, Lcom/inveno/se/volley/ResponseDelivery;->postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->setCacheEntry(Lcom/inveno/se/volley/Cache$Entry;)V

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/inveno/se/volley/Response;->intermediate:Z

    iget-object v1, p0, Lcom/inveno/se/volley/CacheDispatcher;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    new-instance v3, Lcom/inveno/se/volley/CacheDispatcher$1;

    invoke-direct {v3, p0, v0}, Lcom/inveno/se/volley/CacheDispatcher$1;-><init>(Lcom/inveno/se/volley/CacheDispatcher;Lcom/inveno/se/volley/Request;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/inveno/se/volley/ResponseDelivery;->postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
