.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .locals 0

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isOutArray(I)Z
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->isCyclic()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    .line 1669
    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v1, v1, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v1

    div-int v1, p1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v1, v1, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$1500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    .line 1670
    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v1, v1, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v1

    div-int v1, p1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v1, v1, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$1600(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1668
    :goto_0
    return v0

    .line 1670
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 1623
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1002(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I

    .line 1624
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$1100(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v8

    .line 1625
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$1200(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v7

    .line 1627
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1000(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1628
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 1629
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    rem-int v2, v0, v2

    .line 1630
    if-eqz v2, :cond_1

    .line 1632
    if-lez v2, :cond_2

    .line 1633
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v3, v3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    .line 1638
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    if-lez v2, :cond_3

    .line 1640
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 1646
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    if-le v0, v2, :cond_4

    .line 1648
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 1654
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 1662
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1400(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)V

    .line 1663
    const/4 v0, 0x1

    return v0

    .line 1635
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v3, v3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    goto :goto_0

    .line 1643
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 1649
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    neg-int v2, v2

    if-ge v0, v2, :cond_0

    .line 1651
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v2, v2, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 1619
    const/4 v0, 0x1

    return v0
.end method
