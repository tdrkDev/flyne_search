.class public Lcom/inveno/se/volley/RequestQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/volley/RequestQueue$RequestFilter;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x3


# instance fields
.field private mCache:Lcom/inveno/se/volley/Cache;

.field private mCacheDispatcher:Lcom/inveno/se/volley/CacheDispatcher;

.field private mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

.field private mDispatchers:[Lcom/inveno/se/volley/NetworkDispatcher;

.field private final mNetwork:Lcom/inveno/se/volley/Network;

.field private mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWaitingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/inveno/se/volley/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/Network;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/inveno/se/volley/RequestQueue;-><init>(Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/Network;I)V
    .locals 3

    new-instance v0, Lcom/inveno/se/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/inveno/se/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inveno/se/volley/RequestQueue;-><init>(Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/Network;ILcom/inveno/se/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/Network;ILcom/inveno/se/volley/ResponseDelivery;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iput-object p1, p0, Lcom/inveno/se/volley/RequestQueue;->mCache:Lcom/inveno/se/volley/Cache;

    iput-object p2, p0, Lcom/inveno/se/volley/RequestQueue;->mNetwork:Lcom/inveno/se/volley/Network;

    new-array v0, p3, [Lcom/inveno/se/volley/NetworkDispatcher;

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mDispatchers:[Lcom/inveno/se/volley/NetworkDispatcher;

    iput-object p4, p0, Lcom/inveno/se/volley/RequestQueue;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    invoke-static {p3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public add(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/Request;
    .locals 5

    invoke-virtual {p1, p0}, Lcom/inveno/se/volley/Request;->setRequestQueue(Lcom/inveno/se/volley/RequestQueue;)V

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/inveno/se/volley/RequestQueue;->getSequenceNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/inveno/se/volley/Request;->setSequence(I)V

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object p1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/inveno/se/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method

.method public cancelAll(Lcom/inveno/se/volley/RequestQueue$RequestFilter;)V
    .locals 4

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/Request;

    invoke-interface {p1, v0}, Lcom/inveno/se/volley/RequestQueue$RequestFilter;->apply(Lcom/inveno/se/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/volley/Request;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot cancelAll with a null tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/inveno/se/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/inveno/se/volley/RequestQueue$1;-><init>(Lcom/inveno/se/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/inveno/se/volley/RequestQueue;->cancelAll(Lcom/inveno/se/volley/RequestQueue$RequestFilter;)V

    return-void
.end method

.method finish(Lcom/inveno/se/volley/Request;)V
    .locals 7

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mWaitingRequests:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-eqz v0, :cond_1

    const-string v3, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/inveno/se/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getCache()Lcom/inveno/se/volley/Cache;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCache:Lcom/inveno/se/volley/Cache;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCache:Lcom/inveno/se/volley/Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCache:Lcom/inveno/se/volley/Cache;

    invoke-interface {v0}, Lcom/inveno/se/volley/Cache;->clearMap()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCache:Lcom/inveno/se/volley/Cache;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    invoke-virtual {p0}, Lcom/inveno/se/volley/RequestQueue;->stop()V

    new-instance v0, Lcom/inveno/se/volley/CacheDispatcher;

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/inveno/se/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/inveno/se/volley/RequestQueue;->mCache:Lcom/inveno/se/volley/Cache;

    iget-object v4, p0, Lcom/inveno/se/volley/RequestQueue;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inveno/se/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/ResponseDelivery;)V

    iput-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheDispatcher:Lcom/inveno/se/volley/CacheDispatcher;

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheDispatcher:Lcom/inveno/se/volley/CacheDispatcher;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mDispatchers:[Lcom/inveno/se/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Lcom/inveno/se/volley/NetworkDispatcher;

    iget-object v2, p0, Lcom/inveno/se/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/inveno/se/volley/RequestQueue;->mNetwork:Lcom/inveno/se/volley/Network;

    iget-object v4, p0, Lcom/inveno/se/volley/RequestQueue;->mCache:Lcom/inveno/se/volley/Cache;

    iget-object v5, p0, Lcom/inveno/se/volley/RequestQueue;->mDelivery:Lcom/inveno/se/volley/ResponseDelivery;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/inveno/se/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/inveno/se/volley/Network;Lcom/inveno/se/volley/Cache;Lcom/inveno/se/volley/ResponseDelivery;)V

    iget-object v2, p0, Lcom/inveno/se/volley/RequestQueue;->mDispatchers:[Lcom/inveno/se/volley/NetworkDispatcher;

    aput-object v1, v2, v0

    iget-object v2, p0, Lcom/inveno/se/volley/RequestQueue;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheDispatcher:Lcom/inveno/se/volley/CacheDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/RequestQueue;->mCacheDispatcher:Lcom/inveno/se/volley/CacheDispatcher;

    invoke-virtual {v0}, Lcom/inveno/se/volley/CacheDispatcher;->quit()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mDispatchers:[Lcom/inveno/se/volley/NetworkDispatcher;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mDispatchers:[Lcom/inveno/se/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue;->mDispatchers:[Lcom/inveno/se/volley/NetworkDispatcher;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/inveno/se/volley/NetworkDispatcher;->quit()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
