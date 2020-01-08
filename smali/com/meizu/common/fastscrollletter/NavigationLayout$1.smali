.class Lcom/meizu/common/fastscrollletter/NavigationLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/fastscrollletter/NavigationView$NavigationViewCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/fastscrollletter/NavigationLayout;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;


# direct methods
.method constructor <init>(Lcom/meizu/common/fastscrollletter/NavigationLayout;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListViewFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getListViewHeightNow()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewHeightNow()I

    move-result v0

    return v0
.end method

.method public getListViewItemCount()I
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewItemCount()I

    move-result v0

    return v0
.end method

.method public getListViewLastVisiblePosition()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->getListViewLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public hideOverlay()V
    .locals 4

    .prologue
    .line 221
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-virtual {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;-><init>(Lcom/meizu/common/fastscrollletter/NavigationLayout$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_0
    return-void
.end method

.method public location(Ljava/lang/String;I)V
    .locals 5
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$000(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$000(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    move v3, p2

    move v4, p2

    move-object v0, p1

    move-object v1, p1

    .line 176
    :goto_0
    if-gez v4, :cond_1

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$300(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1, p2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$002(Lcom/meizu/common/fastscrollletter/NavigationLayout;I)I

    .line 180
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1, v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$400(Lcom/meizu/common/fastscrollletter/NavigationLayout;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->location(Ljava/lang/String;)V

    .line 200
    :cond_2
    :goto_1
    return-void

    .line 184
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$300(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 185
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0, p2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$002(Lcom/meizu/common/fastscrollletter/NavigationLayout;I)I

    .line 187
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0, v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$400(Lcom/meizu/common/fastscrollletter/NavigationLayout;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->location(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_4
    if-ltz v4, :cond_6

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_6

    .line 193
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 195
    :goto_2
    if-ltz v3, :cond_5

    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 196
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$200(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    :goto_3
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v2, v0

    goto :goto_2
.end method

.method public showOverlay()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->hideVerticalScrollBar()V

    .line 217
    return-void
.end method

.method public stopListViewScroll()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$002(Lcom/meizu/common/fastscrollletter/NavigationLayout;I)I

    .line 167
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->stopListViewScroll()V

    .line 168
    return-void
.end method

.method public touchY(F)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$700(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/fastscrollletter/NavigationView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$700(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/fastscrollletter/NavigationView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v2}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v1}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$500(Lcom/meizu/common/fastscrollletter/NavigationLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0
.end method
