.class Lcom/inveno/reportsdk/ad;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/inveno/reportsdk/ad;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inveno/reportsdk/ad;->b:Landroid/os/Handler;

    new-instance v0, Lcom/inveno/reportsdk/ae;

    invoke-direct {v0, p0}, Lcom/inveno/reportsdk/ae;-><init>(Lcom/inveno/reportsdk/ad;)V

    iput-object v0, p0, Lcom/inveno/reportsdk/ad;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static declared-synchronized a()Lcom/inveno/reportsdk/ad;
    .locals 2

    const-class v1, Lcom/inveno/reportsdk/ad;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/ad;->a:Lcom/inveno/reportsdk/ad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/ad;

    invoke-direct {v0}, Lcom/inveno/reportsdk/ad;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/ad;->a:Lcom/inveno/reportsdk/ad;

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/ad;->a:Lcom/inveno/reportsdk/ad;
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
.method b()V
    .locals 4

    iget-object v0, p0, Lcom/inveno/reportsdk/ad;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inveno/reportsdk/ad;->c:Ljava/lang/Runnable;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method c()V
    .locals 2

    iget-object v0, p0, Lcom/inveno/reportsdk/ad;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inveno/reportsdk/ad;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/inveno/reportsdk/ad;->b()V

    return-void
.end method

.method declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/reportsdk/ad;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/ad;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/ad;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inveno/reportsdk/ad;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/ad;->c:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/ad;->b:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/reportsdk/ad;->a:Lcom/inveno/reportsdk/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
