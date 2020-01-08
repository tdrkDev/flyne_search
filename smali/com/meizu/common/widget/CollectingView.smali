.class public Lcom/meizu/common/widget/CollectingView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;,
        Lcom/meizu/common/widget/CollectingView$Stage;
    }
.end annotation


# instance fields
.field private isAnimationRunning:Z

.field private isPerformAnimation:Z

.field private mAnimImage:Landroid/graphics/drawable/Drawable;

.field private mAnimImageView:Landroid/widget/ImageView;

.field private mAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimPopWindow:Landroid/widget/PopupWindow;

.field private mBackImageChanged:Z

.field private mCollectImage:Landroid/graphics/drawable/Drawable;

.field private mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

.field private mHeight:I

.field private mPopAnimation:Landroid/view/animation/Animation;

.field private mPopWindowView:Landroid/view/ViewGroup;

.field private mPopwindowHiehgt:I

.field private mPopwindowWidth:I

.field private mTranslateHeight:F

.field private mUnCollectImage:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CollectingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CollectingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    new-instance v0, Lcom/meizu/common/widget/CollectingView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/CollectingView$1;-><init>(Lcom/meizu/common/widget/CollectingView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 84
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/CollectingView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/CollectingView;)Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/CollectingView;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/meizu/common/widget/CollectingView;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/CollectingView;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CollectingView;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private addImageView()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 210
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 211
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    .line 212
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method private getInterpolator(FFFF)Landroid/view/animation/Interpolator;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 338
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 339
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 340
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 342
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_0
.end method

.method private getMeasure(III)I
    .locals 0

    .prologue
    .line 368
    sparse-switch p2, :sswitch_data_0

    .line 379
    :goto_0
    :sswitch_0
    return p3

    :sswitch_1
    move p3, p1

    .line 374
    goto :goto_0

    .line 368
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAnimation()Landroid/view/animation/Animation;
    .locals 10

    .prologue
    .line 219
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3fcccccd    # 1.6f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fcccccd    # 1.6f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 221
    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/meizu/common/widget/CollectingView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 222
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 224
    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mTranslateHeight:F

    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    int-to-float v2, v2

    div-float v9, v1, v2

    .line 225
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    neg-float v9, v9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 227
    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/meizu/common/widget/CollectingView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 228
    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 231
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 232
    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const v5, 0x3f333333    # 0.7f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/meizu/common/widget/CollectingView;->getInterpolator(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 233
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 234
    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 236
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 237
    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 238
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 239
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 242
    return-object v3
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 89
    sget-object v0, Lcom/meizu/common/R$styleable;->CollectingView:[I

    sget v1, Lcom/meizu/common/R$style;->Widget_MeizuCommon_CollectingView_Default:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    sget v1, Lcom/meizu/common/R$styleable;->CollectingView_collectBackDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 94
    sget v1, Lcom/meizu/common/R$styleable;->CollectingView_unCollectBackDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 101
    iput-boolean v2, p0, Lcom/meizu/common/widget/CollectingView;->isPerformAnimation:Z

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->isAnimationRunning:Z

    .line 103
    iput-boolean v2, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 104
    return-void
.end method

.method private initPopWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    .line 199
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->addImageView()V

    .line 200
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopWindowView:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowWidth:I

    iget v3, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    .line 201
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 203
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 204
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 206
    return-void
.end method

.method private measurePopwindowHeight(II)V
    .locals 6

    .prologue
    .line 128
    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowWidth:I

    .line 129
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 130
    const v1, 0x42855555

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/CollectingView;->mTranslateHeight:F

    .line 131
    iget v0, p0, Lcom/meizu/common/widget/CollectingView;->mTranslateHeight:F

    float-to-double v0, v0

    int-to-double v2, p2

    const-wide v4, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    .line 132
    return-void
.end method

.method private startAnim()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 177
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    if-ne v0, v1, :cond_3

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->initPopWindow()V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    if-ne v0, v1, :cond_2

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->initAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    .line 185
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 188
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_4

    .line 189
    iget v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowWidth:I

    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowHiehgt:I

    neg-int v2, v2

    invoke-virtual {v1, p0, v0, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 194
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 195
    return-void

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->addImageView()V

    goto :goto_0

    .line 191
    :cond_4
    iget v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopwindowWidth:I

    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    goto :goto_1
.end method


# virtual methods
.method public getCollectCallBack()Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    return-object v0
.end method

.method public getState()Lcom/meizu/common/widget/CollectingView$Stage;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 385
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 386
    const-class v0, Lcom/meizu/common/widget/CollectingView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 387
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 110
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 111
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 114
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 116
    iget-object v4, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 117
    iget-object v5, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 119
    invoke-direct {p0, v2, v0, v4}, Lcom/meizu/common/widget/CollectingView;->getMeasure(III)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    .line 120
    invoke-direct {p0, v3, v1, v5}, Lcom/meizu/common/widget/CollectingView;->getMeasure(III)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    .line 122
    iget v0, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CollectingView;->setMeasuredDimension(II)V

    .line 123
    iget v0, p0, Lcom/meizu/common/widget/CollectingView;->mWidth:I

    iget v1, p0, Lcom/meizu/common/widget/CollectingView;->mHeight:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CollectingView;->measurePopwindowHeight(II)V

    .line 125
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    iget-object v1, p0, Lcom/meizu/common/widget/CollectingView;->mPopAnimation:Landroid/view/animation/Animation;

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 286
    :cond_1
    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimationPerform(Z)V
    .locals 0

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/meizu/common/widget/CollectingView;->isPerformAnimation:Z

    .line 298
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 325
    iput-object p2, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    .line 326
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    .line 327
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 334
    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundResId(II)V
    .locals 2

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    .line 308
    invoke-virtual {p0}, Lcom/meizu/common/widget/CollectingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    .line 309
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimImage:Landroid/graphics/drawable/Drawable;

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    sget-object v1, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->mBackImageChanged:Z

    .line 316
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCollectCallBack(Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    .line 363
    return-void
.end method

.method public setState(Lcom/meizu/common/widget/CollectingView$Stage;)V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    if-ne p1, v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    if-ne v0, p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->COLLECTED:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 150
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->isPerformAnimation:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/meizu/common/widget/CollectingView;->startAnim()V

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    if-eq v0, p1, :cond_0

    .line 157
    sget-object v0, Lcom/meizu/common/widget/CollectingView$Stage;->CANCEL:Lcom/meizu/common/widget/CollectingView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCurrentStage:Lcom/meizu/common/widget/CollectingView$Stage;

    .line 159
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mAnimPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mUnCollectImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CollectingView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-boolean v0, p0, Lcom/meizu/common/widget/CollectingView;->isAnimationRunning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    if-eqz v0, :cond_4

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->cancleStartAnim()V

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView;->mCollectingCallBack:Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;

    invoke-interface {v0}, Lcom/meizu/common/widget/CollectingView$OnCollectCallBack;->cancleEndAnim()V

    goto :goto_0
.end method
