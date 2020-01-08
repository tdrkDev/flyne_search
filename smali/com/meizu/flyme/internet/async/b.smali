.class public Lcom/meizu/flyme/internet/async/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/meizu/flyme/internet/async/Schedule$Type;",
            "Lcom/meizu/flyme/internet/async/Schedule;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/meizu/flyme/internet/async/Schedule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/flyme/internet/async/b;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 21
    return-object v0
.end method

.method public static a()Lcom/meizu/flyme/internet/async/Schedule;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/meizu/flyme/internet/async/b;->b:Lcom/meizu/flyme/internet/async/Schedule;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lcom/meizu/flyme/internet/async/Schedule$Type;->EVENT:Lcom/meizu/flyme/internet/async/Schedule$Type;

    invoke-static {v0}, Lcom/meizu/flyme/internet/async/b;->a(Lcom/meizu/flyme/internet/async/Schedule$Type;)Lcom/meizu/flyme/internet/async/Schedule;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/internet/async/b;->b:Lcom/meizu/flyme/internet/async/Schedule;

    .line 64
    :cond_0
    sget-object v0, Lcom/meizu/flyme/internet/async/b;->b:Lcom/meizu/flyme/internet/async/Schedule;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/meizu/flyme/internet/async/Schedule$Type;)Lcom/meizu/flyme/internet/async/Schedule;
    .locals 4

    .prologue
    .line 25
    const-class v1, Lcom/meizu/flyme/internet/async/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/flyme/internet/async/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/internet/async/Schedule;

    .line 26
    if-nez v0, :cond_0

    .line 27
    sget-object v2, Lcom/meizu/flyme/internet/async/b$1;->a:[I

    invoke-virtual {p0}, Lcom/meizu/flyme/internet/async/Schedule$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 41
    :goto_0
    sget-object v2, Lcom/meizu/flyme/internet/async/b;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit v1

    return-object v0

    .line 29
    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/meizu/flyme/internet/async/Schedule;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/flyme/internet/async/Schedule;-><init>(Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 32
    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/meizu/flyme/internet/async/Schedule;

    const-string v2, "io"

    invoke-static {v2}, Lcom/meizu/flyme/internet/async/b;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/flyme/internet/async/Schedule;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 35
    :pswitch_2
    new-instance v0, Lcom/meizu/flyme/internet/async/Schedule;

    const-string v2, "event"

    invoke-static {v2}, Lcom/meizu/flyme/internet/async/b;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/flyme/internet/async/Schedule;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    .line 38
    :pswitch_3
    new-instance v0, Lcom/meizu/flyme/internet/async/Schedule;

    const-string v2, "computation"

    invoke-static {v2}, Lcom/meizu/flyme/internet/async/b;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/meizu/flyme/internet/async/Schedule;-><init>(Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
