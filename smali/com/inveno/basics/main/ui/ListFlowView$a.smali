.class Lcom/inveno/basics/main/ui/ListFlowView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/basics/main/ui/ListFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inveno/basics/main/ui/ListFlowView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inveno/basics/main/ui/ListFlowView;)V
    .locals 1

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 629
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    .line 630
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 639
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 658
    :pswitch_0
    const-string v0, "\u5f00\u59cb\u521d\u59cb\u5316\u62c9\u53d6\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 660
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->p(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 661
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    goto :goto_0

    .line 641
    :pswitch_1
    const-string v0, "\u62c9\u53d6\u51fa\u73b0\u7f51\u7edc\u9519\u8bef\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 643
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    .line 644
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inveno/basics/ui/RefreshHintView;->setState(I)V

    .line 648
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 651
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->a()V

    .line 653
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 664
    :pswitch_2
    const-string v0, "\u5f00\u59cb\u4e0a\u62c9\u5237\u65b0\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v3}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 666
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->p(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 667
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v3}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;I)V

    .line 668
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 669
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    goto/16 :goto_0

    .line 672
    :pswitch_3
    const-string v0, "\u5f00\u59cb\u4e0b\u62c9\u5237\u65b0"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v6}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 674
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->p(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 675
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    goto/16 :goto_0

    .line 678
    :pswitch_4
    const-string v0, "\u5f00\u59cb\u5f3a\u5236\u5237\u65b0"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 680
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->p(Lcom/inveno/basics/main/ui/ListFlowView;)V

    .line 681
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    goto/16 :goto_0

    .line 684
    :pswitch_5
    const-string v0, "\u521d\u59cb\u5316\u62c9\u53d6\u5b8c\u6210\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 686
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 687
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;I)V

    .line 690
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 691
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->q(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    goto/16 :goto_0

    .line 694
    :pswitch_6
    const-string v0, "\u4e0a\u62c9\u5237\u65b0\u5b8c\u6210\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 696
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 697
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;I)V

    .line 700
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 701
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->q(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    goto/16 :goto_0

    .line 704
    :pswitch_7
    const-string v0, "\u4e0b\u62c9\u5237\u65b0\u5b8c\u6210\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 706
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 707
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->q(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    goto/16 :goto_0

    .line 712
    :pswitch_8
    const-string v0, "\u5f3a\u5236\u5237\u65b0\u5b8c\u6210\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v4}, Lcom/inveno/basics/main/ui/ListFlowView;->a(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    .line 714
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 715
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v1}, Lcom/inveno/basics/main/ui/ListFlowView;->q(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;I)I

    goto/16 :goto_0

    .line 720
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u62c9\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 722
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    .line 723
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 724
    :cond_4
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inveno/basics/ui/RefreshHintView;->setState(I)V

    .line 727
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 729
    :cond_5
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 730
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v6}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;I)V

    .line 732
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 733
    :cond_6
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 734
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    .line 736
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/inveno/basics/R$string;->mz_load_up_nodata:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    invoke-static {v1, v0}, Lcom/inveno/basics/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 741
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6ca1\u6709\u6570\u636e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 742
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v2}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;Z)Z

    .line 743
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    .line 744
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/a/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 745
    :cond_7
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 747
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inveno/basics/ui/RefreshHintView;->setState(I)V

    .line 748
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inveno/basics/ui/RefreshHintView;->setVisibility(I)V

    goto/16 :goto_0

    .line 750
    :cond_8
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 751
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->c(Lcom/inveno/basics/main/ui/ListFlowView;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;I)V

    .line 753
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 754
    :cond_9
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 755
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    .line 757
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/inveno/basics/R$string;->mz_load_no_data:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 756
    invoke-static {v1, v0}, Lcom/inveno/basics/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 759
    :cond_a
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->o(Lcom/inveno/basics/main/ui/ListFlowView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 760
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    .line 762
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/inveno/basics/R$string;->mz_load_no_data:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 761
    invoke-static {v1, v0}, Lcom/inveno/basics/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 767
    :pswitch_b
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u6539\u53d8"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->e(Lcom/inveno/basics/main/ui/ListFlowView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/basics/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 770
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->r(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/NoNetWorkView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inveno/basics/ui/NoNetWorkView;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->a()V

    .line 772
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    .line 773
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->j(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/RefreshHintView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inveno/basics/ui/RefreshHintView;->setState(I)V

    goto/16 :goto_0

    .line 776
    :cond_b
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->r(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/ui/NoNetWorkView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inveno/basics/ui/NoNetWorkView;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0, v5}, Lcom/inveno/basics/main/ui/ListFlowView;->b(Lcom/inveno/basics/main/ui/ListFlowView;I)V

    .line 778
    iget-object v0, p0, Lcom/inveno/basics/main/ui/ListFlowView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/basics/main/ui/ListFlowView;

    invoke-static {v0}, Lcom/inveno/basics/main/ui/ListFlowView;->d(Lcom/inveno/basics/main/ui/ListFlowView;)Lcom/inveno/basics/main/ui/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/basics/main/ui/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 639
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_b
    .end packed-switch
.end method
