.class Lcom/bumptech/glide/load/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/d$a;
.implements Lcom/bumptech/glide/util/a/a$c;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/f$g;,
        Lcom/bumptech/glide/load/b/f$f;,
        Lcom/bumptech/glide/load/b/f$d;,
        Lcom/bumptech/glide/load/b/f$a;,
        Lcom/bumptech/glide/load/b/f$c;,
        Lcom/bumptech/glide/load/b/f$e;,
        Lcom/bumptech/glide/load/b/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/d$a;",
        "Lcom/bumptech/glide/util/a/a$c;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/bumptech/glide/load/b/f",
        "<*>;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private A:Lcom/bumptech/glide/load/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/b",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile B:Lcom/bumptech/glide/load/b/d;

.field private volatile C:Z

.field private volatile D:Z

.field final a:Lcom/bumptech/glide/load/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/e",
            "<TR;>;"
        }
    .end annotation
.end field

.field final b:Lcom/bumptech/glide/load/b/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/f$c",
            "<*>;"
        }
    .end annotation
.end field

.field c:Lcom/bumptech/glide/load/g;

.field d:I

.field e:I

.field f:Lcom/bumptech/glide/load/b/h;

.field g:Lcom/bumptech/glide/load/i;

.field h:Lcom/bumptech/glide/load/g;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bumptech/glide/util/a/b;

.field private final k:Lcom/bumptech/glide/load/b/f$d;

.field private final l:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/b/f",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/bumptech/glide/load/b/f$e;

.field private n:Lcom/bumptech/glide/GlideContext;

.field private o:Lcom/bumptech/glide/f;

.field private p:Lcom/bumptech/glide/load/b/l;

.field private q:Lcom/bumptech/glide/load/b/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/f$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lcom/bumptech/glide/load/b/f$g;

.field private t:Lcom/bumptech/glide/load/b/f$f;

.field private u:J

.field private v:Z

.field private w:Ljava/lang/Thread;

.field private x:Lcom/bumptech/glide/load/g;

.field private y:Ljava/lang/Object;

.field private z:Lcom/bumptech/glide/load/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/f$d;Landroid/support/v4/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/f$d;",
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/bumptech/glide/load/b/f",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/bumptech/glide/load/b/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->i:Ljava/util/List;

    .line 45
    invoke-static {}, Lcom/bumptech/glide/util/a/b;->a()Lcom/bumptech/glide/util/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->j:Lcom/bumptech/glide/util/a/b;

    .line 48
    new-instance v0, Lcom/bumptech/glide/load/b/f$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/f$c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/f$c;

    .line 49
    new-instance v0, Lcom/bumptech/glide/load/b/f$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/f$e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->m:Lcom/bumptech/glide/load/b/f$e;

    .line 78
    iput-object p1, p0, Lcom/bumptech/glide/load/b/f;->k:Lcom/bumptech/glide/load/b/f$d;

    .line 79
    iput-object p2, p0, Lcom/bumptech/glide/load/b/f;->l:Landroid/support/v4/util/Pools$Pool;

    .line 80
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/f$g;)Lcom/bumptech/glide/load/b/f$g;
    .locals 3

    .prologue
    .line 325
    sget-object v0, Lcom/bumptech/glide/load/b/f$1;->b:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/f$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->f:Lcom/bumptech/glide/load/b/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/f$g;

    .line 337
    :goto_0
    return-object v0

    .line 327
    :cond_0
    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/f$g;

    .line 328
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/b/f$g;)Lcom/bumptech/glide/load/b/f$g;

    move-result-object v0

    goto :goto_0

    .line 330
    :pswitch_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->f:Lcom/bumptech/glide/load/b/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/h;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/f$g;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/f$g;

    .line 331
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/b/f$g;)Lcom/bumptech/glide/load/b/f$g;

    move-result-object v0

    goto :goto_0

    .line 334
    :pswitch_2
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->v:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->FINISHED:Lcom/bumptech/glide/load/b/f$g;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->SOURCE:Lcom/bumptech/glide/load/b/f$g;

    goto :goto_0

    .line 337
    :pswitch_3
    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->FINISHED:Lcom/bumptech/glide/load/b/f$g;

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/bumptech/glide/load/a/b;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/b/s;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/load/b/s",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/o;
        }
    .end annotation

    .prologue
    .line 436
    if-nez p2, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 446
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/b;->a()V

    .line 444
    :goto_0
    return-object v0

    .line 439
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v2

    .line 440
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/b/s;

    move-result-object v0

    .line 441
    const-string v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoded result "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/a/b;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/b;->a()V

    throw v0
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            ")",
            "Lcom/bumptech/glide/load/b/s",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/o;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/e;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/q;

    move-result-object v0

    .line 454
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/b/q;)Lcom/bumptech/glide/load/b/s;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/b/q;)Lcom/bumptech/glide/load/b/s;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/b/q",
            "<TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/b/s",
            "<TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/load/b/o;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/i;

    move-result-object v2

    .line 479
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->c()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/c;

    move-result-object v1

    .line 482
    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/b/f;->d:I

    iget v4, p0, Lcom/bumptech/glide/load/b/f;->e:I

    new-instance v5, Lcom/bumptech/glide/load/b/f$b;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/b/f$b;-><init>(Lcom/bumptech/glide/load/b/f;Lcom/bumptech/glide/load/a;)V

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/b/q;->a(Lcom/bumptech/glide/load/a/c;Lcom/bumptech/glide/load/i;IILcom/bumptech/glide/load/b/g$a;)Lcom/bumptech/glide/load/b/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 485
    invoke-interface {v1}, Lcom/bumptech/glide/load/a/c;->b()V

    .line 482
    return-object v0

    .line 485
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/c;->b()V

    throw v0
