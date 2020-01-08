.class Lcom/meizu/common/util/ListViewUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/util/ListViewUtils;->animateRemoval(Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/util/ListViewUtils;

.field final synthetic val$adapterList:Ljava/util/ArrayList;

.field final synthetic val$listview:Landroid/widget/ListView;

.field final synthetic val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;


# direct methods
.method constructor <init>(Lcom/meizu/common/util/ListViewUtils;Landroid/widget/ListView;Ljava/util/ArrayList;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    iput-object p2, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$adapterList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$onListViewFadeListener:Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 148
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 152
    add-int v0, v3, v1

    .line 153
    iget-object v6, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$adapterList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    .line 154
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 155
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v6, :cond_0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v6

    .line 159
    if-eqz v5, :cond_0

    .line 160
    int-to-float v0, v0

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 161
    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 162
    iget-object v7, p0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    invoke-static {v7}, Lcom/meizu/common/util/ListViewUtils;->access$100(Lcom/meizu/common/util/ListViewUtils;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 163
    const-string v7, "translationY"

    new-array v8, v12, [Landroid/animation/Keyframe;

    aput-object v0, v8, v2

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 164
    new-array v6, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 165
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v7, p0, Lcom/meizu/common/util/ListViewUtils$2;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    add-int/2addr v0, v7

    .line 171
    if-lez v1, :cond_2

    :goto_2
    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v6

    .line 173
    if-eqz v5, :cond_0

    .line 174
    int-to-float v0, v0

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    .line 175
    invoke-static {v11, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    .line 176
    iget-object v7, p0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    invoke-static {v7}, Lcom/meizu/common/util/ListViewUtils;->access$100(Lcom/meizu/common/util/ListViewUtils;)Landroid/view/animation/Interpolator;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 177
    const-string v7, "translationY"

    new-array v8, v12, [Landroid/animation/Keyframe;

    aput-object v0, v8, v2

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 178
    new-array v6, v9, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 179
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_2
    neg-int v0, v0

    goto :goto_2

    .line 183
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 184
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 185
    new-instance v1, Lcom/meizu/common/util/ListViewUtils$2$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/util/ListViewUtils$2$1;-><init>(Lcom/meizu/common/util/ListViewUtils$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 194
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 195
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils$2;->this$0:Lcom/meizu/common/util/ListViewUtils;

    iget-object v0, v0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 196
    return v9
.end method
