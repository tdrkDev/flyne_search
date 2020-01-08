.class Lcom/meizu/common/widget/StrokeGradientDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlpha:I

.field private mColor:I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHeight:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mRadius:F

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .prologue
    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    iput-object p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 1572
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .prologue
    .line 1649
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mAlpha:I

    int-to-float v0, v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mColor:I

    return v0
.end method

.method public getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1611
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mHeight:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1633
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 1641
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingRight:I

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 1575
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mStrokeWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1620
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mWidth:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 1653
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mAlpha:I

    if-ne v0, p1, :cond_0

    .line 1658
    :goto_0
    return-void

    .line 1656
    :cond_0
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mAlpha:I

    .line 1657
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 1

    .prologue
    .line 1598
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mColor:I

    .line 1599
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1600
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    .prologue
    .line 1593
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mRadius:F

    .line 1594
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1595
    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .prologue
    .line 1615
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mHeight:I

    .line 1616
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mWidth:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 1617
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0

    .prologue
    .line 1637
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingLeft:I

    .line 1638
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0

    .prologue
    .line 1645
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingRight:I

    .line 1646
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2

    .prologue
    .line 1588
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mStrokeColor:I

    .line 1589
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getStrokeWidth()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1590
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 2

    .prologue
    .line 1579
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mStrokeWidth:I

    .line 1580
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1581
    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .prologue
    .line 1624
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mWidth:I

    .line 1625
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mHeight:I

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 1626
    return-void
.end method
