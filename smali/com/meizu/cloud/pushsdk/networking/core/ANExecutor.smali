.class public Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor$AndroidNetworkingFutureTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_THREAD_COUNT:I = 0x3


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 9

    .prologue
    .line 43
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 45
    return-void
.end method

.method private setThreadCount(I)V
    .locals 0

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setCorePoolSize(I)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setMaximumPoolSize(I)V

    .line 89
    return-void
.end method


# virtual methods
.method adjustThreadCount(Landroid/net/NetworkInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 49
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setThreadCount(I)V

    .line 84
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 82
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setThreadCount(I)V

    goto :goto_0

    .line 57
    :sswitch_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setThreadCount(I)V

    goto :goto_0

    .line 60
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setThreadCount(I)V

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setThreadCount(I)V

    goto :goto_0

    .line 71
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setThreadCount(I)V

    goto :goto_0

    .line 75
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->setThreadCount(I)V

    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor$AndroidNetworkingFutureTask;

    check-cast p1, Lcom/meizu/cloud/pushsdk/networking/internal/InternalRunnable;

    invoke-direct {v0, p1}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor$AndroidNetworkingFutureTask;-><init>(Lcom/meizu/cloud/pushsdk/networking/internal/InternalRunnable;)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/core/ANExecutor;->execute(Ljava/lang/Runnable;)V

    .line 95
    return-object v0
.end method
