.class public abstract Lcom/bumptech/glide/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/d/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/d/a/h",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    return-void
.end method

.method public a(Lcom/bumptech/glide/d/a;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/d/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bumptech/glide/d/a/a;->a:Lcom/bumptech/glide/d/a;

    .line 28
    return-void
.end method

.method public b()Lcom/bumptech/glide/d/a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/d/a/a;->a:Lcom/bumptech/glide/d/a;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 49
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
