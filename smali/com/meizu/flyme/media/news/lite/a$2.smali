.class Lcom/meizu/flyme/media/news/lite/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$2;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x14
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    .line 576
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    .line 578
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a$2;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/a;->l(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/meizu/flyme/media/news/lite/a$2;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v2}, Lcom/meizu/flyme/media/news/lite/a;->l(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/flyme/media/news/lite/a$2;->a:Lcom/meizu/flyme/media/news/lite/a;

    .line 580
    invoke-static {v3}, Lcom/meizu/flyme/media/news/lite/a;->l(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/flyme/media/news/lite/a$2;->a:Lcom/meizu/flyme/media/news/lite/a;

    .line 582
    invoke-static {v4}, Lcom/meizu/flyme/media/news/lite/a;->l(Lcom/meizu/flyme/media/news/lite/a;)Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->getPaddingBottom()I

    move-result v4

    .line 579
    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/meizu/flyme/media/news/widget/NewsRecyclerView;->setPadding(IIII)V

    .line 584
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
