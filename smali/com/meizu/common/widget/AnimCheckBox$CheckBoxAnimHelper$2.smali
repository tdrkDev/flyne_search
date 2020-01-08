.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox;->access$400(Lcom/meizu/common/widget/AnimCheckBox;)Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$000(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$2;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v1}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$100(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Lcom/meizu/common/widget/AnimCheckBox;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/common/widget/AnimCheckBox;->access$400(Lcom/meizu/common/widget/AnimCheckBox;)Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/meizu/common/widget/AnimCheckBox$UpdateListener;->getUpdateTransition(F)V

    .line 200
    :cond_1
    return-void
.end method
