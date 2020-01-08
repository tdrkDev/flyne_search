.class Lcom/meizu/common/widget/SubscribeButton$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 481
    iput-object p1, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/SubscribeButton;->access$002(Lcom/meizu/common/widget/SubscribeButton;Z)Z

    .line 495
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/SubscribeButton;->access$002(Lcom/meizu/common/widget/SubscribeButton;Z)Z

    .line 490
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/meizu/common/widget/SubscribeButton$1;->this$0:Lcom/meizu/common/widget/SubscribeButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/SubscribeButton;->access$002(Lcom/meizu/common/widget/SubscribeButton;Z)Z

    .line 485
    return-void
.end method
