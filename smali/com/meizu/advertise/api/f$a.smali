.class Lcom/meizu/advertise/api/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/update/component/e;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/api/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meizu/update/component/e;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lcom/meizu/update/util/PluginUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/meizu/update/util/PluginUpdateInfo;

.field private c:Ljava/lang/Exception;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/advertise/api/f$a;->a:Z

    .line 127
    return-void
.end method

.method static a()Lcom/meizu/advertise/api/f$a;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/meizu/advertise/api/f$a;

    invoke-direct {v0}, Lcom/meizu/advertise/api/f$a;-><init>()V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Long;)Lcom/meizu/update/util/PluginUpdateInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/advertise/api/f$a;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/meizu/advertise/api/f$a;->c:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 155
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/meizu/advertise/api/f$a;->a:Z

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/meizu/advertise/api/f$a;->b:Lcom/meizu/update/util/PluginUpdateInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :goto_0
    monitor-exit p0

    return-object v0

    .line 159
    :cond_1
    if-nez p1, :cond_3

    .line 160
    const-wide/16 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 165
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/meizu/advertise/api/f$a;->c:Ljava/lang/Exception;

    if-eqz v0, :cond_4

    .line 166
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lcom/meizu/advertise/api/f$a;->c:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 161
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 162
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 169
    :cond_4
    iget-boolean v0, p0, Lcom/meizu/advertise/api/f$a;->a:Z

    if-nez v0, :cond_5

    .line 170
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/meizu/advertise/api/f$a;->b:Lcom/meizu/update/util/PluginUpdateInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lcom/meizu/update/util/PluginUpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/advertise/api/f$a;->a(Ljava/lang/Long;)Lcom/meizu/update/util/PluginUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/update/util/PluginUpdateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no plugin update info, code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/advertise/api/f$a;->b:Lcom/meizu/update/util/PluginUpdateInfo;

    .line 194
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/advertise/api/f$a;->a:Z

    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/update/util/PluginUpdateInfo;

    iput-object v0, p0, Lcom/meizu/advertise/api/f$a;->b:Lcom/meizu/update/util/PluginUpdateInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Lcom/meizu/update/util/PluginUpdateInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/meizu/advertise/api/f$a;->a(Ljava/lang/Long;)Lcom/meizu/update/util/PluginUpdateInfo;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public declared-synchronized cancel(Z)Z
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/meizu/advertise/api/f$a;->b()Lcom/meizu/update/util/PluginUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/advertise/api/f$a;->a(JLjava/util/concurrent/TimeUnit;)Lcom/meizu/update/util/PluginUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/advertise/api/f$a;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/advertise/api/f$a;->c:Ljava/lang/Exception;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/advertise/api/f$a;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
