.class public Lcom/meizu/common/widget/FastScrollLetter;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;,
        Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CLASS_NAME_FLYME_FEATURE:Ljava/lang/String; = "flyme.config.FlymeFeature"

.field private static final FIELD_SUPPORT_MOTOR:Ljava/lang/String; = "SHELL_HAPTICFEEDBACK_MOTOR"

.field private static final SCROLLER_SCROLL:I = 0x4e98

.field public static final SECTION_COMPARE_TYPE1:I = 0x1

.field public static final SECTION_COMPARE_TYPE2:I = 0x2

.field private static final STATE_DRAGGING:I = 0x1

.field private static final STATE_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static final mDefaultLetters:[Ljava/lang/String;

.field private static mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mBackgroundColorSet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCircleColorType:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

.field private mCurrentLetter:Ljava/lang/String;

.field private mCurrentShowPos:I

.field private mDefaultCircleColor:[I

.field private mDefaultColor:[I

.field private mDefaultSectionType:I

.field private mEventDownY:I

.field private mEventMoveY:I

.field private mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

.field private mHeaderCount:I

.field private mHeaderHeight:I

.field private mHideLetteSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHideNum:I

.field private mHideStr:Ljava/lang/String;

.field private mIsAlwayShowLetter:Z

.field private mIsEnable:Z

.field private mIsSplitMode:Ljava/lang/reflect/Method;

.field private mLetterActiveTextColor:I

.field private mLetterMarginBottom:I

.field private mLetterMarginRight:I

.field private mLetterMarginTop:I

.field private mLetterTextColor:I

.field private mLetterTextSize:I

.field private mLetterWidth:I

.field private mLetters:[Ljava/lang/String;

.field private mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayOneTextSize:I

.field private mOverlayText:Landroid/widget/TextView;

.field private mOverlayTextHeight:I

.field private mOverlayTextLetters:[Ljava/lang/String;

.field private mOverlayTextMarginRight:I

.field private mOverlayTextTop:I

.field private mOverlayTextWidth:I

.field private mOverlayThreeTextSize:I

.field private mOverlayTwoTextSize:I

.field private mPaddingLeft:I

.field mPaint:Landroid/graphics/Paint;

.field private mPointBitmap:Landroid/graphics/Bitmap;

.field private mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mShowLetters:[Ljava/lang/String;

.field private mSingleLetterHeight:I

.field private mState:I

.field private mTopLetter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 206
    const-class v0, Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    .line 216
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "G"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 3

    .prologue
    .line 315
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_letter_overlay:I

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    .line 327
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$layout;->mc_letter_overlay:I

    const/4 v2, 0x0

    .line 328
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 329
    iput p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 330
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_FastScrollLetter:I

    invoke-direct {p0, p1, v6, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 220
    iput-boolean v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    .line 221
    iput-boolean v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    .line 226
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 232
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    .line 241
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    .line 244
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    .line 245
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    .line 246
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 247
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 248
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    .line 249
    const/16 v0, 0xdc

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 250
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    .line 253
    const/16 v0, 0x14

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 256
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 257
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 258
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 259
    const/16 v0, 0x18

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 262
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 265
    iput-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 272
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    .line 276
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    .line 278
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 280
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    .line 282
    const/16 v0, 0x35

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    .line 285
    iput v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 290
    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_one:I

    aput v1, v0, v3

    sget v1, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_two:I

    aput v1, v0, v4

    sget v1, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_three:I

    aput v1, v0, v2

    const/4 v1, 0x3

    sget v2, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_four:I

    aput v2, v0, v1

    sget v1, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_five:I

    aput v1, v0, v5

    const/4 v1, 0x5

    sget v2, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_six:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_seven:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultCircleColor:[I

    .line 300
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultCircleColor:[I

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    .line 301
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->COLORFUL:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCircleColorType:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    .line 360
    sget-object v0, Lcom/meizu/common/R$styleable;->FastScrollLetter:[I

    sget v1, Lcom/meizu/common/R$attr;->MeizuCommon_FastScrollLetter:I

    invoke-virtual {p1, v6, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 363
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcFastScrollLetter:I

    .line 364
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :cond_0
    if-eqz p2, :cond_1

    .line 371
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    .line 372
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 374
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 376
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_text_size:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    .line 378
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_two_text_size:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    .line 380
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_three_text_size:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 383
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_layout_width:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 385
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_overlay_layout_margin_right:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 387
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    .line 389
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_text_size:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$color;->mc_fastscroll_letter_text_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 393
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_margin_top:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 395
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_margin_right:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 397
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_margin_bottom:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 399
    sget v0, Lcom/meizu/common/R$dimen;->mc_fastscroll_letter_layout_wdith:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getPxSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 402
    iput-object p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    .line 404
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterTextColor:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 405
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterActiveTextColor:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 406
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 407
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterWidth:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 408
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterMarginTop:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 409
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterMarginBottom:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 410
    sget v0, Lcom/meizu/common/R$styleable;->FastScrollLetter_mcLetterMarginRight:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 411
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 415
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 416
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 417
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 418
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/meizu/common/R$drawable;->mc_ic_letter_search_point:I

    .line 422
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 423
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 424
    sget v0, Lcom/meizu/common/R$drawable;->mc_ic_letter_search_bg:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setBackgroundResource(I)V

    .line 426
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 427
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    .line 428
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultLetters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    .line 429
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    .line 432
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 433
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;I)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/FastScrollLetter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/widget/TextView;)V

    .line 348
    iput p4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    .line 349
    return-void
.end method

.method private OnTouchingLetterChange(Landroid/view/MotionEvent;I)V
    .locals 2

    .prologue
    .line 1318
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 1319
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1322
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setSelection(IF)V

    .line 1325
    return-void
.end method

.method private alphaAnim(ZLandroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1240
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1241
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 1248
    :cond_2
    if-eqz p1, :cond_3

    move v2, v1

    .line 1249
    :goto_1
    if-eqz p1, :cond_4

    .line 1251
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 1252
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1253
    new-instance v0, Lcom/meizu/common/widget/FastScrollLetter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/meizu/common/widget/FastScrollLetter$1;-><init>(Lcom/meizu/common/widget/FastScrollLetter;Landroid/view/View;Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1270
    const-wide/16 v2, 0xb4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1271
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1272
    invoke-virtual {p2, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1273
    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->startNow()V

    goto :goto_0

    :cond_3
    move v2, v0

    .line 1248
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1249
    goto :goto_2
.end method

.method private cancelFling()V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 1305
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1308
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1309
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1310
    return-void
.end method

.method private getChoosePos(F)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 907
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v2, v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    .line 909
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    int-to-float v1, v1

    div-float v1, p1, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    double-to-int v3, v2

    .line 912
    if-ltz v3, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v1, v1

    if-lt v3, v1, :cond_2

    .line 913
    :cond_0
    const/4 v0, -0x1

    .line 955
    :cond_1
    :goto_0
    return v0

    .line 917
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    if-nez v1, :cond_6

    move v1, v0

    .line 918
    :goto_1
    if-ge v1, v3, :cond_4

    .line 919
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 920
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/2addr v0, v2

    .line 918
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 922
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 927
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v1, v3

    int-to-float v1, v1

    sub-float v1, p1, v1

    .line 929
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    if-nez v2, :cond_5

    .line 930
    const/4 v2, 0x1

    iput v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    .line 932
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 933
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_6
    move v2, v0

    move v1, v0

    .line 936
    :goto_3
    if-ge v2, v3, :cond_8

    .line 937
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 938
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    .line 936
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    .line 940
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_4

    .line 946
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v0, v3

    int-to-float v0, v0

    sub-float v2, p1, v0

    .line 947
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 948
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 949
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 951
    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method private getCurrentPos(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1168
    .line 1169
    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    move v0, v1

    .line 1171
    :goto_0
    if-ne v0, v1, :cond_2

    .line 1172
    add-int/lit8 v2, p1, -0x1

    .line 1174
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge p1, v3, :cond_2

    if-ltz p1, :cond_2

    .line 1175
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->getSection(I)I

    move-result v3

    .line 1177
    if-ne v3, v1, :cond_0

    move p1, v2

    .line 1178
    goto :goto_0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 1182
    if-eq v0, v1, :cond_1

    .line 1183
    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    :cond_1
    move p1, v2

    .line 1188
    goto :goto_0

    .line 1189
    :cond_2
    return v0
.end method

.method private getNextPos(I)I
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1199
    move v1, v2

    move v0, p1

    .line 1201
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    .line 1202
    add-int/lit8 v0, v0, 0x1

    .line 1204
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    if-ltz v0, :cond_1

    .line 1205
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getSection(I)I

    move-result v3

    .line 1207
    if-eq v3, v2, :cond_0

    .line 1210
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v1, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    goto :goto_0

    .line 1216
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1217
    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 1219
    :cond_2
    if-ne v1, v2, :cond_3

    .line 1220
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    .line 1222
    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private getPxSize(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSection(I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 973
    .line 975
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    invoke-interface {v0, p1}, Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;->getSection(I)I

    move-result v3

    .line 1013
    :cond_0
    :goto_0
    return v3

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    aget-object v2, v0, p1

    .line 980
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v4

    .line 983
    if-eqz v4, :cond_0

    move v0, v1

    .line 987
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 988
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v0

    .line 995
    :goto_2
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    if-ltz v2, :cond_3

    move v3, v2

    .line 996
    goto :goto_0

    .line 987
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 997
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultSectionType:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 998
    if-eq v2, v3, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, v2}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v4

    .line 1002
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 1003
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    .line 1006
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v4, v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, v4}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v3, v2

    .line 1008
    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private hasFlymeFeature()Z
    .locals 3

    .prologue
    .line 1144
    const/4 v0, 0x0

    .line 1146
    :try_start_0
    sget-object v1, Lcom/meizu/common/widget/FastScrollLetter;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 1147
    const-string v1, "flyme.config.FlymeFeature"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1148
    const-string v2, "SHELL_HAPTICFEEDBACK_MOTOR"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/meizu/common/widget/FastScrollLetter;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    .line 1150
    :cond_0
    sget-object v1, Lcom/meizu/common/widget/FastScrollLetter;->mShellHapticFeedBackMotor:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 1158
    :goto_0
    return v0

    .line 1151
    :catch_0
    move-exception v1

    .line 1152
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1153
    :catch_1
    move-exception v1

    .line 1154
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 1155
    :catch_2
    move-exception v1

    .line 1156
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private isContain(FF)Z
    .locals 1

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_0

    .line 896
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 895
    :goto_0
    return v0

    .line 896
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContainWithTop(FF)Z
    .locals 1

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 902
    :goto_0
    return v0

    .line 903
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlymeSplitmode(Landroid/app/Activity;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 700
    .line 701
    if-nez p1, :cond_0

    .line 721
    :goto_0
    return v1

    .line 705
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsSplitMode:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 706
    const-string v0, "meizu.splitmode.FlymeSplitModeManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 707
    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

    .line 708
    const-string v2, "isSplitMode"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsSplitMode:Ljava/lang/reflect/Method;

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mFlymeSplitModeManagerInstance:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 711
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsSplitMode:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    :goto_1
    move v1, v0

    .line 721
    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const-string v2, "isFlymeSplitemode ClassNotFoundException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 720
    goto :goto_1

    .line 714
    :catch_1
    move-exception v0

    .line 715
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const-string v2, "isFlymeSplitemode NoSuchMethodException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 720
    goto :goto_1

    .line 716
    :catch_2
    move-exception v0

    .line 717
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const-string v2, "isFlymeSplitemode InvocationTargetException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 720
    goto :goto_1

    .line 718
    :catch_3
    move-exception v0

    .line 719
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const-string v2, "isFlymeSplitemode IllegalAccessException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1
.end method

.method private isSplitMode(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 731
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 732
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    .line 734
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->isFlymeSplitmode(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method private isVibratorNeed()V
    .locals 1

    .prologue
    .line 1138
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->hasFlymeFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    const/16 v0, 0x4e98

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->performHapticFeedback(I)Z

    .line 1141
    :cond_0
    return-void
.end method

.method private onTouchingLetterTop()V
    .locals 3

    .prologue
    .line 963
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0
.end method

.method private setLetterState(ZLandroid/view/View;)V
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->alphaAnim(ZLandroid/view/View;)V

    .line 1234
    iget-boolean v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    if-nez v0, :cond_0

    .line 1235
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/FastScrollLetter;->alphaAnim(ZLandroid/view/View;)V

    .line 1237
    :cond_0
    return-void
.end method

.method private setOverLayText(I)V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1072
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 1073
    return-void
.end method

.method private setOverLayText(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1081
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayThreeTextSize:I

    .line 1083
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    if-ne p1, v3, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    .line 1088
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1099
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1100
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->isVibratorNeed()V

    .line 1104
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentLetter:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1106
    if-eqz v0, :cond_0

    .line 1107
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1108
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1109
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1090
    :pswitch_0
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayOneTextSize:I

    goto :goto_1

    .line 1095
    :pswitch_1
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTwoTextSize:I

    goto :goto_1

    .line 1113
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 1115
    if-eqz v3, :cond_0

    move v0, v1

    .line 1116
    :goto_2
    array-length v1, v3

    if-ge v0, v1, :cond_4

    .line 1117
    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1122
    :goto_3
    if-eq v0, v2, :cond_0

    .line 1123
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1124
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    array-length v5, v5

    rem-int/2addr v0, v5

    aget v0, v4, v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1125
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    .line 1088
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setOverlayTextLayout(F)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 1283
    float-to-int v0, p1

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventDownY:I

    .line 1285
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1287
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextTop:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    .line 1288
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    sub-int/2addr v2, v3

    .line 1289
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    add-int/2addr v3, v1

    .line 1291
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1293
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v4

    if-nez v4, :cond_0

    .line 1294
    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1299
    :goto_0
    return-void

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method private setSelection(IF)V
    .locals 4

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 1022
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 1023
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    .line 1024
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1027
    :cond_0
    instance-of v1, v0, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_4

    .line 1028
    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1034
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 1038
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->getCurrentPos(I)I

    move-result v0

    .line 1041
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1042
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->getNextPos(I)I

    move-result v0

    .line 1046
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1049
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 1063
    :cond_3
    :goto_0
    return-void

    .line 1030
    :cond_4
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter;->TAG:Ljava/lang/String;

    const-string v1, "mSectionIndexer is null, adapter is not implements"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1054
    :cond_5
    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-eq v1, v2, :cond_3

    .line 1055
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(I)V

    .line 1056
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    instance-of v1, v1, Landroid/widget/ListView;

    if-eqz v1, :cond_6

    .line 1057
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    neg-int v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 1060
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderCount:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 1427
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    return v0
.end method

.method public getHideNum()I
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    return v0
.end method

.method public getHideStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLetterMarginBottom()I
    .locals 1

    .prologue
    .line 1382
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    return v0
.end method

.method public getLetterMarginRight()I
    .locals 1

    .prologue
    .line 1391
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    return v0
.end method

.method public getLetterMarginTop()I
    .locals 1

    .prologue
    .line 1373
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    return v0
.end method

.method public getLetterTextColor()I
    .locals 1

    .prologue
    .line 1355
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    return v0
.end method

.method public getLetterTextSize()I
    .locals 1

    .prologue
    .line 1364
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    return v0
.end method

.method public getLetterWidth()I
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    return v0
.end method

.method public getLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTextBackgroundColor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    return-object v0
.end method

.method public getOverlayTextLetters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTextMarginRight()I
    .locals 1

    .prologue
    .line 1346
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    return v0
.end method

.method public getOverlayTextWidth()I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 1436
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 857
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 859
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 860
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 861
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    mul-int/lit8 v0, v0, -0x1

    .line 864
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 866
    if-eqz v2, :cond_1

    array-length v1, v2

    if-nez v1, :cond_2

    .line 889
    :cond_1
    return-void

    .line 870
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getHeight()I

    move-result v1

    .line 871
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getWidth()I

    move-result v3

    .line 873
    array-length v4, v2

    div-int/2addr v1, v4

    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    .line 874
    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 876
    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    int-to-float v5, v0

    add-float/2addr v4, v5

    .line 878
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 881
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    aget-object v6, v2, v1

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 882
    div-int/lit8 v4, v3, 0x2

    iget-object v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v4, v0

    int-to-float v4, v4

    .line 883
    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSingleLetterHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    .line 884
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 874
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 886
    :cond_3
    aget-object v6, v2, v1

    iget-object v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 335
    const-class v0, Lcom/meizu/common/widget/FastScrollLetter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 438
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 439
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 645
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 646
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    add-int/2addr v1, v2

    sub-int v3, v0, v1

    .line 648
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    sub-int v4, v0, v1

    .line 651
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    if-ne v0, v5, :cond_3

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 653
    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 654
    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 655
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v1

    move v1, v0

    .line 662
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->isSplitMode(Landroid/app/Activity;)Z

    move-result v5

    .line 663
    const/high16 v0, 0x3f800000    # 1.0f

    .line 664
    if-eqz v5, :cond_4

    .line 665
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 666
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 667
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v0

    .line 669
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 670
    iget v0, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 672
    div-float v0, v7, v0

    .line 673
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 679
    :goto_1
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_5

    .line 680
    if-eqz v5, :cond_1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    :cond_1
    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    sub-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/meizu/common/widget/FastScrollLetter;->layout(IIII)V

    .line 685
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 688
    return-void

    .line 657
    :cond_3
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 658
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    sub-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 675
    :cond_4
    iget-object v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 682
    :cond_5
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    if-eqz v5, :cond_6

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    :cond_6
    iget v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    iget v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    add-int/2addr v4, v6

    if-eqz v5, :cond_7

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    iget v5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    sub-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0, v3, v2, v4, v1}, Lcom/meizu/common/widget/FastScrollLetter;->layout(IIII)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 749
    iget-boolean v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    if-nez v1, :cond_1

    .line 848
    :cond_0
    :goto_0
    return v3

    .line 753
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_0

    .line 757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 759
    cmpg-float v5, v1, v0

    if-gez v5, :cond_8

    .line 763
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    .line 770
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->getChoosePos(F)I

    move-result v0

    .line 772
    packed-switch v4, :pswitch_data_0

    .line 848
    :cond_2
    :goto_2
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v0, v2, :cond_7

    move v0, v2

    :goto_3
    move v3, v0

    goto :goto_0

    .line 774
    :pswitch_0
    if-ltz v0, :cond_0

    .line 777
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 779
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/meizu/common/widget/FastScrollLetter;->isContain(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 780
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 783
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 784
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->cancelFling()V

    .line 786
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 787
    invoke-direct {p0, v2, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 789
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->OnTouchingLetterChange(Landroid/view/MotionEvent;I)V

    .line 790
    iput v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    move v3, v2

    .line 791
    goto :goto_0

    .line 793
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 794
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/meizu/common/widget/FastScrollLetter;->isContainWithTop(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 795
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 796
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 797
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 798
    iput v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    .line 799
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 800
    invoke-direct {p0, v2, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 802
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->onTouchingLetterTop()V

    move v3, v2

    .line 804
    goto/16 :goto_0

    .line 808
    :cond_4
    :pswitch_1
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v1, v2, :cond_2

    .line 810
    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 811
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    .line 813
    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    if-ne v1, v6, :cond_5

    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 816
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FastScrollLetter;->OnTouchingLetterChange(Landroid/view/MotionEvent;I)V

    goto/16 :goto_2

    .line 818
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/FastScrollLetter;->isContainWithTop(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 821
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 822
    invoke-direct {p0}, Lcom/meizu/common/widget/FastScrollLetter;->onTouchingLetterTop()V

    goto/16 :goto_2

    .line 834
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 836
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    if-ne v0, v2, :cond_2

    .line 837
    iput v6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCurrentShowPos:I

    .line 838
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 839
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 840
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mEventMoveY:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLayout(F)V

    .line 841
    invoke-direct {p0, v3, p0}, Lcom/meizu/common/widget/FastScrollLetter;->setLetterState(ZLandroid/view/View;)V

    .line 842
    iput v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mState:I

    move v3, v2

    .line 843
    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 848
    goto/16 :goto_3

    :cond_8
    move v0, v1

    goto/16 :goto_1

    .line 772
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public varargs setCircleColorResIds([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCircleColorType:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    sget-object v1, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->CUSTOM:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    if-ne v0, v1, :cond_0

    .line 1482
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    .line 1484
    :cond_0
    return-void
.end method

.method public setCircleColorType(Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;)V
    .locals 3
    .param p1    # Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1492
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mCircleColorType:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    .line 1494
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->CUSTOM:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    if-ne p1, v0, :cond_1

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->COLORFUL:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    if-ne p1, v0, :cond_2

    .line 1497
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultCircleColor:[I

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    goto :goto_0

    .line 1498
    :cond_2
    sget-object v0, Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;->GRAY_SINGLE:Lcom/meizu/common/widget/FastScrollLetter$CircleColorType;

    if-ne p1, v0, :cond_0

    .line 1499
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/meizu/common/R$color;->mc_fast_scroll_letter_color_gray:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mDefaultColor:[I

    goto :goto_0
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1

    .prologue
    .line 521
    iput-boolean p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    .line 522
    iget-boolean v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsAlwayShowLetter:Z

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    .line 525
    :cond_0
    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 544
    iput-boolean p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mIsEnable:Z

    .line 545
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setVisibility(I)V

    .line 546
    return-void

    .line 545
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHeaderHeight(I)V
    .locals 0

    .prologue
    .line 578
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHeaderHeight:I

    .line 579
    return-void
.end method

.method public setHideLetter(Landroid/util/SparseArray;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 495
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideLetteSparseArray:Landroid/util/SparseArray;

    .line 496
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setHideLetterNum(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 448
    .line 450
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 451
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    .line 452
    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    .line 454
    :goto_0
    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 455
    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v1

    .line 456
    add-int/lit8 v1, v3, 0x1

    iget-object v4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 454
    iget v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideNum:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_0

    .line 458
    :cond_0
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v1, v3

    aput-object v1, v2, v0

    .line 459
    iput-object v2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setHideLetterStr(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 468
    if-eqz p2, :cond_0

    .line 469
    iput-object p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPointBitmap:Landroid/graphics/Bitmap;

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mHideStr:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setLayoutPaddingLeft(I)V
    .locals 0

    .prologue
    .line 619
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaddingLeft:I

    .line 620
    return-void
.end method

.method public setLetterActiveColor(II)V
    .locals 2

    .prologue
    .line 532
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 533
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 534
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 535
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 536
    return-void
.end method

.method public setLetterBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 630
    return-void
.end method

.method public setLetterParam(IIIIII)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 593
    if-eq p1, v2, :cond_0

    .line 594
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    .line 595
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 597
    :cond_0
    if-eq p2, v2, :cond_1

    .line 598
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    .line 599
    iget v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    iput v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterActiveTextColor:I

    .line 600
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 601
    invoke-virtual {p0}, Lcom/meizu/common/widget/FastScrollLetter;->invalidate()V

    .line 604
    :cond_1
    iput p3, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginTop:I

    .line 605
    iput p4, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginBottom:I

    .line 607
    if-eq p5, v2, :cond_2

    .line 608
    iput p5, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterMarginRight:I

    .line 610
    :cond_2
    if-eq p6, v2, :cond_3

    .line 611
    iput p6, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetterWidth:I

    .line 613
    :cond_3
    return-void
.end method

.method public setLetters([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mShowLetters:[Ljava/lang/String;

    .line 555
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mLetters:[Ljava/lang/String;

    .line 556
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FastScrollLetter;->setOverlayTextLetters([Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public setOverlayBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void
.end method

.method public setOverlayParam(II)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 506
    if-eq p1, v0, :cond_0

    .line 507
    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextHeight:I

    iput p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextWidth:I

    .line 510
    :cond_0
    if-eq p2, v0, :cond_1

    .line 511
    iput p2, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextMarginRight:I

    .line 513
    :cond_1
    return-void
.end method

.method public setOverlayTextBackgroundColor(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mBackgroundColorSet:Ljava/util/Map;

    .line 1464
    return-void
.end method

.method public setOverlayTextLetters([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 480
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 485
    :cond_1
    return-void
.end method

.method public setSectionCompare(Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mSectionCompare:Lcom/meizu/common/widget/FastScrollLetter$SectionCompare;

    .line 745
    return-void
.end method

.method public setTopLetter(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 565
    iput-object p1, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mOverlayTextLetters:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FastScrollLetter;->mTopLetter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FastScrollLetter;->setOverLayText(Ljava/lang/String;)V

    .line 570
    :cond_1
    return-void
.end method
