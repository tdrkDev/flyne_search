.class Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

.field final synthetic val$gradientDrawable:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    .prologue
    .line 1466
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iput-object p2, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->val$gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 1469
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1474
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1700(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v2}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1800(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 1475
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1700(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v2, v0, 0x2

    .line 1476
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1700(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v0

    sub-int v1, v0, v2

    .line 1477
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1900(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)F

    move-result v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1484
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->val$gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v4, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    .line 1486
    invoke-static {v4}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$2000(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    .line 1485
    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1487
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    iget-object v0, v0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton;->invalidate()V

    .line 1488
    return-void

    .line 1479
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v1}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1800(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    div-int/lit8 v2, v0, 0x2

    .line 1480
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1800(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)I

    move-result v0

    sub-int v1, v0, v2

    .line 1481
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v0}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1900(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)F

    move-result v0

    iget-object v3, p0, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation$1;->this$1:Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;

    invoke-static {v3}, Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;->access$1900(Lcom/meizu/common/widget/CircularProgressButton$MorphingAnimation;)F

    move-result v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_0
.end method
