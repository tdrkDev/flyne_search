.class Lcom/meizu/common/widget/OperatingGuideView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/OperatingGuideView;->createTapOutAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/OperatingGuideView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/OperatingGuideView;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/meizu/common/widget/OperatingGuideView$5;->this$0:Lcom/meizu/common/widget/OperatingGuideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/meizu/common/widget/OperatingGuideView$5;->this$0:Lcom/meizu/common/widget/OperatingGuideView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/OperatingGuideView;->access$002(Lcom/meizu/common/widget/OperatingGuideView;F)F

    .line 292
    return-void
.end method
