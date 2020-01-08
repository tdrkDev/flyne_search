.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollTextViewScroller"
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x190

.field private static final SCROLLING_DURATION_EXTEND:I = 0x3e8


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollY:I

.field private lastTouchedY:F

.field private listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;Landroid/content/Context;Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1538
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1615
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;-><init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 1675
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->MESSAGE_SCROLL:I

    .line 1676
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->MESSAGE_JUSTIFY:I

    .line 1696
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;-><init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    .line 1539
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 1540
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1542
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    .line 1544
    iput-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 1545
    iput-object p2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->context:Landroid/content/Context;

    .line 1546
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I
    .locals 1

    .prologue
    .line 1509
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I
    .locals 0

    .prologue
    .line 1509
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->justify()V

    return-void
.end method

.method static synthetic access$2300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .locals 0

    .prologue
    .line 1509
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->clearMessages()V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1693
    return-void
.end method

.method private justify()V
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onJustify()V

    .line 1703
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setNextMessage(I)V

    .line 1704
    return-void
.end method

.method private setNextMessage(I)V
    .locals 1

    .prologue
    .line 1683
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->clearMessages()V

    .line 1684
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1685
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 1710
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 1711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    .line 1712
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onStarted()V

    .line 1714
    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .prologue
    .line 1720
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onFinished()V

    .line 1722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    .line 1724
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1607
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1608
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->justify()V

    .line 1611
    :cond_1
    return v2

    .line 1587
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastTouchedY:F

    .line 1588
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1589
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->clearMessages()V

    .line 1590
    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->finishScrolling()V

    goto :goto_0

    .line 1595
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastTouchedY:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 1596
    if-eqz v0, :cond_0

    .line 1597
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->startScrolling()V

    .line 1598
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v1, v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onScroll(I)V

    .line 1599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastTouchedY:F

    goto :goto_0

    .line 1603
    :pswitch_3
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->justify()V

    goto :goto_0

    .line 1585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public scroll(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1563
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1565
    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I

    .line 1566
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v5, p2

    :goto_0
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1567
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setNextMessage(I)V

    .line 1569
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->startScrolling()V

    .line 1570
    return-void

    .line 1566
    :cond_0
    const/16 v5, 0x190

    goto :goto_0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1554
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    .line 1555
    return-void
.end method

.method public stopScrolling()V
    .locals 2

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1577
    return-void
.end method
