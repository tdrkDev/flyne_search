.class public Lcom/meizu/common/widget/FoldableTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;,
        Lcom/meizu/common/widget/FoldableTextView$ValueHolder;,
        Lcom/meizu/common/widget/FoldableTextView$FoldingListener;,
        Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ELLIPSIS_THREE_DOTS:Ljava/lang/String; = "..."

.field private static final TAG:Ljava/lang/String; = "FoldableTextView"

.field private static TOUCH_STATE_LONGCLICK:I

.field private static TOUCH_STATE_NORMAL:I


# instance fields
.field private layout:Landroid/text/Layout;

.field private mAlignViewEdge:Z

.field private mAnimatorFraction:Ljava/lang/Float;

.field private final mCheckLongPress:Ljava/lang/Runnable;

.field private mClickToFold:Z

.field private mDuration:I

.field private mEllipseText:Ljava/lang/CharSequence;

.field private mFoldLineMax:I

.field private mFoldedText:Ljava/lang/CharSequence;

.field private mIsAnimating:Z

.field private mIsForbidden:Z

.field private mIsfolded:Z

.field private mLinkColor:I

.field private mLinkHit:Z

.field private mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mMoreText:Ljava/lang/CharSequence;

.field private mNonClicks:Z

.field private mNonSpanClickable:Z

.field private mTouchState:I

.field private mTouchX:F

.field private mTouchY:F

.field private mainText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    sput v0, Lcom/meizu/common/widget/FoldableTextView;->TOUCH_STATE_LONGCLICK:I

    .line 165
    const/4 v0, 0x0

    sput v0, Lcom/meizu/common/widget/FoldableTextView;->TOUCH_STATE_NORMAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 205
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_FoldableTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/FoldableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 206
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 171
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 172
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    .line 173
    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 177
    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    .line 178
    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 180
    const/16 v0, 0xfa

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    .line 181
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    .line 182
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    .line 183
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    .line 185
    iput-boolean v6, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    .line 187
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    .line 188
    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchState:I

    .line 192
    new-instance v0, Lcom/meizu/common/widget/FoldableTextView$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/FoldableTextView$1;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 210
    sget-object v0, Lcom/meizu/common/R$styleable;->FoldableTextView:[I

    sget v2, Lcom/meizu/common/R$style;->Widget_MeizuCommon_FoldableTextView:I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    move v2, v1

    .line 213
    :goto_0
    if-ge v2, v4, :cond_9

    .line 214
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 215
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzTextEllipse:I

    if-ne v0, v5, :cond_1

    .line 216
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    .line 213
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 217
    :cond_1
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzTextUnfold:I

    if-ne v0, v5, :cond_2

    .line 218
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    goto :goto_1

    .line 219
    :cond_2
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzMaxFoldLine:I

    if-ne v0, v5, :cond_3

    .line 220
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    goto :goto_1

    .line 221
    :cond_3
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzUnfoldAlignViewEdge:I

    if-ne v0, v5, :cond_4

    .line 222
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    goto :goto_1

    .line 223
    :cond_4
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzClickToFold:I

    if-ne v0, v5, :cond_5

    .line 224
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    goto :goto_1

    .line 225
    :cond_5
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzNonSpanClickable:I

    if-ne v0, v5, :cond_6

    .line 226
    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    goto :goto_1

    .line 227
    :cond_6
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzLinkColor:I

    if-ne v0, v5, :cond_8

    .line 228
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 229
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    if-nez v0, :cond_0

    .line 230
    invoke-static {p1}, Lcom/meizu/common/util/ResourceUtils;->getMzThemeColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    goto :goto_1

    :cond_7
    invoke-static {p1}, Lcom/meizu/common/util/ResourceUtils;->getMzThemeColor(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    .line 231
    :cond_8
    sget v5, Lcom/meizu/common/R$styleable;->FoldableTextView_mzIsFold:I

    if-ne v0, v5, :cond_0

    .line 232
    invoke-virtual {v3, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    goto :goto_1

    .line 235
    :cond_9
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    sget v0, Lcom/meizu/common/R$string;->more_item_label:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    .line 239
    :cond_a
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 240
    const-string v0, "..."

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    .line 243
    :cond_b
    invoke-static {}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 244
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Z)V

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/common/widget/FoldableTextView;II)V
    .locals 0

    .prologue
    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1602(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkHit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/FoldableTextView;)Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/FoldableTextView;Z)Z
    .locals 0

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/FoldableTextView;)I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    return v0
.end method

