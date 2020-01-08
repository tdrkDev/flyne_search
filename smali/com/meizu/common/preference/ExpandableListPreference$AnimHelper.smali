.class public Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ExpandableListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;
    }
.end annotation


# static fields
.field public static final COLLAPSE:I = 0x1

.field public static final EXPAND:I


# instance fields
.field private mEndAlpha:F

.field private mEndBottomMargin:I

.field private mEndHeight:I

.field private mIsAnimating:Z

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMarginTop:I

.field private mMillisTime:J

.field private mRonateView:Landroid/view/View;

.field private mStartAlpha:F

.field private mStartBottomMargin:I

.field private mSummaryView:Landroid/view/View;

.field private mTarget:Landroid/view/View;

.field private mType:I

.field final synthetic this$0:Lcom/meizu/common/preference/ExpandableListPreference;


# direct methods
.method public constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    .line 300
    iput-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mIsAnimating:Z

    .line 304
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    return v0
.end method

.method static synthetic access$1400(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    return v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/view/View;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mRonateView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Z)Z
    .locals 0

    .prologue
    .line 284
    iput-boolean p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mIsAnimating:Z

    return p1
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 5

    .prologue
    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 457
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 458
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 460
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Lcom/meizu/common/preference/ExpandableListPreference$1;)V

    goto :goto_0
.end method


# virtual methods
.method public animateHeightPrt()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const-wide v12, 0x3fd999999999999aL    # 0.4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 328
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-nez v0, :cond_3

    .line 329
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    .line 330
    iput v8, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    .line 331
    iput v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    .line 332
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    .line 339
    :cond_0
    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 340
    new-array v1, v10, [F

    iget v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    aput v2, v1, v8

    iget v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    aput v2, v1, v9

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 341
    iget-wide v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 342
    iget v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-ne v2, v9, :cond_1

    .line 343
    iget-wide v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v2, v2

    const-wide v4, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 346
    new-instance v2, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$1;

    invoke-direct {v2, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$1;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 353
    new-instance v2, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$2;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 381
    new-array v2, v10, [F

    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    aput v3, v2, v8

    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    aput v3, v2, v9

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 382
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 383
    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-nez v3, :cond_2

    .line 384
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    long-to-double v4, v4

    mul-double/2addr v4, v12

    double-to-int v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 386
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    new-instance v3, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$3;

    invoke-direct {v3, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$3;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 394
    new-array v3, v10, [I

    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    aput v4, v3, v8

    iget v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    aput v4, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 396
    invoke-direct {p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 397
    new-instance v4, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;

    invoke-direct {v4, p0}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$4;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 416
    new-instance v4, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;

    invoke-direct {v4, p0, v3}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$5;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 446
    iget-wide v4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v3, v4, v8

    aput-object v2, v4, v9

    aput-object v1, v4, v10

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 448
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 449
    return-void

    .line 333
    :cond_3
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-ne v0, v9, :cond_0

    .line 334
    iput v8, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartBottomMargin:I

    .line 335
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndBottomMargin:I

    .line 336
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mStartAlpha:F

    .line 337
    iput v2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndAlpha:F

    goto/16 :goto_0
.end method

.method public iSAnimating()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mIsAnimating:Z

    return v0
.end method

.method public init(Landroid/view/View;Landroid/view/View;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 309
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    .line 310
    iput-object p3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    .line 311
    iput-object p2, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mRonateView:Landroid/view/View;

    .line 312
    iput p4, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    .line 313
    iput-wide p5, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMillisTime:J

    .line 314
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 315
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    .line 316
    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mEndHeight:I

    neg-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mTarget:Landroid/view/View;

    iget v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 323
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mSummaryView:Landroid/view/View;

    iget v3, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mType:I

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 325
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 322
    goto :goto_1

    :cond_2
    move v2, v1

    .line 324
    goto :goto_2
.end method

.method public setMarginTop(I)V
    .locals 0

    .prologue
    .line 452
    iput p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;->mMarginTop:I

    .line 453
    return-void
.end method
