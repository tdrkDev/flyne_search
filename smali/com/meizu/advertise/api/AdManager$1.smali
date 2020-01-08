.class final Lcom/meizu/advertise/api/AdManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/advertise/api/AdManager;->installPlugin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->access$000()Lcom/meizu/advertise/update/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 104
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->access$202(Z)Z

    .line 105
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v1

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 103
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 104
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Lcom/meizu/advertise/api/AdManager;->access$202(Z)Z

    .line 105
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->access$100()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method
