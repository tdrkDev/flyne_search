.class Lcom/meizu/common/widget/LoadingTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingTextView;->setupAnimations()V
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
    .line 237
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingTextView;->access$100(Lcom/meizu/common/widget/LoadingTextView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingTextView$2;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/LoadingTextView;->access$200(Lcom/meizu/common/widget/LoadingTextView;F)V

    .line 242
    return-void
.end method
