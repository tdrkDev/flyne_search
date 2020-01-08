.class Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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
    .line 202
    iput-object p1, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper$3;->this$0:Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;->access$300(Lcom/meizu/common/widget/AnimCheckBox$CheckBoxAnimHelper;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 209
    :cond_0
    return-void
.end method
