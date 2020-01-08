.class Lcom/meizu/common/widget/StretchSearchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/StretchSearchView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/StretchSearchView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/StretchSearchView;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 664
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$000(Lcom/meizu/common/widget/StretchSearchView;)Lcom/meizu/common/widget/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$100(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$200(Lcom/meizu/common/widget/StretchSearchView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$300(Lcom/meizu/common/widget/StretchSearchView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$400(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/StretchSearchView;->showIme(Z)V

    .line 677
    :goto_0
    return-void

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$300(Lcom/meizu/common/widget/StretchSearchView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$400(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/StretchSearchView$3;->this$0:Lcom/meizu/common/widget/StretchSearchView;

    invoke-static {v0}, Lcom/meizu/common/widget/StretchSearchView;->access$100(Lcom/meizu/common/widget/StretchSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 680
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 683
    return-void
.end method
