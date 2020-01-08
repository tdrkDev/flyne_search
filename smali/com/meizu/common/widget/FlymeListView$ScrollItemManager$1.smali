.class Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->startSmoothBackToOriginalPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;->this$1:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager$1;->this$1:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-static {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->access$100(Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;

    .line 444
    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->getOffsetBeforeSmoothBack()F

    move-result v3

    .line 445
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->translateItemY(F)V

    goto :goto_0

    .line 447
    :cond_0
    return-void
.end method
