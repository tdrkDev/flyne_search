.class public Lcom/bumptech/glide/load/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/l;

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/l;

    .line 22
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/b/s;II)Lcom/bumptech/glide/load/b/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/s",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;II)",
            "Lcom/bumptech/glide/load/b/s",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-interface {p2}, Lcom/bumptech/glide/load/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/load/b/a/e;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/bumptech/glide/load/d/a/e;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/e;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/l;

    .line 54
    invoke-interface {v1, p1, v0, p3, p4}, Lcom/bumptech/glide/load/l;->a(Landroid/content/Context;Lcom/bumptech/glide/load/b/s;II)Lcom/bumptech/glide/load/b/s;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    :goto_0
    return-object p2

    :cond_0
    invoke-interface {v1}, Lcom/bumptech/glide/load/b/s;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {p1, v0}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/d/a/o;

    move-result-object p2

    goto :goto_0
.end method

.method public a(Ljava/security/MessageDigest;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/l;->a(Ljava/security/MessageDigest;)V

    .line 80
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 65
    instance-of v0, p1, Lcom/bumptech/glide/load/d/a/c;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Lcom/bumptech/glide/load/d/a/c;

    .line 67
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/l;

    iget-object v1, p1, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/c;->b:Lcom/bumptech/glide/load/l;

    invoke-interface {v0}, Lcom/bumptech/glide/load/l;->hashCode()I

    move-result v0

    return v0
.end method
