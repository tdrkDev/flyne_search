.class public Lcom/meizu/common/alphame/AlphaMe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;,
        Lcom/meizu/common/alphame/AlphaMe$ServerDeathRecipient;,
        Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;,
        Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;,
        Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;,
        Lcom/meizu/common/alphame/AlphaMe$Instance;
    }
.end annotation


# static fields
.field private static final BINDER_DIED_MSG:I = 0x0

.field public static final SERVER_NAME:Ljava/lang/String; = "alphame_server"

.field private static final TAG:Ljava/lang/String; = "AlphaMe"


# instance fields
.field private final mActionReceiverArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

.field private mHandler:Landroid/os/Handler;

.field private mInitialized:Z

.field private final mPendingReceiver:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mResultReceiverArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/meizu/common/alphame/IAlphaMe;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    .line 19
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    .line 20
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    .line 35
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/meizu/common/alphame/AlphaMe$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/alphame/AlphaMe$1;-><init>(Lcom/meizu/common/alphame/AlphaMe;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    .line 71
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/alphame/AlphaMe$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/common/alphame/AlphaMe;I)Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->getResultReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/alphame/AlphaMe;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->removeResultReceiver(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/meizu/common/alphame/AlphaMe;I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/alphame/AlphaMe;)Lcom/meizu/common/alphame/IAlphaMe;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/meizu/common/alphame/AlphaMe;Lcom/meizu/common/alphame/IAlphaMe;)Lcom/meizu/common/alphame/IAlphaMe;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/alphame/AlphaMe;)Landroid/util/LongSparseArray;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/alphame/AlphaMe;)Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/common/alphame/AlphaMe;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/alphame/AlphaMe;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Z
    .locals 4

    .prologue
    .line 274
    monitor-enter p0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 277
    const/4 v0, 0x1

    monitor-exit p0

    .line 280
    :goto_0
    return v0

    .line 279
    :cond_0
    const-string v0, "AlphaMe"

    const-string v1, "Register too many receivers"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addResultReceiver(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;)Z
    .locals 4

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;->getId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 254
    const/4 v0, 0x1

    monitor-exit p0

    .line 257
    :goto_0
    return v0

    .line 256
    :cond_0
    const-string v0, "AlphaMe"

    const-string v1, "Invoke too much"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private varargs execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    .line 182
    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->addResultReceiver(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v1}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v3, Lcom/meizu/common/alphame/Args;

    invoke-direct {v3, p4}, Lcom/meizu/common/alphame/Args;-><init>([Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;->getId()I

    move-result v5

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/alphame/IAlphaMe;->exec(Landroid/os/IBinder;Ljava/lang/String;Lcom/meizu/common/alphame/Args;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_1
    return-void

    .line 185
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Execute exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe;->removeResultReceiver(I)V

    goto :goto_1
.end method

.method private getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;
    .locals 4

    .prologue
    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    monitor-exit p0

    return-object v0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/meizu/common/alphame/AlphaMe;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe$Instance;->access$100()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    return-object v0
.end method

.method private getResultReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;
    .locals 4

    .prologue
    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;

    monitor-exit p0

    return-object v0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initializeIfNeed()V
    .locals 5

    .prologue
    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "alphame_server"

    .line 199
    invoke-static {v0}, Lcom/meizu/common/alphame/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 198
    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMeNative;->asInterface(Landroid/os/IBinder;)Lcom/meizu/common/alphame/IAlphaMe;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    if-nez v0, :cond_1

    .line 202
    const-string v0, "AlphaMe"

    const-string v1, "Can\'t find %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "alphame_server"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    return-void

    .line 206
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    invoke-interface {v0}, Lcom/meizu/common/alphame/IAlphaMe;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/meizu/common/alphame/AlphaMe$ServerDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/alphame/AlphaMe$ServerDeathRecipient;-><init>(Lcom/meizu/common/alphame/AlphaMe;Lcom/meizu/common/alphame/AlphaMe$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 207
    new-instance v0, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;-><init>(Lcom/meizu/common/alphame/AlphaMe;Lcom/meizu/common/alphame/AlphaMe$1;)V

    iput-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    .line 208
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v1}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/common/alphame/IAlphaMe;->addClient(Landroid/os/IBinder;)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :try_start_3
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private removeActionReceiver(I)V
    .locals 4

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mActionReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 287
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 288
    monitor-exit p0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeResultReceiver(I)V
    .locals 4

    .prologue
    .line 262
    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mResultReceiverArray:Landroid/util/LongSparseArray;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 264
    monitor-exit p0

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs collect(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    .line 81
    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    new-instance v1, Lcom/meizu/common/alphame/Args;

    invoke-direct {v1, p2}, Lcom/meizu/common/alphame/Args;-><init>([Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/meizu/common/alphame/IAlphaMe;->collect(Ljava/lang/String;Lcom/meizu/common/alphame/Args;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collect fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;-><init>(Lcom/meizu/common/alphame/AlphaMe$1;)V

    .line 98
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meizu/common/alphame/AlphaMe;->execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-static {v0}, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;->access$600(Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs invoke(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const-string v0, "AlphaMe"

    const-string v1, "ResultReceiver can\'t be null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/meizu/common/alphame/AlphaMe;->execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs invokeAsync(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/alphame/AlphaMe$MyResultReceiver;-><init>(Lcom/meizu/common/alphame/AlphaMe$1;)V

    .line 109
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meizu/common/alphame/AlphaMe;->execute(Lcom/meizu/common/alphame/AlphaMe$ResultReceiver;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public registerActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V
    .locals 6

    .prologue
    .line 131
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->access$700(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    .line 133
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    if-nez v0, :cond_3

    .line 134
    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mPendingReceiver:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 143
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 145
    :try_start_1
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe;->getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 146
    const-string v0, "AlphaMe"

    const-string v1, "Receiver is registered before"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe;->removeActionReceiver(I)V

    goto :goto_0

    .line 149
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/meizu/common/alphame/AlphaMe;->addActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v1}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->access$700(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/meizu/common/alphame/IAlphaMe;->registerActionReceiver(Landroid/os/IBinder;Ljava/util/ArrayList;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public unregisterActionReceiver(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)V
    .locals 4

    .prologue
    .line 164
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->access$700(Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/alphame/AlphaMe;->initializeIfNeed()V

    .line 166
    iget-boolean v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 168
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe;->getActionReceiver(I)Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;

    move-result-object v0

    if-nez v0, :cond_2

    .line 169
    const-string v0, "AlphaMe"

    const-string v1, "Try to remove a receiver that is not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver exception "

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

    .line 172
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/alphame/AlphaMe;->removeActionReceiver(I)V

    .line 173
    iget-object v0, p0, Lcom/meizu/common/alphame/AlphaMe;->mService:Lcom/meizu/common/alphame/IAlphaMe;

    iget-object v1, p0, Lcom/meizu/common/alphame/AlphaMe;->mClient:Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;

    invoke-virtual {v1}, Lcom/meizu/common/alphame/AlphaMe$AlphaMeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/common/alphame/AlphaMe$ActionReceiver;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/alphame/IAlphaMe;->unregisterActionReceiver(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
