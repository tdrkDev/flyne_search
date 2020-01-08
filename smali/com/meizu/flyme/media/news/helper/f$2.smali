.class final Lcom/meizu/flyme/media/news/helper/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/helper/f;->a(Landroid/view/View;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I


# direct methods
.method constructor <init>(Landroid/view/View;IIIII)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/meizu/flyme/media/news/helper/f$2;->a:Landroid/view/View;

    iput p2, p0, Lcom/meizu/flyme/media/news/helper/f$2;->b:I

    iput p3, p0, Lcom/meizu/flyme/media/news/helper/f$2;->c:I

    iput p4, p0, Lcom/meizu/flyme/media/news/helper/f$2;->d:I

    iput p5, p0, Lcom/meizu/flyme/media/news/helper/f$2;->e:I

    iput p6, p0, Lcom/meizu/flyme/media/news/helper/f$2;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/f$2;->a:Landroid/view/View;

    .line 271
    new-instance v4, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/helper/f$2;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/meizu/flyme/media/news/helper/f$2;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v4, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move v1, v2

    move-object v3, v0

    .line 273
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 274
    instance-of v5, v0, Landroid/view/View;

    if-nez v5, :cond_1

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 278
    :cond_1
    check-cast v0, Landroid/view/View;

    .line 279
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 280
    invoke-virtual {v3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 281
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-direct {v3, v2, v2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 282
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 283
    new-instance v5, Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/meizu/flyme/media/news/helper/f$2;->b:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, p0, Lcom/meizu/flyme/media/news/helper/f$2;->c:I

    sub-int/2addr v7, v8

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/meizu/flyme/media/news/helper/f$2;->d:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    iget v10, p0, Lcom/meizu/flyme/media/news/helper/f$2;->e:I

    add-int/2addr v9, v10

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 284
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 285
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/helper/f$2;->a:Landroid/view/View;

    invoke-direct {v1, v5, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 286
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 290
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 291
    iget v3, p0, Lcom/meizu/flyme/media/news/helper/f$2;->f:I

    if-gt v1, v3, :cond_0

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0
.end method
