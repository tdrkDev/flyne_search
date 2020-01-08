.class Lcom/meizu/common/widget/SubscribeButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/SubscribeButton;->startAnimator(FFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SubscribeButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SubscribeButton;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 505
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 508
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-boolean v1, v1, Lcom/meizu/common/widget/SubscribeButton;->mIsSelected:Z

    if-eqz v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$200(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->access$102(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 510
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$100(Lcom/meizu/common/widget/SubscribeButton;)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->access$302(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 512
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    if-gez v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/SubscribeButton;->access$502(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 514
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$500(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v3}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 531
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SubscribeButton;->invalidate()V

    .line 532
    return-void

    .line 516
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/SubscribeButton;->access$1002(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 517
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$1000(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v3}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$200(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->access$302(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 521
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$300(Lcom/meizu/common/widget/SubscribeButton;)F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/SubscribeButton;->access$102(Lcom/meizu/common/widget/SubscribeButton;F)F

    .line 523
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    if-gez v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/SubscribeButton;->access$1002(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 525
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$1000(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v3}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 527
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$600(Lcom/meizu/common/widget/SubscribeButton;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$400(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/SubscribeButton;->access$502(Lcom/meizu/common/widget/SubscribeButton;I)I

    .line 528
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v0}, Lcom/meizu/common/widget/SubscribeButton;->access$900(Lcom/meizu/common/widget/SubscribeButton;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v1}, Lcom/meizu/common/widget/SubscribeButton;->access$500(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v2}, Lcom/meizu/common/widget/SubscribeButton;->access$700(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/SubscribeButton$2;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-static {v3}, Lcom/meizu/common/widget/SubscribeButton;->access$800(Lcom/meizu/common/widget/SubscribeButton;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0
.end method
