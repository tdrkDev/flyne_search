.class Lcom/meizu/common/widget/SwimmingAnimationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SwimmingAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/SwimmingAnimationView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/SwimmingAnimationView;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/meizu/common/widget/SwimmingAnimationView$2;->this$0:Lcom/meizu/common/widget/SwimmingAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView$2;->this$0:Lcom/meizu/common/widget/SwimmingAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SwimmingAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 292
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView$2;->this$0:Lcom/meizu/common/widget/SwimmingAnimationView;

    new-instance v1, Lcom/meizu/common/widget/SwimmingAnimationView$2$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/SwimmingAnimationView$2$1;-><init>(Lcom/meizu/common/widget/SwimmingAnimationView$2;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/SwimmingAnimationView;->post(Ljava/lang/Runnable;)Z

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    const-string v0, "SwimmingAnimationView"

    const-string v1, "onAnimationEnd, animatorDurationScale == 0, stopAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/meizu/common/widget/SwimmingAnimationView$2;->this$0:Lcom/meizu/common/widget/SwimmingAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SwimmingAnimationView;->stopAnimator()V

    goto :goto_0
.end method
