.class public Lcom/meizu/common/widget/EnhanceSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;,
        Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;,
        Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;,
        Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final AURA_HIDE_ANIM_TIME:I = 0xc8

.field private static final AURA_SCALE_BASELINE:F = 1.0f

.field private static final AURA_SCALE_TARGET:F = 0.5f

.field private static final AURA_SHOW_ANIM_TIME:I = 0xb4

.field private static final MIN_HEIGHT:I = 0x14

.field private static final MIN_WIDTH:I = 0x40

.field private static final TAG:Ljava/lang/String; = "EnhanceSeekBar"

.field private static final TEXT_HEIGHT:I = 0x32

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private hasMoved:Z

.field private iconPadding:I

.field private iconWidth:I

.field private isAuraShow:Z

.field private isDrag:Z

.field private mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

.field private mAccessibilityFocused:Z

.field private mAuraDrawble:Landroid/graphics/drawable/Drawable;

.field private mAuraHeight:I

.field private mAuraHideAnimator:Landroid/animation/ValueAnimator;

.field private mAuraHideInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraRadius:I

.field private mAuraShowAnimator:Landroid/animation/ValueAnimator;

.field private mAuraShowInterpolator:Landroid/view/animation/Interpolator;

.field private mAuraWidth:I

.field private mDecreaseIcon:Landroid/graphics/Bitmap;

.field private mDistance:I

.field private mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

.field private mEnableEngine:Z

.field private mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mHalfThumbHeight:I

.field private mHalfThumbWidth:I

.field private mIncreaseIcon:Landroid/graphics/Bitmap;

.field private mInitialThumbX:F

.field private mInitialTouchX:F

.field private mIsDragging:Z

.field private mIsInItemPositon:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mLeftIconRect:Landroid/graphics/Rect;

.field private mLocationInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mPaintColorStateList:Landroid/content/res/ColorStateList;

.field private mProgress:I

.field private mRightIconRect:Landroid/graphics/Rect;

.field private mScaledTouchSlop:I

.field private mSpotColor:I

.field private mSpotColorStateList:Landroid/content/res/ColorStateList;

.field private mSpotRadius:F

.field private mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

.field private mStrokeColor:I

.field private mStrokeColorStateList:Landroid/content/res/ColorStateList;

.field private mStrokeWidth:I

.field private mTextSize:I

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownProgress:I

