.class Lcom/inveno/transcode/presenter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/transcode/presenter/a;


# direct methods
.method constructor <init>(Lcom/inveno/transcode/presenter/a;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/inveno/transcode/presenter/b;->a:Lcom/inveno/transcode/presenter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/inveno/transcode/presenter/b;->a:Lcom/inveno/transcode/presenter/a;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/b;->a:Lcom/inveno/transcode/presenter/a;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a;->a(Lcom/inveno/transcode/presenter/a;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 261
    monitor-exit v1

    .line 269
    :goto_0
    return-object v3

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/b;->a:Lcom/inveno/transcode/presenter/a;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a;->b(Lcom/inveno/transcode/presenter/a;)V

    .line 264
    iget-object v0, p0, Lcom/inveno/transcode/presenter/b;->a:Lcom/inveno/transcode/presenter/a;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a;->c(Lcom/inveno/transcode/presenter/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/inveno/transcode/presenter/b;->a:Lcom/inveno/transcode/presenter/a;

    invoke-static {v0}, Lcom/inveno/transcode/presenter/a;->d(Lcom/inveno/transcode/presenter/a;)V

    .line 266
    iget-object v0, p0, Lcom/inveno/transcode/presenter/b;->a:Lcom/inveno/transcode/presenter/a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/inveno/transcode/presenter/a;->a(Lcom/inveno/transcode/presenter/a;I)I

    .line 268
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/inveno/transcode/presenter/b;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