.end method

.method private a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/i;
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->g:Lcom/bumptech/glide/load/i;

    .line 459
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-object v0

    .line 463
    :cond_1
    sget-object v1, Lcom/bumptech/glide/load/d/a/l;->d:Lcom/bumptech/glide/load/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 467
    sget-object v1, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    .line 468
    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/e;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/i;-><init>()V

    .line 470
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->g:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/i;)V

    .line 471
    sget-object v1, Lcom/bumptech/glide/load/d/a/l;->d:Lcom/bumptech/glide/load/h;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    goto :goto_0
.end method

.method private a(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->m()V

    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->q:Lcom/bumptech/glide/load/b/f$a;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/b/f$a;->a(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/a;)V

    .line 314
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 491
    return-void
.end method

.method private a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 494
    const-string v1, "DecodeJob"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/d;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", load key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void

    .line 494
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/bumptech/glide/load/b/f;)Lcom/bumptech/glide/GlideContext;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/GlideContext;

    return-object v0
.end method

.method private b(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<TR;>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 407
    instance-of v0, p1, Lcom/bumptech/glide/load/b/p;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 408
    check-cast v0, Lcom/bumptech/glide/load/b/p;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/p;->a()V

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 413
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/f$c;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/f$c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    invoke-static {p1}, Lcom/bumptech/glide/load/b/r;->a(Lcom/bumptech/glide/load/b/s;)Lcom/bumptech/glide/load/b/r;

    move-result-object v0

    move-object p1, v0

    .line 418
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/a;)V

    .line 420
    sget-object v1, Lcom/bumptech/glide/load/b/f$g;->ENCODE:Lcom/bumptech/glide/load/b/f$g;

    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/f$c;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/f$c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/f$c;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->k:Lcom/bumptech/glide/load/b/f$d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/f;->g:Lcom/bumptech/glide/load/i;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/b/f$c;->a(Lcom/bumptech/glide/load/b/f$d;Lcom/bumptech/glide/load/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_2
    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/r;->a()V

    .line 429
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->e()V

    .line 431
    return-void

    .line 426
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 427
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/r;->a()V

    .line 429
    :cond_4
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->e()V

    throw v1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->m:Lcom/bumptech/glide/load/b/f$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/f$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->g()V

    .line 159
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->m:Lcom/bumptech/glide/load/b/f$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/f$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->g()V

    .line 168
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->m:Lcom/bumptech/glide/load/b/f$e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/f$e;->c()V

    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->b:Lcom/bumptech/glide/load/b/f$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/f$c;->b()V

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/e;->a()V

    .line 174
    iput-boolean v2, p0, Lcom/bumptech/glide/load/b/f;->C:Z

    .line 175
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/GlideContext;

    .line 176
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/load/g;

    .line 177
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->g:Lcom/bumptech/glide/load/i;

    .line 178
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/f;

    .line 179
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/l;

    .line 180
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->q:Lcom/bumptech/glide/load/b/f$a;

    .line 181
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    .line 182
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->B:Lcom/bumptech/glide/load/b/d;

    .line 183
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->w:Ljava/lang/Thread;

    .line 184
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->h:Lcom/bumptech/glide/load/g;

    .line 185
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->y:Ljava/lang/Object;

    .line 186
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->z:Lcom/bumptech/glide/load/a;

    .line 187
    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bumptech/glide/load/b/f;->u:J

    .line 189
    iput-boolean v2, p0, Lcom/bumptech/glide/load/b/f;->D:Z

    .line 190
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 191
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->l:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 192
    return-void
.end method

.method private h()I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/f;

    invoke-virtual {v0}, Lcom/bumptech/glide/f;->ordinal()I

    move-result v0

    return v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 249
    sget-object v0, Lcom/bumptech/glide/load/b/f$1;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->t:Lcom/bumptech/glide/load/b/f$f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/f$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->t:Lcom/bumptech/glide/load/b/f$f;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :pswitch_0
    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->INITIALIZE:Lcom/bumptech/glide/load/b/f$g;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/b/f$g;)Lcom/bumptech/glide/load/b/f$g;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    .line 252
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->j()Lcom/bumptech/glide/load/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->B:Lcom/bumptech/glide/load/b/d;

    .line 253
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->k()V

    .line 264
    :goto_0
    return-void

    .line 256
    :pswitch_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->k()V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->n()V

    goto :goto_0

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j()Lcom/bumptech/glide/load/b/d;
    .locals 3

    .prologue
    .line 267
    sget-object v0, Lcom/bumptech/glide/load/b/f$1;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/f$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :pswitch_0
    new-instance v0, Lcom/bumptech/glide/load/b/t;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/b/t;-><init>(Lcom/bumptech/glide/load/b/e;Lcom/bumptech/glide/load/b/d$a;)V

    .line 275
    :goto_0
    return-object v0

    .line 271
    :pswitch_1
    new-instance v0, Lcom/bumptech/glide/load/b/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/b/a;-><init>(Lcom/bumptech/glide/load/b/e;Lcom/bumptech/glide/load/b/d$a;)V

    goto :goto_0

    .line 273
    :pswitch_2
    new-instance v0, Lcom/bumptech/glide/load/b/w;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/b/w;-><init>(Lcom/bumptech/glide/load/b/e;Lcom/bumptech/glide/load/b/d$a;)V

    goto :goto_0

    .line 275
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private k()V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->w:Ljava/lang/Thread;

    .line 283
    invoke-static {}, Lcom/bumptech/glide/util/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/b/f;->u:J

    .line 284
    const/4 v0, 0x0

    .line 285
    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/f;->D:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->B:Lcom/bumptech/glide/load/b/d;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->B:Lcom/bumptech/glide/load/b/d;

    .line 286
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/b/f$g;)Lcom/bumptech/glide/load/b/f$g;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    .line 288
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->j()Lcom/bumptech/glide/load/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/b/f;->B:Lcom/bumptech/glide/load/b/d;

    .line 290
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    sget-object v2, Lcom/bumptech/glide/load/b/f$g;->SOURCE:Lcom/bumptech/glide/load/b/f$g;

    if-ne v1, v2, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/f;->c()V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    sget-object v2, Lcom/bumptech/glide/load/b/f$g;->FINISHED:Lcom/bumptech/glide/load/b/f$g;

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/f;->D:Z

    if-eqz v1, :cond_1

    :cond_3
    if-nez v0, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->l()V

    goto :goto_0
