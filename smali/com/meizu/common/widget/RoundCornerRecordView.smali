.class public Lcom/meizu/common/widget/RoundCornerRecordView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/RoundCornerRecordView$IconType;,
        Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    }
.end annotation


# static fields
.field static final ID_COLUMN_INDEX:I = 0x0

.field static final LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final PHONE_COLUMN_INDEX:I = 0x2

.field public static final TAG:Ljava/lang/String; = "RoundCornerRecordView"

.field private static final sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field private static final sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field private static sStartActivity:Z

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private mBadgeText:Ljava/lang/String;

.field private mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeTextPaint:Landroid/graphics/Paint;

.field private mBadgeTextShadowColor:I

.field private mBadgeTextShadowRadius:I

.field private mBadgeTextSize:I

.field private mBgColor:I

.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

.field private mCallIcon:Landroid/graphics/drawable/Drawable;

.field private mContactId:J

.field private mContactPhone:Ljava/lang/String;

.field private mCoverDrawable:Landroid/graphics/drawable/Drawable;

.field private mDefaultColor:I

.field private mDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field private mDstContactBmp:Landroid/graphics/Bitmap;

.field private mExtras:Landroid/os/Bundle;

.field private mHasShadow:Z

.field private mIconText:Ljava/lang/CharSequence;

.field private mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

.field private mIsClickToCall:Z

.field private mIsUseStyle:Z

.field private mListCallIcon:Landroid/graphics/drawable/Drawable;

.field private mLongClick:Z

.field private mOffsetBottom:I

.field private mOffsetRight:I

.field private mOldContactId:J

.field private mOldExtras:Landroid/os/Bundle;

.field private mOldPhone:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPictureHeight:I

.field private mPictureWidth:I

.field private mRectView:Landroid/graphics/Rect;

.field private mRecycle:Z

