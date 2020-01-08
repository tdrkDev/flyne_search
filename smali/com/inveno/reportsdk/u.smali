.class Lcom/inveno/reportsdk/u;
.super Ljava/lang/Thread;


# static fields
.field private static b:Lcom/inveno/reportsdk/u;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile c:Z

.field private d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lcom/inveno/reportsdk/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/reportsdk/u;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/inveno/reportsdk/u;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p0}, Lcom/inveno/reportsdk/u;->start()V

    return-void
.end method

.method static declared-synchronized a()Lcom/inveno/reportsdk/u;
    .locals 3

    const-class v1, Lcom/inveno/reportsdk/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/u;->b:Lcom/inveno/reportsdk/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/u;

    invoke-direct {v0}, Lcom/inveno/reportsdk/u;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/u;->b:Lcom/inveno/reportsdk/u;

    sget-object v0, Lcom/inveno/reportsdk/u;->b:Lcom/inveno/reportsdk/u;

    const-string v2, "OperationQueue"

    invoke-virtual {v0, v2}, Lcom/inveno/reportsdk/u;->setName(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/u;->b:Lcom/inveno/reportsdk/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a(Lcom/inveno/reportsdk/t;)V
    .locals 1

    invoke-virtual {p0}, Lcom/inveno/reportsdk/u;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/inveno/reportsdk/t;->a(I)V

    iget-object v0, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/reportsdk/u;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/u;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_0
    iget-object v0, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/reportsdk/u;->b:Lcom/inveno/reportsdk/u;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/inveno/reportsdk/u;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/inveno/reportsdk/u;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/reportsdk/t;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/t;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v0, p0, Lcom/inveno/reportsdk/u;->c:Z

    if-eqz v0, :cond_0

    return-void
.end method
