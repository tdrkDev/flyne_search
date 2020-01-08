.class Lcom/meizu/common/recall/InstallView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/recall/InstallView;->changeStateAnimation(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/recall/InstallView;

.field final synthetic val$appearingView:Landroid/view/View;

.field final synthetic val$disappearingView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/common/recall/InstallView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView$3;->this$0:Lcom/meizu/common/recall/InstallView;

    iput-object p2, p0, Lcom/meizu/common/recall/InstallView$3;->val$appearingView:Landroid/view/View;

    iput-object p3, p0, Lcom/meizu/common/recall/InstallView$3;->val$disappearingView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/meizu/common/recall/InstallView$3;->val$appearingView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 320
    iget-object v1, p0, Lcom/meizu/common/recall/InstallView$3;->val$disappearingView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 321
    return-void
.end method