.field private mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 191
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_EnhanceSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    .line 88
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 89
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 90
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    .line 105
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    .line 129
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 130
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 132
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    .line 133
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    .line 139
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 144
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1080
    iput-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    .line 196
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    .line 197
    sget-object v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 199
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEItems:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItems([Ljava/lang/CharSequence;)V

    .line 202
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEProgress:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(I)V

    .line 205
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEItemsCount:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 206
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setItemsCount(I)V

    .line 208
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEThumb:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$drawable;->mz_scrubber_control_selector:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    :cond_0
    sget v2, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEnhanceDistance:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_distance:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    .line 213
    sget v2, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcStrokeWidth:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_stroke_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    .line 214
    sget v2, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcItemsTextSize:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_item_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    .line 215
    sget v2, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcEnhanceStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColorStateList:Landroid/content/res/ColorStateList;

    .line 216
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 218
    sget v0, Lcom/meizu/common/R$styleable;->EnhanceSeekBar_mcAuraEnhanceThumbDrawble:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_icon_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    .line 221
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_icon_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$drawable;->mz_enhance_seekbar_ic_increase:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$drawable;->mz_enhance_seekbar_ic_decrease:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 224
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setIncreaseIcon(Landroid/graphics/Bitmap;)V

    .line 225
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setDecreaseIcon(Landroid/graphics/Bitmap;)V

    .line 226
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->mc_enhance_seekbar_background_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColorStateList:Landroid/content/res/ColorStateList;

    .line 227
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->mc_enhance_seekbar_spot_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColorStateList:Landroid/content/res/ColorStateList;

    .line 228
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$dimen;->mc_enhance_seekbar_spot_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotRadius:F

    .line 230
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->refreshRes()V

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 238
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3eae147b    # 0.34f

    invoke-direct {v0, v5, v1, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLocationInterpolator:Landroid/view/animation/Interpolator;

    .line 239
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3edc28f6    # 0.43f

    invoke-direct {v0, v5, v1, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 240
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    :goto_0
    return-void

    .line 242
    :cond_1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLocationInterpolator:Landroid/view/animation/Interpolator;

    .line 243
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/EnhanceSeekBar;I)I
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/EnhanceSeekBar;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/EnhanceSeekBar;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    return p1
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/EnhanceSeekBar;)[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/EnhanceSeekBar;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    return v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1056
    :cond_0
    return-void
.end method

.method private flingThumb(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    .line 942
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    :goto_0
    return-void

    .line 947
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v0

    .line 948
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 951
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 953
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 954
    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float v0, v0

    add-float/2addr v0, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 956
    if-gez v0, :cond_2

    .line 957
    const/4 v0, 0x0

    .line 962
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int v4, v0, v4

    int-to-float v4, v4

    int-to-float v1, v1

    div-float v1, v4, v1

    sub-float v1, v3, v1

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 963
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 965
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v3, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 966
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto :goto_0

    .line 958
    :cond_2
    if-le v0, v1, :cond_1

    move v0, v1

    .line 959
    goto :goto_1

    .line 962
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_2
.end method

.method private getDisabledColor(Landroid/content/res/ColorStateList;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1420
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private declared-synchronized getMax()I
    .locals 1

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNormalColor(Landroid/content/res/ColorStateList;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1413
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method public static getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    const-string v0, "EnhanceSeekBar"

    return-object v0
.end method

.method private isPointInside(II)Z
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x1

    return v0
.end method

.method private isRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 707
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onProgressRefresh(F)V
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 572
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 579
    :cond_0
    return-void
.end method

.method private prepareStartAuraHide()V
    .locals 1

    .prologue
    .line 1149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    .line 1150
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1151
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->startAuraHideAnim()V

    .line 1153
    :cond_0
    return-void
.end method

.method private prepareStartAuraShow()V
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    if-nez v0, :cond_0

    .line 1143
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->startAuraShowAnim()V

    .line 1145
    :cond_0
    return-void
.end method

.method private refreshRes()V
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getNormalColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    .line 262
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    .line 263
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColorStateList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDisabledColor(Landroid/content/res/ColorStateList;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    goto :goto_0
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 4

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 1383
    new-instance v0, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;Lcom/meizu/common/widget/EnhanceSeekBar$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    .line 1387
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1388
    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setDecreaseIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    .line 319
    return-void
.end method

.method private setIconRect()V
    .locals 7

    .prologue
    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v1

    .line 323
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 324
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v3, v4

    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLeftIconRect:Landroid/graphics/Rect;

    .line 326
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    add-int/2addr v1, v2

    .line 327
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 328
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 329
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    iget v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mRightIconRect:Landroid/graphics/Rect;

    .line 330
    return-void
.end method

.method private setIncreaseIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    .line 315
    return-void
.end method

.method private declared-synchronized setMax(I)V
    .locals 2

    .prologue
    .line 556
    monitor-enter p0

    if-gez p1, :cond_0

    .line 557
    const/4 p1, 0x0

    .line 559
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-eq p1, v0, :cond_2

    .line 560
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 562
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 563
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    .line 565
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 566
    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    :cond_2
    monitor-exit p0

    return-void

    .line 565
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setThumbOffset(I)V
    .locals 0

    .prologue
    .line 398
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    .line 399
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 400
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10

    .prologue
    const/high16 v9, -0x80000000

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 621
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 622
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 632
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 633
    int-to-float v3, v0

    mul-float/2addr v3, p3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v3, v0, v3

    .line 634
    sub-int/2addr v0, v3

    move v5, v0

    move v6, v3

    .line 639
    :goto_0
    add-int v7, v5, v4

    .line 641
    if-ne p4, v9, :cond_3

    .line 642
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 643
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 644
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v4, v3

    move v3, v0

    move v0, v1

    .line 652
    :goto_1
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v8, :cond_0

    .line 653
    if-nez v0, :cond_4

    .line 654
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 655
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 663
    :cond_0
    :goto_2
    if-eqz v0, :cond_6

    .line 664
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 666
    if-ne v0, v6, :cond_5

    .line 667
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 668
    if-ne p4, v9, :cond_1

    .line 669
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    .line 704
    :cond_1
    :goto_3
    return-void

    .line 636
    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    int-to-float v5, v0

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v0, v3

    move v5, v0

    move v6, v0

    .line 637
    goto :goto_0

    .line 648
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    add-int/2addr v0, p4

    move v3, v0

    move v4, p4

    move v0, v2

    .line 649
    goto :goto_1

    .line 658
    :cond_4
    iget-object v8, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v2

    .line 659
    goto :goto_2

    .line 675
    :cond_5
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v0, v0

    int-to-float v5, v4

    invoke-virtual {v3, v0, v5}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 676
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    int-to-float v3, v6

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->setXY(FF)V

    .line 677
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 678
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDrawableXYHolder:Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;

    const-string v3, "xY"

    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mXYEvaluator:Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    aput-object v2, v5, v1

    invoke-static {v0, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 680
    const v0, 0x3ee38e39

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEndXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-virtual {v2}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStartXY:Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    invoke-virtual {v3}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 681
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 682
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLocationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 683
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/meizu/common/widget/EnhanceSeekBar$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$1;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 703
    :goto_4
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    goto :goto_3

    .line 700
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v4, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 701
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto :goto_4
.end method

.method private startAuraHideAnim()V
    .locals 4

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1110
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    .line 1111
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1112
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1114
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$3;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1123
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$4;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1133
    return-void

    .line 1110
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private startAuraShowAnim()V
    .locals 4

    .prologue
    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isAuraShow:Z

    .line 1084
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1085
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    .line 1086
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1087
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1089
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$2;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1100
    return-void

    .line 1085
    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopAuraHideAnim()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1139
    :cond_0
    return-void
.end method

.method private stopAuraShowAnim()V
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1106
    :cond_0
    return-void
.end method

.method private trackTapUpTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1016
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEnableEngine:Z

    if-eqz v1, :cond_1

    .line 1022
    invoke-static {p0}, Lcom/meizu/common/util/CommonUtils;->shakeForFlymeFeature(Landroid/view/View;)V

    .line 1025
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v1

    .line 1026
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    .line 1028
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    .line 1029
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1030
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v0, v0

    .line 1043
    :cond_2
    :goto_1
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 1044
    float-to-int v0, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 1045
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/high16 v3, -0x80000000

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_0

    .line 1030
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    goto :goto_1

    .line 1032
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    goto :goto_1

    .line 1034
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    .line 1035
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1036
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    goto :goto_1

    .line 1038
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v0, v0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    goto :goto_1

    .line 1041
    :cond_8
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float v1, v2, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto/16 :goto_1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 975
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v2

    .line 976
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 977
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 981
    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    int-to-float v4, v4

    add-float/2addr v4, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 983
    if-gez v4, :cond_3

    .line 984
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1003
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v2

    .line 1004
    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 1005
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 1006
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEnableEngine:Z

    if-eqz v0, :cond_1

    .line 1007
    invoke-static {p0}, Lcom/meizu/common/util/CommonUtils;->shakeForFlymeFeature(Landroid/view/View;)V

    .line 1009
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 987
    goto :goto_0

    .line 989
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    if-le v4, v2, :cond_4

    .line 990
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 991
    goto :goto_0

    .line 996
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 997
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v2

    sub-int v2, v4, v2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    goto :goto_0

    .line 999
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    sub-int v0, v4, v0

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 4

    .prologue
    .line 597
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 599
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v0

    .line 602
    if-lez v0, :cond_2

    .line 603
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 604
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    sub-float v0, v2, v0

    .line 612
    :goto_0
    if-eqz v1, :cond_0

    .line 613
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 615
    :cond_0
    return-void

    .line 606
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    goto :goto_0

    .line 609
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 583
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 589
    :cond_0
    return-void
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    return v0
.end method

.method public declared-synchronized getItemsCount()I
    .locals 1

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 488
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1405
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1406
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 1407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1408
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityEventSender:Lcom/meizu/common/widget/EnhanceSeekBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1410
    :cond_0
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    .line 712
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 713
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    .line 714
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 716
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mRightIconRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 718
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLeftIconRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 724
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 725
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 726
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 730
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v3, v0

    .line 731
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v12

    .line 732
    if-lez v12, :cond_3

    int-to-float v0, v12

    div-float v0, v3, v0

    move v10, v0

    .line 733
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 734
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 735
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 736
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 738
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 739
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 744
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 745
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 747
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-gt v1, v12, :cond_6

    .line 748
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 749
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    sub-int v2, v12, v1

    if-ne v0, v2, :cond_0

    .line 750
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    sub-int v2, v12, v1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    .line 751
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float v2, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 747
    :cond_0
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDecreaseIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mLeftIconRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 721
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIncreaseIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mRightIconRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 712
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 728
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_1

    .line 732
    :cond_3
    const/4 v0, 0x0

    move v10, v0

    goto/16 :goto_2

    .line 742
    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v7, v0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 754
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 755
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 756
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float v2, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 760
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 761
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 763
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 764
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 769
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-gt v0, v12, :cond_b

    .line 770
    int-to-float v1, v0

    mul-float/2addr v1, v10

    .line 771
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isRTL()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 772
    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_8

    .line 773
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 784
    :goto_8
    const/4 v2, 0x0

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotRadius:F

    iget-object v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 766
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    .line 775
    :cond_8
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 778
    :cond_9
    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_a

    .line 779
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 781
    :cond_a
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mSpotColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 786
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 787
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 789
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 790
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 794
    :goto_9
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 796
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    if-eqz v0, :cond_c

    .line 797
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    sub-int/2addr v1, v2

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    sub-int/2addr v2, v3

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    add-int/2addr v3, v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraRadius:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 798
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 800
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :cond_d
    monitor-exit p0

    return-void

    .line 792
    :cond_e
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1359
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1361
    packed-switch v0, :pswitch_data_0

    .line 1372
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1373
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1375
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1363
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1366
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1369
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1361
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1212
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1213
    const-class v0, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1214
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 1218
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1219
    const-class v0, Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1221
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1222
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    .line 1223
    if-lez v0, :cond_0

    .line 1224
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1226
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1227
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1230
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setIconRect()V

    .line 828
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 829
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 806
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraHeight:I

    .line 807
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    move v2, v1

    .line 808
    :goto_1
    const/16 v0, 0x14

    .line 809
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 810
    const/16 v0, 0x46

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v3

    add-int/lit8 v3, v3, 0x40

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 814
    if-eqz v2, :cond_2

    .line 815
    iget-object v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    const/16 v1, 0x32

    :cond_1
    add-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 818
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 820
    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v1

    const/4 v2, 0x0

    .line 821
    invoke-static {v0, p2, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->resolveSizeAndState(III)I

    move-result v0

    .line 820
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    monitor-exit p0

    return-void

    .line 806
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    .line 807
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    move v2, v0

    goto :goto_1

    .line 806
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 1205
    check-cast p1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    .line 1206
    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1207
    iget v0, p1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    .line 1208
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1195
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1196
    new-instance v1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;

    invoke-direct {v1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1198
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    iput v0, v1, Lcom/meizu/common/widget/EnhanceSeekBar$SavedState;->progress:I

    .line 1200
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    .line 594
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 1063
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStartTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    .line 1066
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 1072
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    .line 1073
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onStopTrackingTouch(Lcom/meizu/common/widget/EnhanceSeekBar;)V

    .line 1076
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 833
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 929
    :cond_0
    :goto_0
    return v0

    .line 837
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 842
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    .line 929
    goto :goto_0

    .line 844
    :pswitch_0
    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    .line 845
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    .line 846
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 847
    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialThumbX:F

    .line 849
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->iconWidth:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 850
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getPaddingLeft()I

    move-result v4

    div-int v3, v4, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 851
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    .line 852
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->stopAuraShowAnim()V

    .line 853
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->stopAuraHideAnim()V

    .line 855
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/meizu/common/widget/EnhanceSeekBar;->isPointInside(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 856
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 857
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 858
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 860
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStartTrackingTouch()V

    .line 863
    :cond_5
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 864
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto :goto_1

    .line 868
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 869
    goto/16 :goto_0

    .line 872
    :cond_6
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_7

    .line 873
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    .line 874
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->flingThumb(Landroid/view/MotionEvent;)V

    .line 875
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->attemptClaimDrag()V

    .line 877
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mInitialTouchX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 878
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    .line 879
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    .line 880
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 881
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 882
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->prepareStartAuraShow()V

    goto/16 :goto_1

    .line 885
    :cond_8
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    goto/16 :goto_1

    .line 890
    :pswitch_2
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    if-eqz v2, :cond_9

    .line 891
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->prepareStartAuraHide()V

    .line 893
    :cond_9
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->hasMoved:Z

    if-nez v2, :cond_a

    .line 894
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTapUpTouchEvent(Landroid/view/MotionEvent;)V

    .line 895
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 897
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 898
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 903
    :cond_a
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_b

    .line 904
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAuraDrawble:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate(Landroid/graphics/Rect;)V

    .line 907
    :cond_b
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_c

    .line 908
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 909
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 910
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    goto/16 :goto_1

    .line 913
    :cond_c
    iget v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTouchDownProgress:I

    invoke-virtual {p0, v2, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto/16 :goto_1

    .line 918
    :pswitch_3
    iget-boolean v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_d

    .line 919
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onStopTrackingTouch()V

    .line 920
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setPressed(Z)V

    .line 922
    :cond_d
    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->isDrag:Z

    if-eqz v0, :cond_e

    .line 923
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->prepareStartAuraHide()V

    .line 925
    :cond_e
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    goto/16 :goto_1

    .line 842
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1234
    const/16 v2, 0x40

    if-ne p1, v2, :cond_1

    .line 1235
    iput-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    .line 1240
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1265
    :goto_1
    return v0

    .line 1236
    :cond_1
    const/16 v2, 0x80

    if-ne p1, v2, :cond_0

    .line 1237
    iput-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    goto :goto_0

    .line 1243
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 1244
    goto :goto_1

    .line 1247
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v2

    .line 1248
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1249
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1265
    goto :goto_1

    .line 1251
    :sswitch_0
    if-gtz v2, :cond_4

    move v0, v1

    .line 1252
    goto :goto_1

    .line 1254
    :cond_4
    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto :goto_1

    .line 1258
    :sswitch_1
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getMax()I

    move-result v4

    if-lt v2, v4, :cond_5

    move v0, v1

    .line 1259
    goto :goto_1

    .line 1261
    :cond_5
    add-int/2addr v2, v3

    invoke-virtual {p0, v2, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V

    goto :goto_1

    .line 1249
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDistance(I)V
    .locals 0

    .prologue
    .line 515
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mDistance:I

    .line 516
    return-void
.end method

.method public setEnableEngine(Z)V
    .locals 0

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mEnableEngine:Z

    .line 534
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->refreshRes()V

    .line 252
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 253
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 285
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    .line 294
    :goto_0
    return-void

    .line 289
    :cond_1
    array-length v0, p1

    .line 290
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    .line 291
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public setItemsCount(I)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mItems:[Ljava/lang/CharSequence;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0

    .line 308
    :cond_1
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setMax(I)V

    goto :goto_0
.end method

.method public setOnEnhanceSeekBarChangeListener(Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    .line 274
    return-void
.end method

.method public setPaintColor(I)V
    .locals 0

    .prologue
    .line 1353
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mPaintColor:I

    .line 1354
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->setProgress(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)V
    .locals 2

    .prologue
    .line 416
    monitor-enter p0

    if-gez p1, :cond_6

    .line 417
    const/4 v0, 0x0

    .line 420
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-le v0, v1, :cond_0

    .line 421
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    .line 424
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsInItemPositon:Z

    if-nez v1, :cond_3

    .line 426
    :cond_1
    iput v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    .line 427
    if-nez p2, :cond_5

    .line 428
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mProgress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 429
    :goto_1
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->onProgressRefresh(F)V

    .line 435
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 436
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mAccessibilityFocused:Z

    if-eqz v0, :cond_3

    .line 437
    invoke-direct {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->scheduleAccessibilityEventSender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_3
    monitor-exit p0

    return-void

    .line 428
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 431
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressDragging(Lcom/meizu/common/widget/EnhanceSeekBar;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move v0, p1

    goto :goto_0
.end method

.method public setStrokeColor(I)V
    .locals 0

    .prologue
    .line 461
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeColor:I

    .line 462
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0

    .prologue
    .line 497
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mStrokeWidth:I

    .line 498
    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .prologue
    .line 479
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mTextSize:I

    .line 480
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 339
    .line 340
    if-nez p1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mz_scrubber_control_selector:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_6

    .line 345
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 346
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 347
    const/4 v0, 0x1

    .line 352
    :goto_0
    if-eqz p1, :cond_4

    .line 353
    if-eqz v0, :cond_1

    .line 363
    :cond_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 365
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumbOffset:I

    .line 367
    if-eqz v0, :cond_3

    .line 368
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 369
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 370
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->requestLayout()V

    .line 373
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbWidth:I

    .line 374
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mHalfThumbHeight:I

    .line 377
    :cond_4
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 378
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->invalidate()V

    .line 379
    if-eqz v0, :cond_5

    .line 380
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/EnhanceSeekBar;->updateThumbPos(II)V

    .line 381
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getDrawableState()[I

    move-result-object v0

    .line 383
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 386
    :cond_5
    return-void

    .line 349
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
