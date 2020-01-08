.class public Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/g$b;,
        Lcom/bumptech/glide/g$a;,
        Lcom/bumptech/glide/g$e;,
        Lcom/bumptech/glide/g$d;,
        Lcom/bumptech/glide/g$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/c/o;

.field private final b:Lcom/bumptech/glide/c/a;

.field private final c:Lcom/bumptech/glide/c/e;

.field private final d:Lcom/bumptech/glide/c/f;

.field private final e:Lcom/bumptech/glide/load/a/d;

.field private final f:Lcom/bumptech/glide/load/d/f/e;

.field private final g:Lcom/bumptech/glide/c/b;

.field private final h:Lcom/bumptech/glide/c/d;

.field private final i:Lcom/bumptech/glide/c/c;

.field private final j:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/bumptech/glide/c/d;

    invoke-direct {v0}, Lcom/bumptech/glide/c/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/c/d;

    .line 45
    new-instance v0, Lcom/bumptech/glide/c/c;

    invoke-direct {v0}, Lcom/bumptech/glide/c/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/c/c;

    .line 46
    invoke-static {}, Lcom/bumptech/glide/util/a/a;->a()Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Landroid/support/v4/util/Pools$Pool;

    .line 49
    new-instance v0, Lcom/bumptech/glide/load/c/o;

    iget-object v1, p0, Lcom/bumptech/glide/g;->j:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/o;-><init>(Landroid/support/v4/util/Pools$Pool;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/load/c/o;

    .line 50
    new-instance v0, Lcom/bumptech/glide/c/a;

    invoke-direct {v0}, Lcom/bumptech/glide/c/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/c/a;

    .line 51
    new-instance v0, Lcom/bumptech/glide/c/e;

    invoke-direct {v0}, Lcom/bumptech/glide/c/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/c/e;

    .line 52
    new-instance v0, Lcom/bumptech/glide/c/f;

    invoke-direct {v0}, Lcom/bumptech/glide/c/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/c/f;

    .line 53
    new-instance v0, Lcom/bumptech/glide/load/a/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/a/d;

    .line 54
    new-instance v0, Lcom/bumptech/glide/load/d/f/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/f/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/d/f/e;

    .line 55
    new-instance v0, Lcom/bumptech/glide/c/b;

    invoke-direct {v0}, Lcom/bumptech/glide/c/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/c/b;

    .line 56
    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/b/g",
            "<TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/c/e;

    .line 296
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/c/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 299
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/d/f/e;

    .line 300
    invoke-virtual {v0, v2, p3}, Lcom/bumptech/glide/load/d/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 304
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/c/e;

    .line 305
    invoke-virtual {v0, p1, v2}, Lcom/bumptech/glide/c/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 306
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/d/f/e;

    .line 307
    invoke-virtual {v0, v2, v3}, Lcom/bumptech/glide/load/d/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/d/f/d;

    move-result-object v5

    .line 308
    new-instance v0, Lcom/bumptech/glide/load/b/g;

    iget-object v6, p0, Lcom/bumptech/glide/g;->j:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/b/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lcom/bumptech/glide/load/d/f/d;Landroid/support/v4/util/Pools$Pool;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    :cond_1
    return-object v7
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/g;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/c/b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c/b;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    .line 182
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a/c$a;)Lcom/bumptech/glide/g;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/a/d;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/load/a/c$a;)V

    .line 157
    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/d",
            "<TData;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/c/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)V

    .line 73
    return-object p0
.end method

.method public a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/k",
            "<TTResource;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/c/f;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/c/f;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/k;)V

    .line 148
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/c/n",
            "<TModel;TData;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/load/c/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/o;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)V

    .line 210
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/d;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;",
            "Lcom/bumptech/glide/load/d/f/d",
            "<TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/d/f/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/d/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/d/f/d;)V

    .line 173
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/j",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/c/e;

    invoke-virtual {v0, p3, p1, p2}, Lcom/bumptech/glide/c/e;->a(Lcom/bumptech/glide/load/j;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 100
    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/q;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Lcom/bumptech/glide/load/b/q",
            "<TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/c/c;

    .line 274
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/c/c;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/q;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/c/c;

    invoke-virtual {v1, p1, p2, p3}, Lcom/bumptech/glide/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/g;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 280
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    const/4 v0, 0x0

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/c/c;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/bumptech/glide/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/b/q;)V

    .line 288
    :cond_0
    return-object v0

    .line 283
    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/b/q;

    iget-object v5, p0, Lcom/bumptech/glide/g;->j:Landroid/support/v4/util/Pools$Pool;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/q;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Landroid/support/v4/util/Pools$Pool;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/load/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/d",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/g$e;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/bumptech/glide/c/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 357
    return-object v0

    .line 359
    :cond_0
    new-instance v0, Lcom/bumptech/glide/g$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g$e;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/bumptech/glide/c/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/c/b;->a()Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    new-instance v0, Lcom/bumptech/glide/g$b;

    invoke-direct {v0}, Lcom/bumptech/glide/g$b;-><init>()V

    throw v0

    .line 379
    :cond_0
    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/b/s;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/c/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/s;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/k;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TData;>;",
            "Lcom/bumptech/glide/load/c/n",
            "<TModel;TData;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/load/c/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/c/o;->b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/c/n;)V

    .line 268
    return-object p0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TData;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Lcom/bumptech/glide/load/j",
            "<TData;TTResource;>;)",
            "Lcom/bumptech/glide/g;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/c/e;

    invoke-virtual {v0, p3, p1, p2}, Lcom/bumptech/glide/c/e;->b(Lcom/bumptech/glide/load/j;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 127
    return-object p0
.end method

.method public b(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lcom/bumptech/glide/load/a/c",
            "<TX;>;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/bumptech/glide/load/a/d;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/a/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/load/b/s;)Lcom/bumptech/glide/load/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/s",
            "<TX;>;)",
            "Lcom/bumptech/glide/load/k",
            "<TX;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/g$d;
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/c/f;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/s;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c/f;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/k;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    .line 348
    return-object v0

    .line 350
    :cond_0
    new-instance v0, Lcom/bumptech/glide/g$d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/s;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/g$d;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TModel;>;",
            "Ljava/lang/Class",
            "<TTResource;>;",
            "Ljava/lang/Class",
            "<TTranscode;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/c/d;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/c/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 319
    if-nez v0, :cond_3

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/load/c/o;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/c/o;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 323
    iget-object v3, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/c/e;

    .line 324
    invoke-virtual {v3, v0, p2}, Lcom/bumptech/glide/c/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 326
    iget-object v4, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/d/f/e;

    .line 327
    invoke-virtual {v4, v0, p3}, Lcom/bumptech/glide/load/d/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 328
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/c/d;

    .line 334
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 333
    invoke-virtual {v0, p1, p2, v2}, Lcom/bumptech/glide/c/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    move-object v0, v1

    .line 337
    :cond_3
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/load/c/m",
            "<TModel;*>;>;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/load/c/o;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/c/o;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 368
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    new-instance v0, Lcom/bumptech/glide/g$c;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/g$c;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 371
    :cond_0
    return-object v0
.end method
