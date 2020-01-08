.class Lcom/meizu/common/widget/LoadingTextView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingTextView;->setupBackgroundAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingTextView;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingTextView$4;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 432
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView$4;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/LoadingTextView;->access$400(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Rect;

    move-result-object v1

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 433
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView$4;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingTextView;->invalidate()V

    .line 434
    return-void
.end method
