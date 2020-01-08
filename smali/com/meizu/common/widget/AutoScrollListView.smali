.class public Lcom/meizu/common/widget/AutoScrollListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# static fields
.field private static final PREFERRED_SELECTION_OFFSET_FROM_TOP:F = 0.33f


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 52
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 69
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 70
    iget v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v0, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 75
    iput v2, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 77
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getLastVisiblePosition()I

    move-result v3

    .line 79
    if-lt v1, v2, :cond_2

    if-le v1, v3, :cond_0

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const v4, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v0, v4

    float-to-int v4, v0

    .line 84
    iget-boolean v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v0, :cond_3

    .line 85
    invoke-virtual {p0, v1, v4}, Lcom/meizu/common/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 90
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0

    .line 95
    :cond_3
    sub-int v0, v3, v2

    mul-int/lit8 v0, v0, 0x2

    .line 97
    if-ge v1, v2, :cond_6

    .line 98
    add-int/2addr v0, v1

    .line 99
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 102
    :cond_4
    if-ge v0, v2, :cond_5

    .line 103
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AutoScrollListView;->setSelection(I)V

    .line 104
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 117
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v4}, Lcom/meizu/common/widget/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    .line 107
    :cond_6
    sub-int v0, v1, v0

    .line 108
    if-gez v0, :cond_7

    .line 109
    const/4 v0, 0x0

    .line 111
    :cond_7
    if-le v0, v3, :cond_5

    .line 112
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AutoScrollListView;->setSelection(I)V

    .line 113
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 124
    const-class v0, Lcom/meizu/common/widget/AutoScrollListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 63
    iput-boolean p2, p0, Lcom/meizu/common/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 64
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->requestLayout()V

    .line 65
    return-void
.end method
