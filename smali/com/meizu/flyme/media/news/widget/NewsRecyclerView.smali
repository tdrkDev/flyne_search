.class public Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;
.super Lflyme/support/v7/widget/MzRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/widget/NewsRecyclerView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/MzRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->a:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView$a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->a:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView$a;

    invoke-interface {v0, p1}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView$a;->a(Landroid/view/MotionEvent;)V

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setInterceptTouchListener(Lcom/meizu/flyme/media/news/widget/NewsRecyclerView$a;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->a:Lcom/meizu/flyme/media/news/widget/NewsRecyclerView$a;

    .line 36
    return-void
.end method
