.class public Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BANDWIDTH_LOWER_BOUND:J = 0xaL

.field private static final BYTES_TO_BITS:I = 0x8

.field private static final DEFAULT_GOOD_BANDWIDTH:I = 0x7d0

.field private static final DEFAULT_MODERATE_BANDWIDTH:I = 0x226

.field private static final DEFAULT_POOR_BANDWIDTH:I = 0x96

.field private static final DEFAULT_SAMPLES_TO_QUALITY_CHANGE:I = 0x5

.field private static final MINIMUM_SAMPLES_TO_DECIDE_QUALITY:I = 0x2

.field private static sInstance:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;


# instance fields
.field private mConnectionQualityChangeListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ConnectionQualityChangeListener;

.field private mCurrentBandwidth:I

.field private mCurrentBandwidthForSampling:I

.field private mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

.field private mCurrentNumberOfSample:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->UNKNOWN:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    .line 38
    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    .line 39
    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    .line 40
    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;)Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;)Lcom/meizu/cloud/pushsdk/networking/interfaces/ConnectionQualityChangeListener;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ConnectionQualityChangeListener;

    return-object v0
.end method

.method public static getInstance()Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->sInstance:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->sInstance:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->sInstance:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->sInstance:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static shutDown()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->sInstance:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->sInstance:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentBandwidth()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidth:I

    return v0
.end method

.method public getCurrentConnectionQuality()Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    return-object v0
.end method

.method public removeListener()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ConnectionQualityChangeListener;

    .line 112
    return-void
.end method

.method public setListener(Lcom/meizu/cloud/pushsdk/networking/interfaces/ConnectionQualityChangeListener;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ConnectionQualityChangeListener;

    .line 108
    return-void
.end method

.method public declared-synchronized updateBandwidth(JJ)V
    .locals 11

    .prologue
    const/16 v9, 0x7d0

    const/4 v8, 0x5

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 55
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4e20

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    long-to-double v0, p1

    mul-double/2addr v0, v4

    long-to-double v2, p3

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    long-to-double v0, p1

    mul-double/2addr v0, v4

    long-to-double v2, p3

    div-double/2addr v0, v2

    mul-double/2addr v0, v6

    .line 60
    :try_start_0
    iget v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    iget v3, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget v2, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    add-int/lit8 v2, v2, 0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    .line 62
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    .line 63
    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->UNKNOWN:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    .line 67
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidth:I

    .line 68
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    if-gtz v1, :cond_5

    .line 69
    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->UNKNOWN:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    .line 79
    :cond_3
    :goto_1
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    if-ne v1, v8, :cond_4

    .line 80
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    .line 81
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentNumberOfSample:I

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mConnectionQualityChangeListener:Lcom/meizu/cloud/pushsdk/networking/interfaces/ConnectionQualityChangeListener;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getInstance()Lcom/meizu/cloud/pushsdk/networking/core/Core;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/core/Core;->getExecutorSupplier()Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/networking/core/ExecutorSupplier;->forMainThreadTasks()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager$1;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager$1;-><init>(Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;)V

    .line 86
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_5
    :try_start_1
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    const/16 v2, 0x96

    if-ge v1, v2, :cond_6

    .line 71
    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->POOR:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    goto :goto_1

    .line 72
    :cond_6
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    const/16 v2, 0x226

    if-ge v1, v2, :cond_7

    .line 73
    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->MODERATE:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    goto :goto_1

    .line 74
    :cond_7
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    if-ge v1, v9, :cond_8

    .line 75
    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->GOOD:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    goto :goto_1

    .line 76
    :cond_8
    iget v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentBandwidthForSampling:I

    if-le v1, v9, :cond_3

    .line 77
    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;->EXCELLENT:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/networking/common/ConnectionClassManager;->mCurrentConnectionQuality:Lcom/meizu/cloud/pushsdk/networking/common/ConnectionQuality;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
