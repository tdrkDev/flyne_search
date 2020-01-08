.class Lcom/meizu/common/recall/LoadingTextView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/recall/LoadingTextView;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/recall/LoadingTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/recall/LoadingTextView;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/meizu/common/recall/LoadingTextView$3;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView$3;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/recall/LoadingTextView;->access$500(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 177
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView$3;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/recall/LoadingTextView;->access$600(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView$3;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/recall/LoadingTextView;->access$500(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView$3;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/recall/LoadingTextView;->access$600(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    return-void
.end method
