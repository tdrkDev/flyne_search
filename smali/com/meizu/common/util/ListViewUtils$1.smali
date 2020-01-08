.class Lcom/meizu/common/util/ListViewUtils$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ListViewUtils;->fadeOutItemView(Landroid/widget/ListView;IILcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/util/ListViewUtils;

.field final synthetic val$endPos:I

.field final synthetic val$firstVisiblePosition:I

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

.field final synthetic val$startPos:I


# direct methods
.method constructor <init>(Lcom/meizu/common/util/ListViewUtils;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;IILandroid/widget/ListView;I)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/meizu/common/util/ListViewUtils$1;->this$0:Lcom/meizu/common/util/ListViewUtils;

    iput-object p2, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    iput p3, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$startPos:I

    iput p4, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$endPos:I

    iput-object p5, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$listView:Landroid/widget/ListView;

    iput p6, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$firstVisiblePosition:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .prologue
    .line 104
    iget v0, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$startPos:I

    iget v1, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$endPos:I

    if-ne v0, v1, :cond_2

    .line 105
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$1;->this$0:Lcom/meizu/common/util/ListViewUtils;

    iget-object v1, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$listView:Landroid/widget/ListView;

    iget v3, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$startPos:I

    iget v4, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$firstVisiblePosition:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/common/util/ListViewUtils;->access$000(Lcom/meizu/common/util/ListViewUtils;Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V

    .line 111
    :cond_0
    :goto_0
    iget v0, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$startPos:I

    :goto_1
    iget v1, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$endPos:I

    if-gt v0, v1, :cond_3

    .line 112
    iget-object v1, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$firstVisiblePosition:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_1

    .line 114
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 115
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    invoke-interface {v0}, Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;->onEndListViewFadedOut()V

    goto :goto_0

    .line 118
    :cond_3
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$1;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    invoke-interface {v0}, Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;->onStartListViewFadeOut()V

    .line 100
    :cond_0
    return-void
.end method
