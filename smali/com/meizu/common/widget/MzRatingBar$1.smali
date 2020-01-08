.class Lcom/meizu/common/widget/MzRatingBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/MzRatingBar;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/MzRatingBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/MzRatingBar;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/meizu/common/widget/MzRatingBar$1;->this$0:Lcom/meizu/common/widget/MzRatingBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v1, v0

    .line 130
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar$1;->this$0:Lcom/meizu/common/widget/MzRatingBar;

    invoke-virtual {v2}, Lcom/meizu/common/widget/MzRatingBar;->getNumStars()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v2, p0, Lcom/meizu/common/widget/MzRatingBar$1;->this$0:Lcom/meizu/common/widget/MzRatingBar;

    invoke-static {v2}, Lcom/meizu/common/widget/MzRatingBar;->access$000(Lcom/meizu/common/widget/MzRatingBar;)[F

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/common/widget/MzRatingBar$1;->this$0:Lcom/meizu/common/widget/MzRatingBar;

    invoke-static {v4}, Lcom/meizu/common/widget/MzRatingBar;->access$100(Lcom/meizu/common/widget/MzRatingBar;)[F

    move-result-object v4

    aget v4, v4, v0

    add-float/2addr v4, v1

    const/high16 v5, 0x41800000    # 16.0f

    int-to-float v6, v0

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/MzRatingBar$1;->this$0:Lcom/meizu/common/widget/MzRatingBar;

    invoke-static {v4}, Lcom/meizu/common/widget/MzRatingBar;->access$200(Lcom/meizu/common/widget/MzRatingBar;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/MzRatingBar$1;->this$0:Lcom/meizu/common/widget/MzRatingBar;

    invoke-static {v5}, Lcom/meizu/common/widget/MzRatingBar;->access$300(Lcom/meizu/common/widget/MzRatingBar;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/MzRatingBar$1;->this$0:Lcom/meizu/common/widget/MzRatingBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/MzRatingBar;->invalidate()V

    .line 134
    return-void
.end method
