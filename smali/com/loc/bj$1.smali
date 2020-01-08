.class final Lcom/loc/bj$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/loc/bj;


# direct methods
.method constructor <init>(Lcom/loc/bj;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    const/4 v0, 0x2

    iput v0, p0, Lcom/loc/bj$1;->a:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v2}, Lcom/loc/bj;->c(Lcom/loc/bj;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v2}, Lcom/loc/bj;->d(Lcom/loc/bj;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v2}, Lcom/loc/bj;->e(Lcom/loc/bj;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v2}, Lcom/loc/bj;->f(Lcom/loc/bj;)V

    :cond_0
    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v0}, Lcom/loc/bj;->g(Lcom/loc/bj;)Lcom/loc/bl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v0}, Lcom/loc/bj;->g(Lcom/loc/bj;)Lcom/loc/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v1}, Lcom/loc/bj;->h(Lcom/loc/bj;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/bl;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    iget v1, p0, Lcom/loc/bj$1;->a:I

    invoke-static {v0, v1}, Lcom/loc/bj;->a(Lcom/loc/bj;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CollectionManager"

    const-string v2, "timerTaskU run"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/loc/bj$1;->b:Lcom/loc/bj;

    invoke-static {v0}, Lcom/loc/bj;->f(Lcom/loc/bj;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
