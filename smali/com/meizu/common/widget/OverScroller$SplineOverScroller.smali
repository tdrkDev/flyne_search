.class Lcom/meizu/common/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static final DECELERATIONSPEED_FAST:I = 0x32

.field private static final DECELERATIONSPEED_SLOW:I = 0x19

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MAXFLINGTESTCOUNT:I = 0x4

.field private static final MAXUPDATECOUNT:I = 0x5

.field private static final NB_SAMPLES:I = 0x64

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0x26a

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f

.field private static final tag:Ljava/lang/String; = "OverScroller"


# instance fields
.field private mAverageTime:J

.field private mCoeffDeceleration:F

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDecelerationSpeed:I

.field private mDelta:F

.field private mDuration:I

.field private mEnableOverScrollForMz:Z

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlingTestCount:I

.field private mIterateCount:I

.field private mLastDistance:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSmoothFling:Z

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mSpringDistance:I

.field private mSpringbackEnd:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mUpdateCount:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v13, 0x3e333333    # 0.175f

    const/4 v4, 0x0

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v12, 0x64

    const/high16 v1, 0x3f800000    # 1.0f

    .line 601
    const-wide v2, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    div-double/2addr v2, v6

    double-to-float v0, v2

    sput v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 609
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 610
    const/16 v0, 0x65

    new-array v0, v0, [F

    sput-object v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 640
    const/4 v0, 0x0

    move v5, v0

    move v2, v4

    :goto_0
    if-ge v5, v12, :cond_4

    .line 641
    int-to-float v0, v5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v6, v0, v3

    move v0, v1

    move v3, v2

    .line 646
    :goto_1
    sub-float v2, v0, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v3

    .line 647
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 648
    sub-float v8, v1, v2

    mul-float/2addr v8, v13

    const v9, 0x3eb33334    # 0.35000002f

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 649
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_0

    .line 653
    sget-object v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v7, v8

    mul-float v8, v2, v2

    mul-float/2addr v2, v8

    add-float/2addr v2, v7

    aput v2, v0, v5

    move v0, v1

    .line 658
    :goto_2
    sub-float v2, v0, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    .line 659
    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v2

    sub-float v8, v1, v2

    mul-float/2addr v7, v8

    .line 660
    sub-float v8, v1, v2

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    add-float/2addr v8, v2

    mul-float/2addr v8, v7

    mul-float v9, v2, v2

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    .line 661
    sub-float v9, v8, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    cmpg-double v9, v10, v14

    if-gez v9, :cond_2

    .line 665
    sget-object v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    sub-float v6, v1, v2

    mul-float/2addr v6, v13

    const v8, 0x3eb33334    # 0.35000002f

    mul-float/2addr v8, v2

    add-float/2addr v6, v8

    mul-float/2addr v6, v7

    mul-float v7, v2, v2

    mul-float/2addr v2, v7

    add-float/2addr v2, v6

    aput v2, v0, v5

    .line 640
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v2, v3

    goto :goto_0

    .line 650
    :cond_0
    cmpl-float v7, v8, v6

    if-lez v7, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v3, v2

    .line 651
    goto :goto_1

    .line 662
    :cond_2
    cmpl-float v7, v8, v6

    if-lez v7, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v4, v2

    .line 663
    goto :goto_2

    .line 667
    :cond_4
    sget-object v0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v2, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aput v1, v2, v12

    aput v1, v0, v12

    .line 668
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 593
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 616
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 617
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 618
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 621
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 622
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSpringbackEnd:I

    .line 623
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSpringDistance:I

    .line 625
    iput-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 629
    iput v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 630
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 634
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 635
    iput-wide v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1138
    iput-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 675
    iput-boolean v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    .line 677
    const v1, 0x43c10b3d

    mul-float/2addr v0, v1

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 682
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 683
    iput-wide v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 684
    iput-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 685
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0

    .prologue
    .line 552
    iput-boolean p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)F
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    .prologue
    .line 552
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/OverScroller$SplineOverScroller;)I
    .locals 1

    .prologue
    .line 552
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 6

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 703
    sub-int v0, p2, p1

    .line 704
    sub-int v1, p3, p1

    .line 705
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 706
    mul-float v1, v4, v0

    float-to-int v1, v1

    .line 707
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 708
    int-to-float v2, v1

    div-float/2addr v2, v4

    .line 709
    add-int/lit8 v3, v1, 0x1

    int-to-float v3, v3

    div-float/2addr v3, v4

    .line 710
    sget-object v4, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v4, v4, v1

    .line 711
    sget-object v5, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v1, v1, 0x1

    aget v1, v5, v1

    .line 712
    sub-float/2addr v0, v2

    sub-float v2, v3, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    .line 713
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 715
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 6

    .prologue
    .line 890
    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v0, v1

    .line 891
    mul-int v1, p3, p3

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    .line 892
    sub-int v2, p2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    .line 893
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-float/2addr v1, v2

    float-to-double v2, v1

    mul-double/2addr v2, v4

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 894
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    div-double/2addr v2, v4

    .line 893
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 895
    iget-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v4, 0x447a0000    # 1000.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 896
    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 897
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 898
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1

    .prologue
    .line 695
    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3

    .prologue
    .line 872
    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .prologue
    .line 876
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 877
    sget v2, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 878
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double v2, v6, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    .prologue
    .line 883
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 884
    sget v2, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 885
    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    return v0
