.class public Lcom/meizu/common/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static final FLYME_SLIDE_HORIZONTAL:I = 0x792e

.field public static final TAG:Ljava/lang/String; = "MzSwitch"

.field private static final THUMB_ANIMATION_DURATION:I = 0xdc

.field private static final THUMB_BOUNCE_ANIMATION_DURATION:I = 0x118

.field private static final THUMB_STATUS_CHANGE:F = 1.0f

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I

.field private static mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

.field private static sSwitchStyleableId:[I


# instance fields
.field private isChanged:Z

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mAttributeSet:Landroid/util/AttributeSet;

.field private mBounceAnimator:Landroid/animation/ValueAnimator;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mDarkThumbOffColor:I

.field private mDarkThumbOnColor:I

.field private mIgnoreSystemNightMode:Z

.field private mIsStyleWhiteMode:Z

.field private mMinFlingVelocity:I

.field private mParams:Lcom/meizu/common/widget/MorphingParams;

.field private mPositionAnimator:Landroid/animation/ValueAnimator;

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

.field private mThumbOffColor:I

.field private mThumbOnColor:I

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mUiNightMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

.field public switchOff:Ljava/lang/CharSequence;

.field public switchOn:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 214
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_Switch:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    .line 115
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 182
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    .line 184
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    .line 230
    iput-object p2, p0, Lcom/meizu/common/widget/Switch;->mAttributeSet:Landroid/util/AttributeSet;

    .line 231
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 233
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 234
    sget-object v1, Lcom/meizu/common/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 237
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcIgnoreSysNightMode:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    .line 239
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Landroid/text/TextPaint;->density:F

    .line 241
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isSystemNightMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    if-nez v2, :cond_4

    .line 242
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcTrackSysNightMode:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 243
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 244
    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_track_sys_nightmode:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 246
    :cond_0
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColorSysNightMode:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_switch_thumb_off_sys_nightmode_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    .line 255
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 256
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 258
    :cond_1
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcDarkTrack:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 261
    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_track_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 263
    :cond_2
    sget v0, Lcom/meizu/common/R$styleable;->Switch_mcSwitchMinWidth:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 265
    sget v0, Lcom/meizu/common/R$styleable;->Switch_mcSwitchPadding:I

    const/16 v2, 0x30

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 267
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    .line 269
    sget v0, Lcom/meizu/common/R$styleable;->Switch_mcUseWhiteStyle:I

    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 270
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcThumbOnColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mz_theme_color_blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    .line 272
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcDarkThumbOnColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mz_theme_color_blue:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    .line 273
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcDarkThumbOffColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_switch_dark_thumb_off_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    .line 275
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 277
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    .line 278
    sget-object v1, Lcom/meizu/common/widget/Switch;->sSwitchStyleableId:[I

    const v2, 0x101043f

    invoke-virtual {p1, p2, v1, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 279
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 280
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    .line 281
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 284
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    .line 285
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    .line 287
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mz_switch_thumb_padding_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 288
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_padding_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 287
    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/Switch;->createDrawable(II)Lcom/meizu/common/widget/StrokeGradientDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    .line 289
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-static {v1}, Lcom/meizu/common/widget/MorphingParams;->create(Lcom/meizu/common/widget/StrokeGradientDrawable;)Lcom/meizu/common/widget/MorphingParams;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    .line 290
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    .line 291
    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->darkColor(II)Lcom/meizu/common/widget/MorphingParams;

    move-result-object v1

    .line 292
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_from_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mz_switch_thumb_to_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->height(II)Lcom/meizu/common/widget/MorphingParams;

    move-result-object v1

    .line 293
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_from_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mz_switch_thumb_to_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->width(II)Lcom/meizu/common/widget/MorphingParams;

    move-result-object v1

    .line 294
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mz_switch_thumb_from_corner_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mz_switch_thumb_to_corner_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->cornerRadius(II)Lcom/meizu/common/widget/MorphingParams;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    .line 295
    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->alpha(FF)Lcom/meizu/common/widget/MorphingParams;

    .line 296
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 298
    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->setStyleWhite()V

    .line 303
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->refreshDrawableState()V

    .line 304
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 305
    return-void

    .line 248
    :cond_4
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcTrack:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 249
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 250
    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_track:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 252
    :cond_5
    sget v2, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_switch_thumb_off_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    goto/16 :goto_0

    .line 277
    nop

    :array_0
    .array-data 4
        0x1010124
        0x1010125
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/Switch;F)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/Switch;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/Switch;)Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 10

    .prologue
    const v7, 0x3eb33333    # 0.35f

    const v9, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 629
    if-eqz p1, :cond_5

    const v0, 0x3f851eb8    # 1.04f

    move v3, v0

    .line 630
    :goto_0
    if-eqz p1, :cond_6

    move v0, v1

    .line 631
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 632
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 633
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 636
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 637
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 638
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 640
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    aput v6, v4, v5

    const/4 v5, 0x1

    aput v3, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    .line 641
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    if-nez v4, :cond_2

    .line 642
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_7

    .line 643
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3f0f5c29    # 0.56f

    invoke-direct {v4, v7, v5, v8, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    .line 648
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 649
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xdc

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 650
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/meizu/common/widget/Switch$1;

    invoke-direct {v5, p0}, Lcom/meizu/common/widget/Switch$1;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 657
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/meizu/common/widget/Switch$2;

    invoke-direct {v5, p0}, Lcom/meizu/common/widget/Switch$2;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 666
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 667
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 668
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 670
    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v3, 0x1

    aput v0, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    .line 671
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_4

    .line 672
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_8

    .line 673
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v9, v2, v8, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 678
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 679
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 680
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/Switch$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/Switch$3;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 687
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/Switch$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/Switch$4;-><init>(Lcom/meizu/common/widget/Switch;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 695
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 696
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 697
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 700
    return-void

    .line 629
    :cond_5
    const v0, -0x42dc28f6    # -0.04f

    move v3, v0

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 630
    goto/16 :goto_1

    .line 645
    :cond_7
    new-instance v4, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    const v5, 0x3f0f5c29    # 0.56f

    invoke-direct {v4, v7, v5, v8, v1}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v4, p0, Lcom/meizu/common/widget/Switch;->mPositionInterpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_2

    .line 675
    :cond_8
    new-instance v0, Lcom/meizu/common/interpolator/PathInterpolatorCompat;

    invoke-direct {v0, v9, v2, v8, v1}, Lcom/meizu/common/interpolator/PathInterpolatorCompat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_3
.end method

.method private cancelPositionAnimator()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 730
    :cond_0
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 594
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 595
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 596
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 597
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 598
    return-void
.end method

.method private createDrawable(II)Lcom/meizu/common/widget/StrokeGradientDrawable;
    .locals 3

    .prologue
    .line 1118
    new-instance v0, Lcom/meizu/common/widget/StrokeGradientDrawable;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable;)V

    .line 1119
    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1120
    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setPaddingLeft(I)V

    .line 1121
    invoke-virtual {v0, p2}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setPaddingRight(I)V

    .line 1122
    return-object v0
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 733
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 2

    .prologue
    .line 1067
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbValue()F

    move-result v0

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1099
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 1101
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1104
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1105
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v3}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingRight()I

    move-result v3

    invoke-static {v2, v0, v3, v0}, Lcom/meizu/common/widget/Insets;->of(IIII)Lcom/meizu/common/widget/Insets;

    move-result-object v0

    .line 1110
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int v1, v2, v1

    iget v2, v0, Lcom/meizu/common/widget/Insets;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Lcom/meizu/common/widget/Insets;->right:I

    sub-int v0, v1, v0

    .line 1113
    :cond_0
    return v0

    .line 1107
    :cond_1
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    goto :goto_0
.end method

.method private getThumbValue()F
    .locals 1

    .prologue
    .line 1076
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method private hasFlymeFeature()Z
    .locals 3

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 716
    :try_start_0
    sget-object v1, Lcom/meizu/common/widget/Switch;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 717
    const-string v1, "flyme.config.FlymeFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 718
    const-string v2, "SHELL_HAPTICFEEDBACK_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/widget/Switch;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    .line 720
    :cond_0
    sget-object v1, Lcom/meizu/common/widget/Switch;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 723
    :goto_0
    return v0

    .line 721
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private hitThumb(FF)Z
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemNightMode()Z
    .locals 2

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 310
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    iput v0, p0, Lcom/meizu/common/widget/Switch;->mUiNightMode:I

    .line 311
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbOff()Z
    .locals 2

    .prologue
    .line 1095
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbOn()Z
    .locals 2

    .prologue
    .line 1086
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 490
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTransformationMethod:Lcom/meizu/common/widget/TransformationMethod2;

    .line 491
    invoke-interface {v0, p1, p0}, Lcom/meizu/common/widget/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 494
    :goto_0
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v7}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 495
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/text/TextPaint;->density:F

    .line 496
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 497
    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 496
    return-object v0

    :cond_0
    move-object v1, p1

    .line 491
    goto :goto_0
