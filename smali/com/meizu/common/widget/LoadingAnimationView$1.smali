.class Lcom/meizu/common/widget/LoadingAnimationView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/LoadingAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingAnimationView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingAnimationView;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingAnimationView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimationView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 205
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimationView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimationView;

    new-instance v1, Lcom/meizu/common/widget/LoadingAnimationView$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/LoadingAnimationView$1$1;-><init>(Lcom/meizu/common/widget/LoadingAnimationView$1;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingAnimationView;->post(Ljava/lang/Runnable;)Z

    .line 217
    :goto_0
    return-void

    .line 214
    :cond_0
    const-string v0, "LoadingAnimationView"

    const-string v1, "onAnimationEnd, animatorDurationScale == 0, stopAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAnimationView$1;->this$0:Lcom/meizu/common/widget/LoadingAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingAnimationView;->stopAnimator()V

    goto :goto_0
.end method
