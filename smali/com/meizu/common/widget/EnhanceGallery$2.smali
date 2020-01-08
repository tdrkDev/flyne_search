.class Lcom/meizu/common/widget/EnhanceGallery$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceGallery;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 839
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 840
    const/4 v0, 0x0

    .line 841
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$100(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 842
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 843
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 851
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 853
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v1

    if-eq v1, v5, :cond_1

    if-eqz v0, :cond_1

    .line 854
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1, v5}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 857
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$400(Lcom/meizu/common/widget/EnhanceGallery;)Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    .line 858
    return-void

    .line 846
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v4}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 847
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2}, Lcom/meizu/common/widget/EnhanceGallery;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method
