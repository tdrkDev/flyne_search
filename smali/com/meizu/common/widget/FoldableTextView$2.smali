.class Lcom/meizu/common/widget/FoldableTextView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 602
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$400(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$800(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 604
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$900(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1400(Lcom/meizu/common/widget/FoldableTextView;II)V

    .line 608
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 609
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1100(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1500(Lcom/meizu/common/widget/FoldableTextView;II)V

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 589
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$400(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 590
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$800(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 591
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/FoldableTextView;->access$900(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1000(Lcom/meizu/common/widget/FoldableTextView;II)V

    .line 595
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 597
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1300(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$1302(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 598
    return-void

    .line 593
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v2}, Lcom/meizu/common/widget/FoldableTextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1100(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/meizu/common/widget/FoldableTextView;->access$1200(Lcom/meizu/common/widget/FoldableTextView;II)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 585
    return-void
.end method