.end method

.method private onEdgeReached()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    .line 942
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v3

    div-float/2addr v0, v2

    .line 944
    iget-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v2, :cond_2

    .line 945
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 947
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 949
    neg-float v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 950
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v0

    .line 953
    :cond_0
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v1, :cond_1

    move v1, v0

    :goto_0
    float-to-int v1, v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 954
    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 977
    :goto_1
    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 978
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 979
    return-void

    .line 953
    :cond_1
    neg-float v1, v0

    goto :goto_0

    .line 956
    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 957
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 958
    iput-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 959
    const v0, 0x7fffffff

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 963
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    const/high16 v2, 0x43160000    # 150.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    move v0, v1

    .line 966
    :goto_2
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v2, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v4, v1

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 967
    if-nez v1, :cond_3

    .line 968
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 973
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v6, v1

    int-to-double v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 974
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_1

    .line 971
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private quintic(JIIJ)I
    .locals 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1134
    long-to-float v0, p1

    mul-float/2addr v0, v2

    long-to-float v1, p5

    div-float/2addr v0, v1

    sub-float/2addr v0, v2

    .line 1135
    int-to-double v2, p4

    float-to-double v0, v0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private startAfterEdge(IIII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 907
    if-le p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    .line 908
    const-string v1, "OverScroller"

    const-string v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 927
    :goto_0
    return-void

    .line 912
    :cond_0
    if-le p1, p3, :cond_1

    move v4, v0

    .line 913
    :goto_1
    if-eqz v4, :cond_2

    move v2, p3

    .line 914
    :goto_2
    sub-int v3, p1, v2

    .line 915
    mul-int v5, v3, p4

    if-ltz v5, :cond_3

    .line 916
    :goto_3
    if-eqz v0, :cond_4

    .line 918
    invoke-direct {p0, p1, v2, p4}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    :cond_1
    move v4, v1

    .line 912
    goto :goto_1

    :cond_2
    move v2, p2

    .line 913
    goto :goto_2

    :cond_3
    move v0, v1

    .line 915
    goto :goto_3

    .line 920
    :cond_4
    invoke-direct {p0, p4}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 921
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v6, v3

    cmpl-double v0, v0, v6

    if-lez v0, :cond_7

    .line 922
    if-eqz v4, :cond_5

    move v3, p2

    :goto_4
    if-eqz v4, :cond_6

    move v4, p1

    :goto_5
    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v0, p0

    move v1, p1

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v3, p1

    goto :goto_4

    :cond_6
    move v4, p3

    goto :goto_5

    .line 924
    :cond_7
    invoke-direct {p0, p1, v2, p4}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    .prologue
    .line 901
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 902
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 903
    invoke-direct {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 904
    return-void

    :cond_0
    move v0, p3

    .line 901
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 6

    .prologue
    .line 771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 772
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 773
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 774
    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 775
    sub-int v0, p1, p2

    .line 776
    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 778
    neg-int v1, v0

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 779
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 781
    iget-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_0

    .line 782
    const/16 v0, 0x26a

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v4, v4

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_0
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 982
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1011
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1012
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 985
    :pswitch_1
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 987
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 989
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 990
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 991
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 992
    invoke-direct {p0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1000
    :pswitch_2
    iget-boolean v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v1, :cond_1

    .line 1001
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1005
    :goto_1
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1003
    :cond_1
    iget-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    goto :goto_1

    .line 982
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 4

    .prologue
    .line 745
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 746
    iget-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 747
    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 749
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 736
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 737
    return-void
.end method

.method fling(IIIII)V
    .locals 10

    .prologue
    .line 789
    iput p5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 791
    iput p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 792
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 793
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 794
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 796
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    .line 797
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 869
    :cond_1
    :goto_0
    return-void

    .line 801
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    .line 802
    const-wide/16 v0, 0x0

    .line 804
    if-eqz p2, :cond_3

    .line 805
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 806
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 809
    :cond_3
    iget-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    .line 810
    iget-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v4, 0x28

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 811
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 815
    :cond_4
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingTestCount:I

    .line 816
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 818
    iget-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v2, :cond_a

    .line 819
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 820
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    .line 825
    :cond_5
    :goto_1
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 827
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    .line 829
    const v0, 0x3f7851ec    # 0.97f

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    .line 832
    const/4 v0, 0x0

    .line 833
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 836
    :goto_2
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v2, v2

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v4, v4

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 837
    if-nez v2, :cond_7

    .line 838
    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    .line 843
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v6, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    float-to-double v6, v6

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/high16 v0, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    sub-float/2addr v0, v4

    float-to-double v4, v0

    div-double/2addr v2, v4

    .line 845
    const/16 v0, 0x7d0

    if-le v1, v0, :cond_8

    .line 846
    const/16 v0, 0x1388

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 853
    :goto_3
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_0

    .line 821
    :cond_6
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    const-wide/16 v2, 0x28

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 822
    const/16 v0, 0x19

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDecelerationSpeed:I

    goto :goto_1

    .line 841
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 847
    :cond_8
    const/16 v0, 0xc8

    if-ge v1, v0, :cond_9

    .line 848
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_3

    .line 850
    :cond_9
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    goto :goto_3

    .line 855
    :cond_a
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 856
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 859
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v0, p3, :cond_b

    .line 860
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v0, v1, p3}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 861
    iput p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 864
    :cond_b
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v0, p4, :cond_1

    .line 865
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v0, v1, p4}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 866
    iput p4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto/16 :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2

    .prologue
    .line 931
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 932
    iput p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 933
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 936
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 938
    :cond_0
    return-void
.end method

.method public setEnableMZOverScroll(ZZ)V
    .locals 0

    .prologue
    .line 1143
    iput-boolean p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    .line 1144
    iput-boolean p2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    .line 1145
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1

    .prologue
    .line 740
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 741
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 742
    return-void
.end method

.method setFriction(F)V
    .locals 0

    .prologue
    .line 671
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 672
    return-void
.end method

.method springback(III)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 752
    iput-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 754
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 755
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 757
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 758
    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 760
    if-ge p1, p2, :cond_1

    .line 761
    invoke-direct {p0, p1, p2, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 766
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 762
    :cond_1
    if-le p1, p3, :cond_0

    .line 763
    invoke-direct {p0, p1, p3, v1}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 766
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 718
    iput-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 720
    iput p1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 721
    add-int v0, p1, p2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 723
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 724
    iput p3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 727
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 728
    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 729
    return-void
.end method

.method update()Z
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x447a0000    # 1000.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v8, 0x1

    .line 1021
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1022
    iget-wide v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v2, v0, v2

    .line 1024
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 1025
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v0, :cond_1

    .line 1026
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-eqz v0, :cond_2

    .line 1027
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mIterateCount:I

    if-eqz v0, :cond_0

    .line 1028
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1040
    :cond_0
    iput-boolean v8, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinished:Z

    :cond_1
    move v8, v9

    .line 1120
    :goto_0
    return v8

    .line 1035
    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    if-eq v0, v1, :cond_0

    .line 1036
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    goto :goto_0

    .line 1045
    :cond_3
    const-wide/16 v0, 0x0

    .line 1046
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v4, :pswitch_data_0

    .line 1108
    :goto_1
    iget-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v2, :cond_b

    .line 1109
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v2, :cond_9

    .line 1110
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    goto :goto_0

    .line 1048
    :pswitch_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSmoothFling:Z

    if-nez v0, :cond_5

    .line 1049
    long-to-float v0, v2

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 1050
    mul-float v0, v5, v2

    float-to-int v3, v0

    .line 1051
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1052
    const/4 v0, 0x0

    .line 1053
    const/16 v4, 0x64

    if-ge v3, v4, :cond_4

    .line 1054
    int-to-float v0, v3

    div-float v1, v0, v5

    .line 1055
    add-int/lit8 v0, v3, 0x1

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 1056
    sget-object v4, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v4, v3

    .line 1057
    sget-object v5, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v3, v3, 0x1

    aget v3, v5, v3

    .line 1058
    sub-float/2addr v3, v4

    sub-float/2addr v0, v1

    div-float v0, v3, v0

    .line 1059
    sub-float v1, v2, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    .line 1062
    :cond_4
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v2, v1

    .line 1063
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v7

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-wide v0, v2

    .line 1064
    goto :goto_1

    .line 1065
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    .line 1066
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 1067
    iget-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mUpdateCount:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mAverageTime:J

    .line 1070
    :cond_6
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1071
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1072
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1073
    double-to-float v2, v0

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_1

    .line 1080
    :pswitch_1
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-nez v0, :cond_7

    .line 1081
    long-to-float v0, v2

    div-float/2addr v0, v7

    .line 1082
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1083
    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    mul-float/2addr v2, v0

    mul-float/2addr v0, v2

    div-float/2addr v0, v6

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1084
    goto/16 :goto_1

    .line 1085
    :cond_7
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1086
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 1087
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    iget v3, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCoeffDeceleration:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDelta:F

    .line 1088
    double-to-float v2, v0

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mLastDistance:F

    goto/16 :goto_1

    .line 1095
    :pswitch_2
    long-to-float v0, v2

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 1096
    mul-float v5, v4, v4

    .line 1097
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v10

    .line 1098
    iget-boolean v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mEnableOverScrollForMz:Z

    if-eqz v0, :cond_8

    .line 1099
    iget v4, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v5, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->quintic(JIIJ)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    float-to-double v0, v0

    goto/16 :goto_1

    .line 1101
    :cond_8
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v0

    mul-float/2addr v0, v10

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, v5

    mul-float v2, v6, v4

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 1102
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    mul-float/2addr v2, v10

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    neg-float v3, v4

    add-float/2addr v3, v5

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 1113
    :cond_9
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    double-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1114
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-eq v0, v1, :cond_a

    move v0, v8

    :goto_2
    move v8, v0

    goto/16 :goto_0

    :cond_a
    move v0, v9

    goto :goto_2

    .line 1117
    :cond_b
    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    goto/16 :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3

    .prologue
    .line 688
    iget v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 689
    return-void
.end method
