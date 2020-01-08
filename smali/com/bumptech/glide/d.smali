.class public final Lcom/bumptech/glide/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/bumptech/glide/j",
            "<**>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/bumptech/glide/load/b/i;

.field private c:Lcom/bumptech/glide/load/b/a/e;

.field private d:Lcom/bumptech/glide/load/b/a/b;

.field private e:Lcom/bumptech/glide/load/b/b/h;

.field private f:Lcom/bumptech/glide/load/b/c/a;

.field private g:Lcom/bumptech/glide/load/b/c/a;

.field private h:Lcom/bumptech/glide/load/b/b/a$a;

.field private i:Lcom/bumptech/glide/load/b/b/i;

.field private j:Lcom/bumptech/glide/manager/d;

.field private k:I

.field private l:Lcom/bumptech/glide/d/d;

.field private m:Lcom/bumptech/glide/manager/k$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    .line 42
    const/4 v0, 0x4

    iput v0, p0, Lcom/bumptech/glide/d;->k:I

    .line 43
    new-instance v0, Lcom/bumptech/glide/d/d;

    invoke-direct {v0}, Lcom/bumptech/glide/d/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/d/d;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/bumptech/glide/c;
    .locals 11

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_0

    .line 295
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->b()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/c/a;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/b/c/a;

    if-nez v0, :cond_1

    .line 299
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->a()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/b/c/a;

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/i;

    if-nez v0, :cond_2

    .line 303
    new-instance v0, Lcom/bumptech/glide/load/b/b/i$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/i$a;->a()Lcom/bumptech/glide/load/b/b/i;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/i;

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    if-nez v0, :cond_3

    .line 307
    new-instance v0, Lcom/bumptech/glide/manager/f;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/b/a/e;

    if-nez v0, :cond_4

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/i;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/i;->b()I

    move-result v0

    .line 312
    if-lez v0, :cond_9

    .line 313
    new-instance v1, Lcom/bumptech/glide/load/b/a/k;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/b/a/k;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/b/a/e;

    .line 319
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_5

    .line 320
    new-instance v0, Lcom/bumptech/glide/load/b/a/j;

    iget-object v1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/b/i;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/a/j;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/b;

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/b/h;

    if-nez v0, :cond_6

    .line 324
    new-instance v0, Lcom/bumptech/glide/load/b/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/d;->i:Lcom/bumptech/glide/load/b/b/i;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/b/i;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/b/g;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/b/h;

    .line 327
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/b/b/a$a;

    if-nez v0, :cond_7

    .line 328
    new-instance v0, Lcom/bumptech/glide/load/b/b/f;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/b/b/a$a;

    .line 331
    :cond_7
    iget-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/b/i;

    if-nez v0, :cond_8

    .line 332
    new-instance v0, Lcom/bumptech/glide/load/b/i;

    iget-object v1, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/b/h;

    iget-object v2, p0, Lcom/bumptech/glide/d;->h:Lcom/bumptech/glide/load/b/b/a$a;

    iget-object v3, p0, Lcom/bumptech/glide/d;->g:Lcom/bumptech/glide/load/b/c/a;

    iget-object v4, p0, Lcom/bumptech/glide/d;->f:Lcom/bumptech/glide/load/b/c/a;

    .line 333
    invoke-static {}, Lcom/bumptech/glide/load/b/c/a;->c()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/i;-><init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;)V

    iput-object v0, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/b/i;

    .line 336
    :cond_8
    new-instance v6, Lcom/bumptech/glide/manager/k;

    iget-object v0, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/manager/k$a;

    invoke-direct {v6, v0}, Lcom/bumptech/glide/manager/k;-><init>(Lcom/bumptech/glide/manager/k$a;)V

    .line 339
    new-instance v0, Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/d;->b:Lcom/bumptech/glide/load/b/i;

    iget-object v3, p0, Lcom/bumptech/glide/d;->e:Lcom/bumptech/glide/load/b/b/h;

    iget-object v4, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/b/a/e;

    iget-object v5, p0, Lcom/bumptech/glide/d;->d:Lcom/bumptech/glide/load/b/a/b;

    iget-object v7, p0, Lcom/bumptech/glide/d;->j:Lcom/bumptech/glide/manager/d;

    iget v8, p0, Lcom/bumptech/glide/d;->k:I

    iget-object v1, p0, Lcom/bumptech/glide/d;->l:Lcom/bumptech/glide/d/d;

    .line 348
    invoke-virtual {v1}, Lcom/bumptech/glide/d/d;->j()Lcom/bumptech/glide/d/d;

    move-result-object v9

    iget-object v10, p0, Lcom/bumptech/glide/d;->a:Ljava/util/Map;

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/b/i;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/manager/k;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/d/d;Ljava/util/Map;)V

    .line 339
    return-object v0

    .line 315
    :cond_9
    new-instance v0, Lcom/bumptech/glide/load/b/a/f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d;->c:Lcom/bumptech/glide/load/b/a/e;

    goto :goto_0
.end method

.method a(Lcom/bumptech/glide/manager/k$a;)Lcom/bumptech/glide/d;
    .locals 0
    .param p1    # Lcom/bumptech/glide/manager/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 283
    iput-object p1, p0, Lcom/bumptech/glide/d;->m:Lcom/bumptech/glide/manager/k$a;

    .line 284
    return-object p0
.end method
