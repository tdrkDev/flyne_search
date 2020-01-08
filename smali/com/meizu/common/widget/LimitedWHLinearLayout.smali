.class public Lcom/meizu/common/widget/LimitedWHLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 34
    return-void
.end method


# virtual methods
.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 107
    const-class v0, Lcom/meizu/common/widget/LimitedWHLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v1, 0x1

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 51
    invoke-virtual {p0}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getMeasuredWidth()I

    move-result v3

    .line 52
    const/4 v0, 0x0

    .line 55
    iget v4, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    if-le v2, v4, :cond_0

    .line 56
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 57
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    move v0, v1

    .line 61
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    if-le v3, v2, :cond_2

    .line 62
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 63
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 67
    :goto_0
    if-eqz v1, :cond_1

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 70
    :cond_1
    return-void

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public setMaxHeight(I)V
    .locals 0

    .prologue
    .line 77
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 78
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 94
    return-void
.end method
