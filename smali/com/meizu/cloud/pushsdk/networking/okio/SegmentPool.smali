.class final Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final MAX_SIZE:J = 0x10000L

.field static byteCount:J

.field static next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static recycle(Lcom/meizu/cloud/pushsdk/networking/okio/Segment;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x800

    .line 49
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->prev:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 50
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->shared:Z

    if-eqz v0, :cond_2

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_2
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-wide v2, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    const-wide/32 v4, 0x10000

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_3
    :try_start_1
    sget-wide v2, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->byteCount:J

    add-long/2addr v2, v6

    sput-wide v2, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->byteCount:J

    .line 54
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->limit:I

    iput v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->pos:I

    .line 56
    sput-object p0, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 57
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static take()Lcom/meizu/cloud/pushsdk/networking/okio/Segment;
    .locals 6

    .prologue
    .line 36
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 39
    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    sput-object v2, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 40
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;->next:Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    .line 41
    sget-wide v2, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->byteCount:J

    const-wide/16 v4, 0x800

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/meizu/cloud/pushsdk/networking/okio/SegmentPool;->byteCount:J

    .line 42
    monitor-exit v1

    .line 45
    :goto_0
    return-object v0

    .line 44
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/Segment;-><init>()V

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
