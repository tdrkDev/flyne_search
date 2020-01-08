.class Lcom/meizu/common/widget/GradientLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/GradientLayout;->setupGradientDownAnimator(FFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/GradientLayout;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/GradientLayout;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, Lcom/meizu/common/widget/GradientLayout$3;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 784
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 785
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$3;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1600(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$3;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1600(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$3;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1600(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$3;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1700(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$3;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1700(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/meizu/common/widget/GradientLayout$3;->this$0:Lcom/meizu/common/widget/GradientLayout;

    invoke-static {v0}, Lcom/meizu/common/widget/GradientLayout;->access$1700(Lcom/meizu/common/widget/GradientLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 791
    :cond_1
    return-void
.end method
