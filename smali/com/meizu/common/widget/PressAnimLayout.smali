.class public Lcom/meizu/common/widget/PressAnimLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final ANIM_DOWN_DURATION:J

.field private final ANIM_UP_DURATION:J

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsTouchCanceled:Z

.field private mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutHeight:I

.field private mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutWidth:I

.field private mOutSlop:F

.field private mScaleBaseline:F

.field private mScaleTarget:F

.field private mUpTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PressAnimLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PressAnimLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-wide/16 v0, 0x80

    iput-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->ANIM_DOWN_DURATION:J

    .line 24
    const-wide/16 v0, 0x160

    iput-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->ANIM_UP_DURATION:J

    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    .line 27
    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    .line 52
    invoke-direct {p0}, Lcom/meizu/common/widget/PressAnimLayout;->init()V

    .line 53
    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownTime:J

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownX:F

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownY:F

    .line 115
    invoke-direct {p0}, Lcom/meizu/common/widget/PressAnimLayout;->setupLayoutDownAnimator()V

    .line 116
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 117
    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 122
    iget v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mOutSlop:F

    sub-float v2, v4, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mOutSlop:F

    add-float/2addr v2, v3

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    cmpg-float v0, v1, v4

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutHeight:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    if-eqz v0, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 130
    :cond_2
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x80

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mUpTime:J

    .line 134
    iget-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mUpTime:J

    iget-wide v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownTime:J

    sub-long/2addr v0, v2

    .line 136
    invoke-direct {p0}, Lcom/meizu/common/widget/PressAnimLayout;->setupLayoutUpAnimator()V

    .line 137
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 138
    sub-long v0, v4, v0

    .line 139
    iget-object v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 144
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const v3, 0x3ea8f5c3    # 0.33f

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method

.method private setupLayoutDownAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    sget-object v0, Lcom/meizu/common/widget/PressAnimLayout;->SCALE_X:Landroid/util/Property;

    new-array v1, v6, [F

    iget v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    aput v2, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    aput v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/meizu/common/widget/PressAnimLayout;->SCALE_Y:Landroid/util/Property;

    new-array v2, v6, [F

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    aput v3, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_0

    .line 153
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0
.end method

.method private setupLayoutUpAnimator()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    sget-object v0, Lcom/meizu/common/widget/PressAnimLayout;->SCALE_X:Landroid/util/Property;

    new-array v1, v6, [F

    iget v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    aput v2, v1, v4

    iget v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    aput v2, v1, v5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/meizu/common/widget/PressAnimLayout;->SCALE_Y:Landroid/util/Property;

    new-array v2, v6, [F

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    aput v3, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_0

    .line 168
    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, v5

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    .line 169
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x160

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/meizu/common/widget/PressAnimLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 108
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 95
    :pswitch_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 102
    :pswitch_2
    iget-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_2

    .line 103
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 105
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 66
    iput p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutWidth:I

    .line 67
    iput p2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutHeight:I

    .line 68
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 73
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/PressAnimLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PressAnimLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    return-void
.end method
