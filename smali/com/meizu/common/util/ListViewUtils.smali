.class public Lcom/meizu/common/util/ListViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0x12c

.field private static final DELAY_ANIMATION:I = 0x21


# instance fields
.field private mAlInterpolator:Landroid/view/animation/Interpolator;

.field mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTrInterpolator:Landroid/view/animation/Interpolator;

.field private mUpInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mTrInterpolator:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mAlInterpolator:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mUpInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    :goto_0
    return-void

    .line 55
    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mTrInterpolator:Landroid/view/animation/Interpolator;

    .line 56
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mAlInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mUpInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/util/ListViewUtils;Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/util/ListViewUtils;->animateRemoval(Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/util/ListViewUtils;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/meizu/common/util/ListViewUtils;->mUpInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private animateRemoval(Landroid/widget/ListView;Landroid/view/View;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 125
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 129
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 130
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 131
    if-eq v3, p2, :cond_1

    .line 132
    add-int v4, v0, v1

    .line 133
    int-to-long v4, v4

    .line 134
    iget-object v6, p0, Lcom/meizu/common/util/ListViewUtils;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_2
    if-eqz p3, :cond_3

    .line 139
    invoke-interface {p3}, Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;->onEndListViewFadedOut()V

    .line 140
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 141
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/meizu/common/util/ListViewUtils$2;

    invoke-direct {v1, p0, p1, v2, p3}, Lcom/meizu/common/util/ListViewUtils$2;-><init>(Lcom/meizu/common/util/ListViewUtils;Landroid/widget/ListView;Ljava/util/ArrayList;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 199
    return-void
.end method


# virtual methods
.method public fadeOutItemView(Landroid/widget/ListView;IILcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;Landroid/widget/BaseAdapter;)V
    .locals 12

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v1, p2

    .line 74
    :goto_0
    if-gt v1, p3, :cond_1

    .line 75
    sub-int v3, v1, v6

    invoke-virtual {p1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 76
    if-eqz v3, :cond_0

    .line 77
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 78
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 79
    iget-object v7, p0, Lcom/meizu/common/util/ListViewUtils;->mAlInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v7}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 80
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    .line 81
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 82
    iget-object v9, p0, Lcom/meizu/common/util/ListViewUtils;->mTrInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Keyframe;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v4, 0x1

    aput-object v5, v10, v4

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 84
    const-string v5, "translationX"

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Keyframe;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v8, v9, v7

    invoke-static {v5, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 85
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-static {v3, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 86
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 87
    mul-int/lit8 v4, v0, 0x21

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 88
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 93
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 94
    new-instance v0, Lcom/meizu/common/util/ListViewUtils$1;

    move-object v1, p0

    move-object/from16 v2, p4

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/meizu/common/util/ListViewUtils$1;-><init>(Lcom/meizu/common/util/ListViewUtils;Lcom/meizu/common/util/ListViewUtils$OnListViewFadeListener;IILandroid/widget/ListView;I)V

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 121
    return-void
.end method
