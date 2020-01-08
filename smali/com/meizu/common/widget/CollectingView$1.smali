.class Lcom/meizu/common/widget/CollectingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CollectingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CollectingView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CollectingView;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$200(Lcom/meizu/common/widget/CollectingView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$200(Lcom/meizu/common/widget/CollectingView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    new-instance v1, Lcom/meizu/common/widget/CollectingView$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CollectingView$1$1;-><init>(Lcom/meizu/common/widget/CollectingView$1;)V

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CollectingView;->post(Ljava/lang/Runnable;)Z

    .line 268
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->collectEndAnim()V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0, v2}, Lcom/meizu/common/widget/CollectingView;->access$102(Lcom/meizu/common/widget/CollectingView;Z)Z

    .line 272
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 277
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->collectStartAnim()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CollectingView;->access$102(Lcom/meizu/common/widget/CollectingView;Z)Z

    .line 253
    return-void
.end method
