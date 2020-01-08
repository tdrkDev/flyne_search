.class Lcom/meizu/common/widget/StretchSearchView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->stretchAmin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/StretchSearchView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/StretchSearchView;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 987
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StretchSearchView;->afterStretchViewState()V

    .line 978
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/meizu/common/widget/StretchSearchView;->access$202(Lcom/meizu/common/widget/StretchSearchView;I)I

    .line 979
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$900(Lcom/meizu/common/widget/StretchSearchView;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;->onStetchAnimationEnd(Landroid/view/View;)V

    .line 982
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 992
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$800(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/StretchSearchView$9;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v1}, Lcom/meizu/common/widget/StretchSearchView;->access$900(Lcom/meizu/common/widget/StretchSearchView;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/common/widget/StretchSearchView$StretchAnimationListener;->onStetchAnimationStart(Landroid/view/View;)V

    .line 973
    :cond_0
    return-void
.end method