.end method

.method private l()V
    .locals 4

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->m()V

    .line 306
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    const-string v1, "Failed to load resource"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/f;->i:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/o;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 307
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->q:Lcom/bumptech/glide/load/b/f$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/f$a;->a(Lcom/bumptech/glide/load/b/o;)V

    .line 308
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->f()V

    .line 309
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->j:Lcom/bumptech/glide/util/a/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/a/b;->b()V

    .line 318
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->C:Z

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->C:Z

    .line 322
    return-void
.end method

.method private n()V
    .locals 5

    .prologue
    .line 386
    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "Retrieved data"

    iget-wide v2, p0, Lcom/bumptech/glide/load/b/f;->u:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/load/b/f;->y:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", cache key: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/load/b/f;->h:Lcom/bumptech/glide/load/g;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", fetcher: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/String;JLjava/lang/String;)V

    .line 392
    :cond_0
    const/4 v1, 0x0

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->y:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/f;->z:Lcom/bumptech/glide/load/a;

    invoke-direct {p0, v0, v2, v3}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/a/b;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/load/b/s;
    :try_end_0
    .catch Lcom/bumptech/glide/load/b/o; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 399
    :goto_0
    if-eqz v0, :cond_1

    .line 400
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->z:Lcom/bumptech/glide/load/a;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/f;->b(Lcom/bumptech/glide/load/b/s;Lcom/bumptech/glide/load/a;)V

    .line 404
    :goto_1
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->x:Lcom/bumptech/glide/load/g;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/f;->z:Lcom/bumptech/glide/load/a;

    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/b/o;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;)V

    .line 397
    iget-object v2, p0, Lcom/bumptech/glide/load/b/f;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    .line 402
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->k()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/f;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/f",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->h()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/b/f;->h()I

    move-result v1

    sub-int/2addr v0, v1

    .line 197
    if-nez v0, :cond_0

    .line 198
    iget v0, p0, Lcom/bumptech/glide/load/b/f;->r:I

    iget v1, p1, Lcom/bumptech/glide/load/b/f;->r:I

    sub-int/2addr v0, v1

    .line 200
    :cond_0
    return v0