.end method

.method private refreshAndGetTrackRes()V
    .locals 5

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mAttributeSet:Landroid/util/AttributeSet;

    sget-object v2, Lcom/meizu/common/R$styleable;->Switch:[I

    sget v3, Lcom/meizu/common/R$attr;->MeizuCommon_Switch:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 320
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->isSystemNightMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    if-nez v1, :cond_3

    .line 321
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcTrackSysNightMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 322
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_track_sys_nightmode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    :cond_0
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColorSysNightMode:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_switch_thumb_off_sys_nightmode_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    .line 333
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {v1, v2, v3}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    .line 339
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 341
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 342
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->refreshDrawableState()V

    .line 343
    return-void

    .line 327
    :cond_3
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcTrack:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 329
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$drawable;->mc_switch_anim_track:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 331
    :cond_4
    sget v1, Lcom/meizu/common/R$styleable;->Switch_mcThumbOffColor:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_switch_thumb_off_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    goto :goto_0
.end method

.method private setThumbPosition(F)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 743
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    .line 744
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 746
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->fromWidth:I

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->toWidth:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/meizu/common/widget/Switch;->getWidthValue(IIF)I

    move-result v1

    .line 748
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setWidth(I)V

    .line 749
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->fromHeight:I

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->toHeight:I

    invoke-virtual {p0, v1, v2, p1}, Lcom/meizu/common/widget/Switch;->getHeightValue(IIF)I

    move-result v1

    .line 750
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setHeight(I)V

    .line 751
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->fromCornerRadius:F

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->toCornerRadius:F

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/common/widget/Switch;->getCornerRadiusValue(FFF)F

    move-result v1

    .line 752
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setCornerRadius(F)V

    .line 754
    iget-boolean v1, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    if-eqz v1, :cond_2

    .line 755
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->fromDarkColor:I

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->toDarkColor:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/common/widget/Switch;->getThumbColorValue(IIF)I

    move-result v0

    .line 759
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->fromAlpha:F

    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v3, v3, Lcom/meizu/common/widget/MorphingParams;->toAlpha:F

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/meizu/common/widget/Switch;->getThumbAlphaValue(FFZ)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setAlpha(I)V

    .line 760
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setColor(I)V

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 763
    return-void

    .line 744
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    .line 757
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->fromColor:I

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->toColor:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/meizu/common/widget/Switch;->getThumbColorValue(IIF)I

    move-result v0

    goto :goto_1
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 606
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    .line 612
    :goto_0
    if-eqz v2, :cond_5

    .line 613
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 614
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 615
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 616
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    .line 624
    :cond_0
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(ZZ)V

    .line 625
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 626
    return-void

    :cond_1
    move v2, v1

    .line 610
    goto :goto_0

    :cond_2
    move v0, v1

    .line 616
    goto :goto_1

    :cond_3
    cmpl-float v2, v2, v5

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 618
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getTargetCheckedState()Z

    move-result v0

    goto :goto_1

    .line 621
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    .line 885
    iget-object v8, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 886
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 887
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 888
    iget v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 889
    iget v6, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 892
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v0

    add-int v2, v1, v0

    .line 895
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v0, :cond_2

    .line 896
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 902
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_8

    .line 903
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 906
    iget v4, v8, Landroid/graphics/Rect;->left:I

    add-int v7, v2, v4

    .line 913
    sget-object v2, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    if-eq v0, v2, :cond_7

    .line 914
    iget v2, v0, Lcom/meizu/common/widget/Insets;->left:I

    iget v4, v8, Landroid/graphics/Rect;->left:I

    if-le v2, v4, :cond_0

    .line 915
    iget v2, v0, Lcom/meizu/common/widget/Insets;->left:I

    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 917
    :cond_0
    iget v2, v0, Lcom/meizu/common/widget/Insets;->top:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_6

    .line 918
    iget v2, v0, Lcom/meizu/common/widget/Insets;->top:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 920
    :goto_1
    iget v4, v0, Lcom/meizu/common/widget/Insets;->right:I

    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-le v4, v9, :cond_5

    .line 921
    iget v4, v0, Lcom/meizu/common/widget/Insets;->right:I

    iget v9, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v9

    sub-int v4, v5, v4

    .line 923
    :goto_2
    iget v9, v0, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    if-le v9, v10, :cond_4

    .line 924
    iget v0, v0, Lcom/meizu/common/widget/Insets;->bottom:I

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v9

    sub-int v0, v6, v0

    .line 927
    :goto_3
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v0, v7

    .line 936
    :goto_4
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v1, :cond_1

    .line 937
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 938
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 939
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbOffset()I

    move-result v0

    sub-int v0, v5, v0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v1

    sub-int v2, v0, v1

    .line 940
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getWidth()I

    move-result v0

    sub-int v4, v2, v0

    .line 941
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v1, v3, v0

    .line 942
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    move v3, v4

    .line 949
    :goto_5
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v4}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 950
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 959
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 960
    return-void

    .line 898
    :cond_2
    sget-object v0, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    goto/16 :goto_0

    .line 944
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v1

    add-int v4, v0, v1

    .line 945
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getWidth()I

    move-result v0

    add-int v2, v4, v0

    .line 946
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v1, v3, v0

    .line 947
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    move v3, v4

    goto :goto_5

    :cond_4
    move v0, v6

    goto/16 :goto_3

    :cond_5
    move v4, v5

    goto/16 :goto_2

    :cond_6
    move v2, v3

    goto/16 :goto_1

    :cond_7
    move v0, v6

    move v4, v5

    move v2, v3

    goto/16 :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_4
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1137
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1139
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 1141
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setState([I)Z

    .line 1145
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1146
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1150
    return-void
.end method

.method public evaluate(FII)I
    .locals 9

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 964
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 965
    :goto_0
    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    .line 968
    :goto_1
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 969
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 970
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 971
    and-int/lit16 v4, p2, 0xff

    .line 974
    shr-int/lit8 v5, p3, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 975
    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 976
    shr-int/lit8 v7, p3, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 977
    and-int/lit16 v8, p3, 0xff

    .line 979
    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    add-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x18

    sub-int v5, v6, v2

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    sub-int v2, v7, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    sub-int v2, v8, v4

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v4

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 1033
    :cond_0
    :goto_0
    return v0

    .line 1029
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1030
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 1045
    :cond_0
    :goto_0
    return v0

    .line 1041
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr v0, v1

    .line 1042
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1043
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCornerRadiusValue(FFF)F
    .locals 1

    .prologue
    .line 1309
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 1310
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    .line 1312
    :goto_0
    return v0

    :cond_0
    sub-float v0, p1, p2

    mul-float/2addr v0, p3

    sub-float v0, p1, v0

    goto :goto_0
.end method

.method public getHeightValue(IIF)I
    .locals 1

    .prologue
    .line 1337
    if-ge p1, p2, :cond_0

    .line 1338
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    .line 1340
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method public getStrokeColorValue(IIF)I
    .locals 1

    .prologue
    .line 1325
    invoke-virtual {p0, p3, p1, p2}, Lcom/meizu/common/widget/Switch;->evaluate(FII)I

    move-result v0

    return v0
.end method

.method public getStrokeWidthValue(FFF)F
    .locals 1

    .prologue
    .line 1317
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 1318
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    .line 1320
    :goto_0
    return v0

    :cond_0
    sub-float v0, p1, p2

    mul-float/2addr v0, p3

    sub-float v0, p1, v0

    goto :goto_0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getThumbAlphaValue(FFZ)I
    .locals 1

    .prologue
    const/high16 v0, 0x437f0000    # 255.0f

    .line 1333
    if-eqz p3, :cond_0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getThumbColorValue(IIF)I
    .locals 1

    .prologue
    .line 1329
    invoke-virtual {p0, p3, p1, p2}, Lcom/meizu/common/widget/Switch;->evaluate(FII)I

    move-result v0

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getWidthValue(IIF)I
    .locals 1

    .prologue
    .line 1345
    if-ge p1, p2, :cond_0

    .line 1346
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    .line 1348
    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method public isLaidOut()Z
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1054
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 1055
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1057
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1055
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1057
    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 1161
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1163
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->jumpToCurrentState()V

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1171
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 1173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1175
    :cond_2
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 1365
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1366
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 1367
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mUiNightMode:I

    if-eq v0, v1, :cond_0

    .line 1368
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mUiNightMode:I

    .line 1369
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->refreshAndGetTrackRes()V

    .line 1370
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1372
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 1128
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 1129
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    sget-object v1, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 1132
    :cond_0
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1354
    invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V

    .line 1355
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1358
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mPositionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 1361
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 987
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 988
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 989
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 990
    if-eqz v1, :cond_2

    .line 991
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 997
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v2}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 998
    if-eqz v1, :cond_0

    .line 1000
    iget-boolean v3, p0, Lcom/meizu/common/widget/Switch;->mSplitTrack:Z

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 1001
    sget-object v3, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 1002
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1003
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v3, Lcom/meizu/common/widget/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1004
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v3, v3, Lcom/meizu/common/widget/Insets;->right:I

    sub-int v3, v4, v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 1007
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1008
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1009
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1015
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1017
    if-eqz v2, :cond_1

    .line 1018
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1021
    :cond_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1022
    return-void

    .line 993
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 1011
    :cond_3
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1179
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1180
    const-class v0, Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1181
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 1185
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1186
    const-class v0, Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1189
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->switchOn:Ljava/lang/CharSequence;

    .line 1190
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1191
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1192
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1193
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1201
    :cond_0
    :goto_1
    return-void

    .line 1189
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->switchOff:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1195
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 828
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 833
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v1, :cond_2

    .line 834
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 835
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 841
    :goto_0
    sget-object v3, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 842
    iget v1, v3, Lcom/meizu/common/widget/Insets;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 843
    iget v3, v3, Lcom/meizu/common/widget/Insets;->right:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 848
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 849
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v1

    .line 850
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int/2addr v3, v2

    sub-int v1, v3, v1

    sub-int v0, v1, v0

    move v1, v0

    move v0, v2

    .line 858
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 861
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v3

    .line 862
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int/2addr v2, v3

    .line 877
    :goto_3
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 878
    iput v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 879
    iput v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 880
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 881
    return-void

    .line 838
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 852
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    .line 853
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    sub-int v3, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    move v1, v2

    goto :goto_2

    .line 866
    :sswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    .line 868
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int/2addr v2, v3

    .line 869
    goto :goto_3

    .line 872
    :sswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 873
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    sub-int v3, v2, v3

    goto :goto_3

    :cond_2
    move v1, v0

    goto :goto_1

    .line 858
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 431
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 435
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 438
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    .line 439
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->fromWidth:I

    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v4, v4, Lcom/meizu/common/widget/MorphingParams;->toWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 440
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 446
    :goto_0
    iput v2, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    .line 449
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 451
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 459
    :goto_1
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 460
    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 462
    sget-object v3, Lcom/meizu/common/widget/Insets;->NONE:Lcom/meizu/common/widget/Insets;

    .line 464
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v6, :cond_3

    .line 465
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 466
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 467
    iget-object v4, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v4}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingLeft()I

    move-result v4

    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v6}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getPaddingRight()I

    move-result v6

    invoke-static {v4, v1, v6, v1}, Lcom/meizu/common/widget/Insets;->of(IIII)Lcom/meizu/common/widget/Insets;

    move-result-object v1

    move v4, v5

    .line 470
    :goto_2
    iget v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    iget v6, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    iget v4, v1, Lcom/meizu/common/widget/Insets;->left:I

    add-int/2addr v3, v4

    iget v1, v1, Lcom/meizu/common/widget/Insets;->right:I

    add-int/2addr v1, v3

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 472
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 473
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    .line 474
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    .line 476
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 478
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredHeight()I

    move-result v1

    .line 479
    if-ge v1, v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredWidthAndState()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/widget/Switch;->setMeasuredDimension(II)V

    .line 482
    :cond_0
    return-void

    :cond_1
    move v0, v1

    move v2, v1

    .line 443
    goto :goto_0

    .line 453
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    move v2, v1

    .line 454
    goto :goto_1

    :cond_3
    move-object v1, v3

    move v3, v4

    move v4, v5

    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 487
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 516
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 517
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 518
    packed-switch v0, :pswitch_data_0

    .line 590
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 520
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 522
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/Switch;->hitThumb(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    iput v2, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 524
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 525
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    goto :goto_0

    .line 531
    :pswitch_2
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 537
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 539
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    sub-float v3, v1, v3

    .line 540
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 541
    :cond_1
    iput v6, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 542
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 543
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 544
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    move v0, v2

    .line 545
    goto :goto_1

    .line 551
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 552
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v0

    .line 553
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v4, v3, v4

    .line 555
    if-eqz v0, :cond_4

    .line 556
    int-to-float v0, v0

    div-float v0, v4, v0

    .line 562
    :goto_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 563
    neg-float v0, v0

    .line 565
    :cond_2
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    add-float/2addr v0, v4

    invoke-static {v0, v5, v1}, Lcom/meizu/common/widget/MathUtils;->constrain(FFF)F

    move-result v0

    .line 566
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 567
    iput v3, p0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 568
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    :cond_3
    move v0, v2

    .line 570
    goto/16 :goto_1

    .line 560
    :cond_4
    cmpl-float v0, v4, v5

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    .line 578
    :pswitch_5
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    if-ne v0, v6, :cond_6

    .line 579
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    .line 581
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 582
    goto/16 :goto_1

    .line 584
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 585
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 531
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public performHapticFeedback()V
    .locals 1

    .prologue
    .line 705
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->hasFlymeFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 706
    const/16 v0, 0x792e

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 773
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 791
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v2

    if-ne v2, p1, :cond_3

    .line 792
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 793
    :cond_0
    if-eqz p1, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 811
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 793
    goto :goto_0

    .line 798
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v2

    .line 804
    if-eqz p2, :cond_4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLaidOut()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 805
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_1

    .line 808
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->cancelPositionAnimator()V

    .line 809
    if-eqz v2, :cond_5

    :goto_2
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public setCheckedWithHapticFeedback(Z)V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(ZZ)V

    .line 787
    return-void
.end method

.method public setCheckedWithHapticFeedback(ZZ)V
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->performHapticFeedback()V

    .line 779
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/Switch;->setChecked(ZZ)V

    .line 780
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    .prologue
    .line 511
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 512
    return-void
.end method

.method public setDarkThumbOffColor(I)V
    .locals 3

    .prologue
    .line 1289
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    .line 1290
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/MorphingParams;->darkColor(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1292
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1295
    return-void
.end method

.method public setDarkThumbOnColor(I)V
    .locals 3

    .prologue
    .line 1276
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    .line 1277
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOffColor:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mDarkThumbOnColor:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/MorphingParams;->darkColor(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1279
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1282
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 820
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 821
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, v1, Lcom/meizu/common/widget/MorphingParams;->fromAlpha:F

    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v2, v2, Lcom/meizu/common/widget/MorphingParams;->toAlpha:F

    invoke-virtual {p0, v1, v2, p1}, Lcom/meizu/common/widget/Switch;->getThumbAlphaValue(FFZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/StrokeGradientDrawable;->setAlpha(I)V

    .line 824
    :cond_0
    return-void
.end method

.method public setIgnoreSystemNightMode(Z)V
    .locals 0

    .prologue
    .line 1302
    iput-boolean p1, p0, Lcom/meizu/common/widget/Switch;->mIgnoreSystemNightMode:Z

    .line 1303
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->refreshAndGetTrackRes()V

    .line 1304
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1305
    return-void
.end method

.method public setStyleDefault()V
    .locals 1

    .prologue
    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    .line 1233
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->refreshAndGetTrackRes()V

    .line 1234
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1241
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1243
    return-void
.end method

.method public setStyleWhite()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1207
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    if-eqz v0, :cond_0

    .line 1224
    :goto_0
    return-void

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mWhiteTrackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 1212
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1213
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->setStyleDefault()V

    goto :goto_0

    .line 1215
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1216
    iput-boolean v1, p0, Lcom/meizu/common/widget/Switch;->isChanged:Z

    .line 1217
    iput-boolean v1, p0, Lcom/meizu/common/widget/Switch;->mIsStyleWhiteMode:Z

    .line 1218
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->refreshDrawableState()V

    .line 1219
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1220
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1222
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    goto :goto_0
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .prologue
    .line 375
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 376
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 377
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .prologue
    .line 353
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 354
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 355
    return-void
.end method

.method public setThumbOffColor(I)V
    .locals 3

    .prologue
    .line 1263
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    .line 1264
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1266
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1268
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1269
    return-void
.end method

.method public setThumbOnColor(I)V
    .locals 3

    .prologue
    .line 1250
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    .line 1251
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mParams:Lcom/meizu/common/widget/MorphingParams;

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbOffColor:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbOnColor:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/MorphingParams;->color(II)Lcom/meizu/common/widget/MorphingParams;

    .line 1253
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(F)V

    .line 1255
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 1256
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 400
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 401
    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 403
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->drawableStateChanged()V

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->requestLayout()V

    .line 406
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/Switch;->setCheckedWithHapticFeedback(Z)V

    .line 768
    return-void

    .line 767
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1154
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Lcom/meizu/common/widget/StrokeGradientDrawable;

    .line 1155
    invoke-virtual {v0}, Lcom/meizu/common/widget/StrokeGradientDrawable;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1154
    :goto_0
    return v0

    .line 1155
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
