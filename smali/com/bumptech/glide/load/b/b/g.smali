.class public Lcom/bumptech/glide/load/b/b/g;
.super Lcom/bumptech/glide/util/e;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/e",
        "<",
        "Lcom/bumptech/glide/load/g;",
        "Lcom/bumptech/glide/load/b/s",
        "<*>;>;",
        "Lcom/bumptech/glide/load/b/b/h;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/b/b/h$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/bumptech/glide/util/e;-><init>(I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/b/s;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/s",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/s;->d()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/bumptech/glide/load/b/s;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/b/g;->a(Lcom/bumptech/glide/load/b/s;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/s;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/bumptech/glide/util/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/s;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 43
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/b/g;->a()V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/b/g;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/b/b/g;->b(I)V

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/b/b/h$a;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/g;->a:Lcom/bumptech/glide/load/b/b/h$a;

    .line 26
    return-void
.end method

.method protected a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/s",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/g;->a:Lcom/bumptech/glide/load/b/b/h$a;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/g;->a:Lcom/bumptech/glide/load/b/b/h$a;

    invoke-interface {v0, p2}, Lcom/bumptech/glide/load/b/b/h$a;->b(Lcom/bumptech/glide/load/b/s;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/bumptech/glide/load/g;

    check-cast p2, Lcom/bumptech/glide/load/b/s;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/b/b/g;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/s;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/s;)Lcom/bumptech/glide/load/b/s;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/util/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/s;

    return-object v0
.end method
