.class Lcom/meizu/common/recall/LoadingTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 157
    iput-object p1, p0, Lcom/meizu/common/recall/LoadingTextView$2;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView$2;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/recall/LoadingTextView;->access$200(Lcom/meizu/common/recall/LoadingTextView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView$2;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v1, v0}, Lcom/meizu/common/recall/LoadingTextView;->access$300(Lcom/meizu/common/recall/LoadingTextView;I)I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/meizu/common/recall/LoadingTextView$2;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v2, v0}, Lcom/meizu/common/recall/LoadingTextView;->access$400(Lcom/meizu/common/recall/LoadingTextView;I)I

    move-result v0

    .line 163
    iget-object v2, p0, Lcom/meizu/common/recall/LoadingTextView$2;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v2}, Lcom/meizu/common/recall/LoadingTextView;->access$500(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView$2;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v1}, Lcom/meizu/common/recall/LoadingTextView;->access$600(Lcom/meizu/common/recall/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    return-void
.end method