.field private mRecycleOnDetached:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSmallIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mUseCallIcon:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    sput-boolean v3, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sSyncKeyLock:Ljava/lang/Object;

    .line 171
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_EDIT_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_VIEW_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMS_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_SMALL_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 180
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLOUT:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_CALLIN:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_MISSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_REFUSED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RINGONCE:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD_FAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_VOICEMAIL:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 70
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 72
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 73
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 74
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 75
    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 76
    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 77
    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 78
    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 79
    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 83
    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    .line 84
    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    .line 85
    iput-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mLongClick:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    .line 115
    iput-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    .line 122
    iput-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    .line 205
    sget-object v0, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 208
    sget v1, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge_mcBorderType:I

    sget-object v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_NULL:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    iget v2, v2, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->borderTypeInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 212
    sget v2, Lcom/meizu/common/R$styleable;->RoundCornerContactBadge_mcIconType:I

    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_CALL_LOG_RECORD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    iget v3, v3, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->iconTypeInt:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 216
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$color;->mc_round_colorfulbg_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultColor:I

    .line 217
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 220
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sBorderTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setBorderType(Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;)V

    .line 221
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sIconTypeArray:[Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setIconType(Lcom/meizu/common/widget/RoundCornerRecordView$IconType;)V

    .line 223
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->init()V

    .line 224
    return-void
.end method

.method private drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 764
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 771
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 774
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 775
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    .line 776
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 777
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 778
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 779
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 784
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 785
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 786
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    .line 787
    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    .line 788
    div-float/2addr v3, v5

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v2, v3, v2

    .line 789
    add-float/2addr v1, v2

    sub-float/2addr v1, v5

    .line 790
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 791
    return-void
.end method

.method private drawContactDrawable()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 636
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 637
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-direct {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 648
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 649
    iget-boolean v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    if-eqz v3, :cond_7

    .line 650
    iget v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 651
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    move v5, v1

    move v6, v2

    .line 654
    :goto_1
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 656
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 660
    if-eq v4, v2, :cond_6

    .line 662
    if-le v2, v4, :cond_4

    .line 663
    sub-int v1, v2, v4

    div-int/lit8 v2, v1, 0x2

    move v1, v7

    move v3, v4

    .line 672
    :goto_2
    int-to-float v6, v6

    int-to-float v8, v3

    div-float/2addr v6, v8

    .line 673
    int-to-float v5, v5

    int-to-float v8, v4

    div-float v8, v5, v8

    .line 677
    cmpl-float v5, v6, v9

    if-nez v5, :cond_2

    cmpl-float v5, v8, v9

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    if-eqz v2, :cond_5

    .line 678
    :cond_2
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 679
    invoke-virtual {v5, v6, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 680
    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 684
    :goto_3
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/RoundCornerRecordView;->getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 685
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 686
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 688
    if-eq v1, v0, :cond_3

    .line 689
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 693
    :cond_3
    iget-boolean v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 696
    iput-boolean v7, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    goto :goto_0

    .line 666
    :cond_4
    sub-int v1, v4, v2

    div-int/lit8 v1, v1, 0x2

    move v4, v2

    move v3, v2

    move v2, v7

    .line 667
    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_3

    :cond_6
    move v1, v7

    move v3, v4

    move v4, v2

    move v2, v7

    goto :goto_2

    :cond_7
    move v5, v1

    move v6, v2

    goto :goto_1
.end method

.method private drawSmallIcon(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 730
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 731
    iget v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetBottom:I

    sub-int v8, v0, v1

    .line 733
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 734
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 737
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 738
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 741
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_NOTDELIVERED:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->IC_SMS_HAS_UNREAD:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    if-ne v0, v1, :cond_1

    .line 744
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 745
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 748
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 749
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 750
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 751
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 753
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 754
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 755
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    int-to-float v2, v2

    .line 754
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 756
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v9, v9, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 757
    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 758
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 761
    :cond_1
    return-void
.end method

.method private getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 345
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 350
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 347
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_small_picture:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 345
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getRoundCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 702
    .line 703
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 702
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 704
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 705
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v3, v5, v5, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 706
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 708
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_cover:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    .line 711
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 713
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 718
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 723
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 724
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 725
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCoverDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 726
    return-object v1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 227
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setDuplicateParentStateEnabled(Z)V

    .line 230
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    .line 232
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    return-void
.end method

.method private isDefaultDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    .prologue
    .line 356
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 357
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 865
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 866
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawableState()[I

    move-result-object v0

    .line 868
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 869
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 871
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    .line 873
    :cond_0
    return-void
.end method

.method public getBorderType()Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    return-object v0
.end method

.method public getIconType()Lcom/meizu/common/widget/RoundCornerRecordView$IconType;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 891
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 892
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    if-eqz v0, :cond_0

    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 897
    :goto_0
    return-void

    .line 895
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 796
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v1, v0, :cond_1

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 798
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 799
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->drawContactDrawable()V

    .line 801
    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 807
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 808
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 809
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 810
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    sget-object v3, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->BORDER_LIST_CONTACT:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-ne v2, v3, :cond_3

    .line 811
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOffsetRight:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 817
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 818
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 822
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 823
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 824
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 859
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mUseCallIcon:Z

    .line 861
    return-void

    .line 814
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 826
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 827
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/RoundCornerRecordView;->drawBadgeText(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 836
    :goto_2
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    if-eqz v2, :cond_5

    .line 837
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 838
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 842
    :cond_5
    iget-boolean v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 843
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 844
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 843
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 851
    :cond_6
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 852
    iget-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 853
    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 830
    :cond_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 831
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 832
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 932
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 933
    const-class v0, Lcom/meizu/common/widget/RoundCornerRecordView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 934
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 384
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRectView:Landroid/graphics/Rect;

    .line 385
    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 386
    invoke-super {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    .line 384
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 387
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 371
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    if-eqz v0, :cond_0

    .line 372
    iget v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 373
    iget v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 374
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 375
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 378
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 379
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    if-nez v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mContactPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldPhone:Ljava/lang/String;

    .line 904
    iget-wide v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mContactId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldContactId:J

    .line 905
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mOldExtras:Landroid/os/Bundle;

    .line 906
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 910
    :goto_0
    return v0

    .line 908
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 910
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 877
    if-eqz p1, :cond_0

    .line 878
    sget-object v1, Lcom/meizu/common/widget/RoundCornerRecordView;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 879
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/meizu/common/widget/RoundCornerRecordView;->sStartActivity:Z

    .line 880
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    .line 883
    return-void

    .line 880
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public recycleOnDetached(Z)V
    .locals 0

    .prologue
    .line 886
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycleOnDetached:Z

    .line 887
    return-void
.end method

.method public setBackgroundColorId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$array;->mc_colorful_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    rem-int/2addr v1, v2

    .line 240
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 241
    iget v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBgColor:I

    .line 242
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 243
    return-void
.end method

.method public setBorderType(Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 472
    if-nez p1, :cond_0

    .line 473
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    if-ne v0, p1, :cond_1

    .line 572
    :goto_0
    return-void

    .line 480
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 481
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    .line 483
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    invoke-direct {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 485
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 489
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_box:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 491
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_text_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowRadius:I

    .line 493
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$color;->mc_badge_text_shadow_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextShadowColor:I

    .line 496
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$BorderType:[I

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBorderType:Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$BorderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 565
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 566
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsUseStyle:Z

    .line 568
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_small_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto :goto_0

    .line 498
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_list_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 500
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_list_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 502
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 504
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 506
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 510
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 515
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_sms_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 517
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_sms_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 519
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 521
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_list_picture_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 523
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 525
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 527
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 532
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_small_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 534
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_small_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 536
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_small_picture_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 538
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_small_picture_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 540
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_call:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 542
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_contact_list_picture_call_pressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 544
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_small_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 550
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_contact_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewWidth:I

    .line 552
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_border_contact_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mViewHeight:I

    .line 554
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_picture_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureWidth:I

    .line 556
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_contact_picture_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mPictureHeight:I

    .line 558
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mListCallIcon:Landroid/graphics/drawable/Drawable;

    .line 559
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mCallIcon:Landroid/graphics/drawable/Drawable;

    .line 560
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_list_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeTextSize:I

    goto/16 :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setClickToCall(Z)V
    .locals 1

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    if-eq v0, p1, :cond_0

    .line 583
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIsClickToCall:Z

    .line 584
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    .line 586
    :cond_0
    return-void
.end method

.method public setContactBadgeText(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    .line 632
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    .line 633
    return-void

    .line 619
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    goto :goto_0

    .line 623
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 626
    const/16 v2, 0x61

    if-gt v2, v1, :cond_2

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    .line 627
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 629
    :cond_2
    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mBadgeText:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHasShadow(Z)V
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    if-eq v0, p1, :cond_0

    .line 607
    iput-boolean p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mHasShadow:Z

    .line 608
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    .line 610
    :cond_0
    return-void
.end method

.method public setIconText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconText:Ljava/lang/CharSequence;

    .line 395
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    .line 397
    :cond_0
    return-void
.end method

.method public setIconType(Lcom/meizu/common/widget/RoundCornerRecordView$IconType;)V
    .locals 2

    .prologue
    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    if-ne v0, p1, :cond_1

    .line 460
    :goto_0
    return-void

    .line 413
    :cond_1
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    .line 414
    sget-object v0, Lcom/meizu/common/widget/RoundCornerRecordView$1;->$SwitchMap$com$meizu$common$widget$RoundCornerRecordView$IconType:[I

    iget-object v1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mIconType:Lcom/meizu/common/widget/RoundCornerRecordView$IconType;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RoundCornerRecordView$IconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    .line 459
    :goto_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->invalidate()V

    goto :goto_0

    .line 416
    :pswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_outgoing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 421
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_incoming:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 426
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_missed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 431
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_reject:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 436
    :pswitch_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_ringing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 441
    :pswitch_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_record:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 446
    :pswitch_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_record_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 451
    :pswitch_7
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_sym_call_list_voicemail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSmallIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 305
    iput-boolean p2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 323
    if-nez p1, :cond_3

    .line 324
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 330
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 333
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 335
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz v0, :cond_1

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 339
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 341
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    .line 342
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 247
    if-nez p1, :cond_0

    .line 248
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 251
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 256
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 261
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 264
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz v0, :cond_2

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 265
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 273
    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/RoundCornerRecordView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 277
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 280
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    .line 282
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 285
    :goto_1
    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    if-eq v3, v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 287
    iput-object v2, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mDstContactBmp:Landroid/graphics/Bitmap;

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    if-eqz v0, :cond_2

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 291
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 293
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mRecycle:Z

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public setPressed(Z)V
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/RoundCornerRecordView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method public setRecordClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 928
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mSubtitle:Ljava/lang/CharSequence;

    .line 600
    return-void
.end method

.method public setTilte(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/meizu/common/widget/RoundCornerRecordView;->mTitle:Ljava/lang/CharSequence;

    .line 593
    return-void
.end method
