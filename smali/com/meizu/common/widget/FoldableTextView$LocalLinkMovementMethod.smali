.class public Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLinkMovementMethod"
.end annotation


# static fields
.field static sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;


# instance fields
.field public isLinkClick:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 658
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->isLinkClick:Z

    return-void
.end method

.method public static getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
    .locals 1

    .prologue
    .line 663
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    if-nez v0, :cond_0

    .line 664
    new-instance v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    invoke-direct {v0}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    .line 665
    :cond_0
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 670
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 671
    iput-boolean v3, p0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->isLinkClick:Z

    .line 672
    if-eq v4, v2, :cond_0

    if-nez v4, :cond_a

    .line 673
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 674
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 676
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    .line 677
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v1, v5

    .line 679
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v0, v5

    .line 680
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v1, v5

    .line 682
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    .line 683
    if-nez v5, :cond_1

    .line 684
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 720
    :goto_0
    return v0

    .line 685
    :cond_1
    invoke-virtual {v5, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 686
    int-to-float v0, v0

    invoke-virtual {v5, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    .line 688
    const-class v0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    invoke-interface {p2, v1, v1, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    .line 689
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v1, v1, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ClickableSpan;

    .line 691
    array-length v5, v0

    if-eqz v5, :cond_5

    .line 692
    if-ne v4, v2, :cond_4

    .line 693
    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->onClick(Landroid/view/View;)V

    .line 698
    :cond_2
    :goto_1
    instance-of v0, p1, Lcom/meizu/common/widget/FoldableTextView;

    if-eqz v0, :cond_3

    .line 699
    check-cast p1, Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1702(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    :cond_3
    move v0, v2

    .line 701
    goto :goto_0

    .line 694
    :cond_4
    if-nez v4, :cond_2

    .line 695
    aget-object v1, v0, v3

    invoke-interface {p2, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    aget-object v0, v0, v3

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1

    .line 702
    :cond_5
    array-length v0, v1

    if-eqz v0, :cond_9

    .line 703
    if-ne v4, v2, :cond_8

    .line 704
    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 705
    iput-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->isLinkClick:Z

    .line 710
    :cond_6
    :goto_2
    instance-of v0, p1, Lcom/meizu/common/widget/FoldableTextView;

    if-eqz v0, :cond_7

    .line 711
    check-cast p1, Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1702(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    :cond_7
    move v0, v2

    .line 713
    goto :goto_0

    .line 706
    :cond_8
    if-nez v4, :cond_6

    .line 707
    aget-object v0, v1, v3

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    aget-object v1, v1, v3

    invoke-interface {p2, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_2

    .line 715
    :cond_9
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 716
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move v0, v3

    .line 717
    goto :goto_0

    .line 720
    :cond_a
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
