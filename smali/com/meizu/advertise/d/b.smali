.class public Lcom/meizu/advertise/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/advertise/d/b$a;
    }
.end annotation


# direct methods
.method public static a(IJ)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .prologue
    .line 20
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 21
    new-instance v8, Lcom/meizu/advertise/d/b$a;

    const-string v0, "AdSdk"

    invoke-direct {v8, v0}, Lcom/meizu/advertise/d/b$a;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v2, p0

    move v3, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 24
    return-object v1
.end method