.end method

.method a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/b/l;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/b/h;Ljava/util/Map;ZZZLcom/bumptech/glide/load/i;Lcom/bumptech/glide/load/b/f$a;I)Lcom/bumptech/glide/load/b/f;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/b/l;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/b/h;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/load/l",
            "<*>;>;ZZZ",
            "Lcom/bumptech/glide/load/i;",
            "Lcom/bumptech/glide/load/b/f$a",
            "<TR;>;I)",
            "Lcom/bumptech/glide/load/b/f",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bumptech/glide/load/b/f;->a:Lcom/bumptech/glide/load/b/e;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bumptech/glide/load/b/f;->k:Lcom/bumptech/glide/load/b/f$d;

    move-object/from16 v16, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p10

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p15

    move-object/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-virtual/range {v2 .. v16}, Lcom/bumptech/glide/load/b/e;->a(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILcom/bumptech/glide/load/b/h;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/b/f$d;)Lcom/bumptech/glide/load/b/e;

    .line 115
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/GlideContext;

    .line 116
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/load/g;

    .line 117
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/f;

    .line 118
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/l;

    .line 119
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/load/b/f;->d:I

    .line 120
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/load/b/f;->e:I

    .line 121
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/b/f;->f:Lcom/bumptech/glide/load/b/h;

    .line 122
    move/from16 v0, p14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/bumptech/glide/load/b/f;->v:Z

    .line 123
    move-object/from16 v0, p15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/b/f;->g:Lcom/bumptech/glide/load/i;

    .line 124
    move-object/from16 v0, p16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/load/b/f;->q:Lcom/bumptech/glide/load/b/f$a;

    .line 125
    move/from16 v0, p17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/bumptech/glide/load/b/f;->r:I

    .line 126
    sget-object v2, Lcom/bumptech/glide/load/b/f$f;->INITIALIZE:Lcom/bumptech/glide/load/b/f$f;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/bumptech/glide/load/b/f;->t:Lcom/bumptech/glide/load/b/f$f;

    .line 127
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 373
    invoke-interface {p3}, Lcom/bumptech/glide/load/a/b;->a()V

    .line 374
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/b/o;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 375
    invoke-interface {p3}, Lcom/bumptech/glide/load/a/b;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/bumptech/glide/load/b/o;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/a;Ljava/lang/Class;)V

    .line 376
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 378
    sget-object v0, Lcom/bumptech/glide/load/b/f$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/f$f;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->t:Lcom/bumptech/glide/load/b/f$f;

    .line 379
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->q:Lcom/bumptech/glide/load/b/f$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/b/f$a;->a(Lcom/bumptech/glide/load/b/f;)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->k()V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/a/b;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/a/b",
            "<*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 352
    iput-object p1, p0, Lcom/bumptech/glide/load/b/f;->h:Lcom/bumptech/glide/load/g;

    .line 353
    iput-object p2, p0, Lcom/bumptech/glide/load/b/f;->y:Ljava/lang/Object;

    .line 354
    iput-object p3, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    .line 355
    iput-object p4, p0, Lcom/bumptech/glide/load/b/f;->z:Lcom/bumptech/glide/load/a;

    .line 356
    iput-object p5, p0, Lcom/bumptech/glide/load/b/f;->x:Lcom/bumptech/glide/load/g;

    .line 357
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->w:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 358
    sget-object v0, Lcom/bumptech/glide/load/b/f$f;->DECODE_DATA:Lcom/bumptech/glide/load/b/f$f;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->t:Lcom/bumptech/glide/load/b/f$f;

    .line 359
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->q:Lcom/bumptech/glide/load/b/f$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/b/f$a;->a(Lcom/bumptech/glide/load/b/f;)V

    .line 368
    :goto_0
    return-void

    .line 361
    :cond_0
    const-string v0, "DecodeJob.decodeFromRetrievedData"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->m:Lcom/bumptech/glide/load/b/f$e;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/f$e;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->g()V

    .line 149
    :cond_0
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/bumptech/glide/load/b/f$g;->INITIALIZE:Lcom/bumptech/glide/load/b/f$g;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/b/f$g;)Lcom/bumptech/glide/load/b/f$g;

    move-result-object v0

    .line 136
    sget-object v1, Lcom/bumptech/glide/load/b/f$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/f$g;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/bumptech/glide/load/b/f$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/f$g;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()Lcom/bumptech/glide/util/a/b;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->j:Lcom/bumptech/glide/util/a/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->D:Z

    .line 209
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->B:Lcom/bumptech/glide/load/b/d;

    .line 210
    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/bumptech/glide/load/b/d;->b()V

    .line 213
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/bumptech/glide/load/b/f$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/f$f;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/f;->t:Lcom/bumptech/glide/load/b/f$f;

    .line 346
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->q:Lcom/bumptech/glide/load/b/f$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/b/f$a;->a(Lcom/bumptech/glide/load/b/f;)V

    .line 347
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p1, Lcom/bumptech/glide/load/b/f;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/f;->a(Lcom/bumptech/glide/load/b/f;)I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 220
    const-string v0, "DecodeJob#run"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 222
    :try_start_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/f;->D:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->l()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/b;->a()V

    .line 244
    :cond_0
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 246
    :goto_0
    return-void

    .line 226
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->i()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/b;->a()V

    .line 244
    :cond_2
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    :try_start_2
    const-string v1, "DecodeJob"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 229
    const-string v1, "DecodeJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/bumptech/glide/load/b/f;->D:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->s:Lcom/bumptech/glide/load/b/f$g;

    sget-object v2, Lcom/bumptech/glide/load/b/f$g;->ENCODE:Lcom/bumptech/glide/load/b/f$g;

    if-eq v1, v2, :cond_4

    .line 235
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/f;->l()V

    .line 237
    :cond_4
    iget-boolean v1, p0, Lcom/bumptech/glide/load/b/f;->D:Z

    if-nez v1, :cond_6

    .line 238
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v1, :cond_5

    .line 242
    iget-object v1, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/b;->a()V

    .line 244
    :cond_5
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v0

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    if-eqz v0, :cond_7

    .line 242
    iget-object v0, p0, Lcom/bumptech/glide/load/b/f;->A:Lcom/bumptech/glide/load/a/b;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/b;->a()V

    .line 244
    :cond_7
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0
.end method
