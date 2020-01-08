.class public Lcom/meizu/common/widget/GradientRectangleLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final TRANSITION_DURATION:I

.field private mDoubleOneDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mDoubleOneGradientColor:[I

.field private mDoubleOneGradientPressedColor:[I

.field private mDoubleOneStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mDoubleTwoDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mDoubleTwoGradientColor:[I

.field private mDoubleTwoGradientPressedColor:[I

.field private mDoubleTwoStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private mSingleDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private mSingleGradientColor:[I

.field private mSingleGradientPressedColor:[I

.field private mSingleStateListDrawable:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GradientRectangleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/GradientRectangleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v0, 0x80

    iput v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->TRANSITION_DURATION:I

    .line 53
    return-void
.end method

.method private init()V
    .locals 10

    .prologue
    const v9, -0xe67213

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/GradientRectangleLayout;->setOrientation(I)V

    .line 57
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GradientRectangleLayout;->setGravity(I)V

    .line 59
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientRectangleLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    sget v1, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColorLevel4:I

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 61
    sget v2, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColorLevel5:I

    invoke-virtual {v0, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 62
    sget v3, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColorLevel6:I

    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 63
    sget v4, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColorLevel7:I

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 64
    sget v5, Lcom/meizu/common/R$styleable;->MZTheme_mzThemeColorLevel8:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    new-array v0, v8, [I

    aput v2, v0, v6

    aput v4, v0, v7

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleGradientColor:[I

    .line 68
    new-array v0, v8, [I

    aput v3, v0, v6

    aput v5, v0, v7

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleGradientPressedColor:[I

    .line 70
    new-array v0, v8, [I

    aput v1, v0, v6

    aput v2, v0, v7

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneGradientColor:[I

    .line 71
    new-array v0, v8, [I

    aput v2, v0, v6

    aput v3, v0, v7

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneGradientPressedColor:[I

    .line 73
    new-array v0, v8, [I

    aput v3, v0, v6

    aput v4, v0, v7

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoGradientColor:[I

    .line 74
    new-array v0, v8, [I

    aput v4, v0, v6

    aput v5, v0, v7

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoGradientPressedColor:[I

    .line 75
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientRectangleLayout;->initTransitionDrawable()V

    .line 76
    return-void
.end method

.method private initTransitionDrawable()V
    .locals 10

    .prologue
    const v9, 0x101009e

    const/4 v8, 0x2

    const v7, -0x101009e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 122
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleGradientColor:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleGradientPressedColor:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 124
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneGradientColor:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneGradientPressedColor:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 126
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoGradientColor:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v4, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoGradientPressedColor:[I

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 129
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#19000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 131
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 132
    iget-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v6, [I

    aput v7, v2, v5

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v6, [I

    aput v9, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 135
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 136
    iget-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v6, [I

    aput v7, v2, v5

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v6, [I

    aput v9, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 139
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 140
    iget-object v1, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v6, [I

    aput v7, v2, v5

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    new-array v1, v6, [I

    aput v9, v1, v5

    iget-object v2, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoDownDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 142
    return-void
.end method

.method private setTransition(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/16 v2, 0x80

    .line 110
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    .line 113
    if-eqz p2, :cond_2

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 81
    invoke-direct {p0}, Lcom/meizu/common/widget/GradientRectangleLayout;->init()V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 92
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mSingleStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 99
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 103
    :cond_1
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleOneStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/GradientRectangleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/GradientRectangleLayout;->mDoubleTwoStateListDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 107
    :cond_2
    return-void

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return v1

    .line 148
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/GradientRectangleLayout;->setTransition(Landroid/view/View;Z)V

    goto :goto_0

    .line 151
    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/GradientRectangleLayout;->setTransition(Landroid/view/View;Z)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