.method private foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 440
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-object p1

    .line 441
    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 442
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 443
    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 444
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-eqz v2, :cond_0

    .line 450
    iget v4, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    .line 452
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v0, v2}, Landroid/text/DynamicLayout;->getLineVisibleEnd(I)I

    move-result v2

    .line 453
    iget-object v3, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 454
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 458
    :goto_1
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 460
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 461
    iget-object v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 463
    new-instance v5, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    const-string v6, "sans-serif-medium"

    invoke-direct {v5, p0, v6, p1}, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;-><init>(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 466
    if-lez v2, :cond_5

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v5

    if-le v5, v4, :cond_5

    .line 469
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 470
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 471
    if-lez v2, :cond_3

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v3

    if-gt v3, v4, :cond_2

    :cond_3
    :goto_2
    move-object p1, v1

    .line 482
    goto :goto_0

    .line 456
    :cond_4
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 472
    :cond_5
    iget-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    if-eqz v2, :cond_3

    move v2, v3

    .line 473
    :goto_3
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 474
    const-string v3, " "

    invoke-virtual {v1, v2, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 475
    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v3

    if-le v3, v4, :cond_6

    .line 476
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 479
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private initHeight(Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 640
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    .line 641
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    .line 644
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-gt v0, v1, :cond_2

    .line 645
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_0

    .line 649
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 650
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLineSpacingExtra()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_0
.end method

.method private setOnClickListener(Z)V
    .locals 1

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p0, p0}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setSelectionByPosition(FF)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 781
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 782
    if-nez v0, :cond_1

    .line 813
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getTotalPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 786
    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 787
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getTotalPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 788
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 790
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getTotalPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p1, v2

    .line 792
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 793
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getTotalPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 794
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 796
    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 797
    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v1

    .line 799
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 802
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "startSelectionActionMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 803
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 806
    :catch_1
    move-exception v0

    .line 807
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 808
    :catch_2
    move-exception v0

    .line 809
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private startAnimator()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 575
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-nez v0, :cond_0

    .line 625
    :goto_0
    return-void

    .line 576
    :cond_0
    iput-boolean v5, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    .line 577
    new-instance v1, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/meizu/common/widget/FoldableTextView$ValueHolder;-><init>(Lcom/meizu/common/widget/FoldableTextView;Lcom/meizu/common/widget/FoldableTextView$1;)V

    .line 579
    const-string v2, "height"

    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    :goto_1
    aput v0, v3, v4

    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    :goto_2
    aput v0, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 580
    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 581
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 582
    new-instance v1, Lcom/meizu/common/widget/FoldableTextView$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/FoldableTextView$2;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 616
    new-instance v1, Lcom/meizu/common/widget/FoldableTextView$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/FoldableTextView$3;-><init>(Lcom/meizu/common/widget/FoldableTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 624
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 579
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    goto :goto_2
.end method


# virtual methods
.method public changeFoldState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 547
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    if-eqz v0, :cond_0

    .line 552
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_3

    .line 554
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    invoke-interface {v0, p0, v1}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    :cond_2
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 559
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 560
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    if-eqz v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    goto :goto_0

    .line 565
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    invoke-interface {v0, p0, v2}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    :cond_4
    iput-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 569
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-le v0, v1, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V

    goto :goto_0
.end method

.method public getFoldLineMax()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    return v0
.end method

.method public getFoldStatus()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    return v0
.end method

.method public getLinkColor()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    return v0
.end method

.method public getMoreText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStrEllipse()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasFocusable()Z
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    return v0
.end method

.method public isAlignViewEdge()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    return v0
.end method

.method public isClickToFold()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    return v0
.end method

.method public isNonSpanClickable()Z
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    move-result-object v0

    iget-boolean v0, v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->isLinkClick:Z

    if-nez v0, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->changeFoldState()V

    .line 541
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 385
    const-class v0, Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 386
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 411
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 413
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->initHeight(Ljava/lang/CharSequence;)V

    .line 415
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    if-eqz v0, :cond_2

    .line 416
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-nez v0, :cond_1

    .line 417
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    .line 435
    :goto_0
    return-void

    .line 419
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mAnimatorFraction:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->foldText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    .line 426
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-gtz v0, :cond_5

    .line 427
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 428
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 432
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 397
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    .line 399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldedText:Ljava/lang/CharSequence;

    .line 400
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/FoldableTextView;->initHeight(Ljava/lang/CharSequence;)V

    .line 401
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_1

    .line 402
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMinHeight:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setHeight(I)V

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMaxHeight:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->setHeight(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 726
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 728
    if-gt v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 760
    :goto_0
    return v0

    .line 730
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eqz v0, :cond_2

    .line 731
    invoke-static {}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v1, p0, v0, p1}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 733
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 760
    :goto_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonClicks:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    if-eqz v0, :cond_6

    :cond_3
    move v0, v2

    goto :goto_0

    .line 735
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchX:F

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchY:F

    .line 737
    sget v0, Lcom/meizu/common/widget/FoldableTextView;->TOUCH_STATE_NORMAL:I

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchState:I

    .line 738
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 739
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Lcom/meizu/common/widget/FoldableTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 742
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchX:F

    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchY:F

    goto :goto_1

    .line 746
    :pswitch_2
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchState:I

    sget v3, Lcom/meizu/common/widget/FoldableTextView;->TOUCH_STATE_LONGCLICK:I

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_4

    .line 747
    invoke-static {}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    move-result-object v3

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {v3, p0, v0, p1}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 748
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->performClick()Z

    .line 749
    sget v0, Lcom/meizu/common/widget/FoldableTextView;->TOUCH_STATE_NORMAL:I

    iput v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchState:I

    .line 751
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchState:I

    sget v3, Lcom/meizu/common/widget/FoldableTextView;->TOUCH_STATE_LONGCLICK:I

    if-eq v0, v3, :cond_5

    .line 752
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 754
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 757
    :pswitch_3
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/FoldableTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    move v0, v1

    .line 760
    goto/16 :goto_0

    .line 733
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 766
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v0

    .line 767
    sget v1, Lcom/meizu/common/widget/FoldableTextView;->TOUCH_STATE_LONGCLICK:I

    iput v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchState:I

    .line 768
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    if-eqz v1, :cond_0

    .line 770
    iget v1, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchX:F

    iget v2, p0, Lcom/meizu/common/widget/FoldableTextView;->mTouchY:F

    invoke-direct {p0, v1, v2}, Lcom/meizu/common/widget/FoldableTextView;->setSelectionByPosition(FF)V

    .line 772
    :cond_0
    return v0
.end method

.method public setClickToFold(Z)V
    .locals 0

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mClickToFold:Z

    .line 331
    return-void
.end method

.method public setFoldDuration(I)V
    .locals 0

    .prologue
    .line 655
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mDuration:I

    .line 656
    return-void
.end method

.method public setFoldStatus(Z)V
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    if-eq v0, p1, :cond_0

    .line 376
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsfolded:Z

    .line 377
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->requestLayout()V

    .line 378
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->invalidate()V

    .line 380
    :cond_0
    return-void
.end method

.method public setFoldText(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 257
    iput-boolean p3, p0, Lcom/meizu/common/widget/FoldableTextView;->mAlignViewEdge:Z

    .line 258
    if-eqz p1, :cond_0

    .line 259
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    .line 263
    :goto_0
    if-eqz p2, :cond_1

    .line 264
    iput-object p2, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    .line 270
    :goto_1
    return-void

    .line 261
    :cond_0
    const-string v0, "..."

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mEllipseText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$string;->more_item_label:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mMoreText:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public setFolding(ILcom/meizu/common/widget/FoldableTextView$FoldingListener;)V
    .locals 2

    .prologue
    .line 308
    iget v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    if-eq v0, p1, :cond_0

    .line 309
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mFoldLineMax:I

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView;->mainText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 312
    :cond_0
    iput-object p2, p0, Lcom/meizu/common/widget/FoldableTextView;->mListener:Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    .line 313
    return-void
.end method

.method public setForbidden(Z)V
    .locals 0

    .prologue
    .line 843
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mIsForbidden:Z

    .line 844
    return-void
.end method

.method public setLinkColor(I)V
    .locals 0

    .prologue
    .line 348
    iput p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mLinkColor:I

    .line 349
    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->invalidate()V

    .line 350
    return-void
.end method

.method public setNonSpanClickable(Z)V
    .locals 0

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/meizu/common/widget/FoldableTextView;->mNonSpanClickable:Z

    .line 822
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 392
    return-void
.end method
