.class Lcom/meizu/common/recall/InstallView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 324
    iput-object p1, p0, Lcom/meizu/common/recall/InstallView$4;->this$0:Lcom/meizu/common/recall/InstallView;

    iput-object p2, p0, Lcom/meizu/common/recall/InstallView$4;->val$appearingView:Landroid/view/View;

    iput-object p3, p0, Lcom/meizu/common/recall/InstallView$4;->val$disappearingView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$4;->val$appearingView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 334
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$4;->val$disappearingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 335
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$4;->val$disappearingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$4;->val$appearingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/meizu/common/recall/InstallView$4;->val$disappearingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    return-void
.end method
