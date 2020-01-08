.class public Lcom/inveno/se/volley/NetworkDispatcher;
.super Ljava/lang/Thread;


# instance fields
.field private mCache:Lcom/inveno/se/volley/Cache;

.field private mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

.field private mNetwork:Lcom/inveno/se/volley/Network;

.field private mQueue:Ljava/util/concurrent/BlockingQueue;
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
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/inveno/se/volley/Network;Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;",
            "Lcom/inveno/se/volley/Network;",
            "Lcom/inveno/se/volley/Cache;",
            "Lcom/inveno/se/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mQuit:Z

    iput-object p1, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mNetwork:Lcom/inveno/se/volley/Network;

    iput-object p3, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    iput-object p4, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Lcom/inveno/se/volley/VolleyError;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/inveno/se/volley/Request;->parseNetworkError(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/VolleyError;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    invoke-interface {v1, p1, v0}, Lcom/inveno/se/volley/ResponseDelivery;->postError(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mQuit:Z

    invoke-virtual {p0}, Lcom/inveno/se/volley/NetworkDispatcher;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/Request;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "network-queue-take"

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "network-discard-cancelled"

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/inveno/se/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v0, v1}, Lcom/inveno/se/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-boolean v0, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_1
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_2
    const-string v1, "------------go to performRequest-------"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mNetwork:Lcom/inveno/se/volley/Network;

    invoke-interface {v1, v0}, Lcom/inveno/se/volley/Network;->performRequest(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/NetworkResponse;

    move-result-object v1

    const-string v2, "network-http-complete"

    invoke-virtual {v0, v2}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/inveno/se/volley/NetworkResponse;->notModified:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->hasHadResponseDelivered()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "not-modified"

    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/inveno/se/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Unhandled exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/inveno/se/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    new-instance v3, Lcom/inveno/se/volley/VolleyError;

    invoke-direct {v3, v1}, Lcom/inveno/se/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v0, v3}, Lcom/inveno/se/volley/ResponseDelivery;->postError(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/inveno/se/volley/Request;->parseNetworkResponse(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Response;

    move-result-object v1

    const-string v2, "network-parse-complete"

    invoke-virtual {v0, v2}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->shouldCache()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/inveno/se/volley/Response;->cacheEntry:Lcom/inveno/se/volley/Cache$Entry;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mCache:Lcom/inveno/se/volley/Cache;

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/inveno/se/volley/Response;->cacheEntry:Lcom/inveno/se/volley/Cache$Entry;

    invoke-interface {v2, v3, v4}, Lcom/inveno/se/volley/Cache;->put(Ljava/lang/String;Lcom/inveno/se/volley/Cache$Entry;)V

    const-string v2, "network-cache-written"

    invoke-virtual {v0, v2}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->markDelivered()V

    iget-object v2, p0, Lcom/inveno/se/volley/NetworkDispatcher;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    invoke-interface {v2, v0, v1}, Lcom/inveno/se/volley/ResponseDelivery;->postResponse(Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/Response;)V
    :try_end_3
    .catch Lcom/inveno/se/volley/VolleyError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method
