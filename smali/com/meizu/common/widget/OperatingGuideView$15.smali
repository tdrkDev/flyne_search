.class Lcom/meizu/common/widget/OperatingGuideView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/OperatingGuideView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/OperatingGuideView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/OperatingGuideView;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/meizu/common/widget/OperatingGuideView$15;->this$0:Lcom/meizu/common/widget/OperatingGuideView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 576
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 577
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView$15;->this$0:Lcom/meizu/common/widget/OperatingGuideView;

    invoke-static {v0}, Lcom/meizu/common/widget/OperatingGuideView;->access$1000(Lcom/meizu/common/widget/OperatingGuideView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView$15;->this$0:Lcom/meizu/common/widget/OperatingGuideView;

    new-instance v1, Lcom/meizu/common/widget/OperatingGuideView$15$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/OperatingGuideView$15$1;-><init>(Lcom/meizu/common/widget/OperatingGuideView$15;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/widget/OperatingGuideView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 587
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 571
    iget-object v0, p0, Lcom/meizu/common/widget/OperatingGuideView$15;->this$0:Lcom/meizu/common/widget/OperatingGuideView;

    invoke-static {v0}, Lcom/meizu/common/widget/OperatingGuideView;->access$900(Lcom/meizu/common/widget/OperatingGuideView;)V

    .line 572
    return-void
.end method
