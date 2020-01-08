.class Lcom/meizu/common/recall/LoadingTextView$1;
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
    .line 142
    iput-object p1, p0, Lcom/meizu/common/recall/LoadingTextView$1;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView$1;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v1, v0}, Lcom/meizu/common/recall/LoadingTextView;->access$002(Lcom/meizu/common/recall/LoadingTextView;F)F

    .line 147
    iget-object v1, p0, Lcom/meizu/common/recall/LoadingTextView$1;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-static {v1, v0}, Lcom/meizu/common/recall/LoadingTextView;->access$102(Lcom/meizu/common/recall/LoadingTextView;F)F

    .line 148
    iget-object v0, p0, Lcom/meizu/common/recall/LoadingTextView$1;->this$0:Lcom/meizu/common/recall/LoadingTextView;

    invoke-virtual {v0}, Lcom/meizu/common/recall/LoadingTextView;->invalidate()V

    .line 149
    return-void
.end method
