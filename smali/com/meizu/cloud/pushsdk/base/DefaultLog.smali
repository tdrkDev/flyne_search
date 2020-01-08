.class Lcom/meizu/cloud/pushsdk/base/DefaultLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/cloud/pushsdk/base/ICacheLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;
    }
.end annotation


# instance fields
.field private mCacheCounter:I

.field private mCacheDuration:J

.field private mCachedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDebugMode:Z

.field private mDelayHandler:Landroid/os/Handler;

.field private mPath:Ljava/lang/String;

.field private mPid:Ljava/lang/String;

.field private mWriter:Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCacheDuration:J

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCacheCounter:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDelayHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/pushSdk/defaultLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mPath:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mWriter:Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    .line 36
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mPid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mWriter:Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mPid:Ljava/lang/String;

    return-object v0
.end method

.method private addLogInfo(Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;)V
    .locals 4

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    const-string v1, "Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add logInfo error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkLogCount()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCacheCounter:I

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->flush(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method private startDelayTimer()V
    .locals 6

    .prologue
    .line 41
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/cloud/pushsdk/base/DefaultLog$1;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog$1;-><init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)V

    iget-wide v2, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCacheDuration:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->startDelayTimer()V

    .line 65
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;

    const-string v2, "D"

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;-><init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->addLogInfo(Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;)V

    .line 66
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->checkLogCount()V

    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->startDelayTimer()V

    .line 101
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;

    const-string v2, "E"

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;-><init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->addLogInfo(Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;)V

    .line 102
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->checkLogCount()V

    .line 103
    monitor-exit v1

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->startDelayTimer()V

    .line 113
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;

    const-string v2, "E"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;-><init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->addLogInfo(Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;)V

    .line 114
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->checkLogCount()V

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush(Z)V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog$2;-><init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;)V

    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->get()Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/base/ExecutorProxy;->execute(Ljava/lang/Runnable;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->startDelayTimer()V

    .line 77
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;

    const-string v2, "I"

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;-><init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->addLogInfo(Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;)V

    .line 78
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->checkLogCount()V

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    return v0
.end method

.method public setCacheCount(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCacheCounter:I

    .line 126
    return-void
.end method

.method public setCacheDuration(J)V
    .locals 1

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCacheDuration:J

    .line 121
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    .line 170
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mPath:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 88
    :try_start_0
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->startDelayTimer()V

    .line 89
    new-instance v0, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;

    const-string v2, "W"

    invoke-direct {v0, p0, v2, p1, p2}, Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;-><init>(Lcom/meizu/cloud/pushsdk/base/DefaultLog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->addLogInfo(Lcom/meizu/cloud/pushsdk/base/DefaultLog$LogInfo;)V

    .line 90
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/base/DefaultLog;->checkLogCount()V

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
