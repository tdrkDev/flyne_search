.class public Lcom/bumptech/glide/load/d/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/p;
.implements Lcom/bumptech/glide/load/b/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/p;",
        "Lcom/bumptech/glide/load/b/s",
        "<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/bumptech/glide/load/b/a/e;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->b:Landroid/content/res/Resources;

    .line 36
    invoke-static {p2}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a/e;

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->c:Lcom/bumptech/glide/load/b/a/e;

    .line 37
    invoke-static {p3}, Lcom/bumptech/glide/util/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->a:Landroid/graphics/Bitmap;

    .line 38
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/d/a/o;
    .locals 2

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/load/b/a/e;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/bumptech/glide/load/d/a/o;->a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/d/a/o;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)Lcom/bumptech/glide/load/d/a/o;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/bumptech/glide/load/d/a/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/d/a/o;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 63
    return-void
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/bumptech/glide/load/d/a/o;->f()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/util/i;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/o;->c:Lcom/bumptech/glide/load/b/a/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/o;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    .line 58
    return-void
.end method

.method public f()Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/o;->b:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/o;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
