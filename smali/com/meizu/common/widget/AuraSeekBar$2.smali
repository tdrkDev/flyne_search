.class Lcom/meizu/common/widget/AuraSeekBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/AuraSeekBar;->startAuraHideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AuraSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AuraSeekBar;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/meizu/common/widget/AuraSeekBar$2;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 255
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar$2;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    iget-object v2, p0, Lcom/meizu/common/widget/AuraSeekBar$2;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    invoke-static {v2}, Lcom/meizu/common/widget/AuraSeekBar;->access$100(Lcom/meizu/common/widget/AuraSeekBar;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/AuraSeekBar;->access$002(Lcom/meizu/common/widget/AuraSeekBar;I)I

    .line 256
    iget-object v1, p0, Lcom/meizu/common/widget/AuraSeekBar$2;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    iget-object v2, p0, Lcom/meizu/common/widget/AuraSeekBar$2;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    invoke-static {v2}, Lcom/meizu/common/widget/AuraSeekBar;->access$100(Lcom/meizu/common/widget/AuraSeekBar;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/AuraSeekBar;->access$202(Lcom/meizu/common/widget/AuraSeekBar;I)I

    .line 257
    const-string v0, "AuraSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide mAuraRadius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/AuraSeekBar$2;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    invoke-static {v2}, Lcom/meizu/common/widget/AuraSeekBar;->access$000(Lcom/meizu/common/widget/AuraSeekBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/AuraSeekBar$2;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AuraSeekBar;->invalidate()V

    .line 259
    return-void
.end method
