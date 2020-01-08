.class Lcom/meizu/common/widget/EnhanceSeekBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;->startAuraShowAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 0

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$2;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    .line 1092
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1093
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$2;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$2;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$300(Lcom/meizu/common/widget/EnhanceSeekBar;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$202(Lcom/meizu/common/widget/EnhanceSeekBar;I)I

    .line 1094
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$2;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 1095
    return-void
.end method
