.class public Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;
.super Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private emptyCount:I

.field private eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;-><init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter$EmitterBuilder;)V

    .line 27
    const-class v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/EventStore;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->context:Landroid/content/Context;

    iget v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->sendLimit:I

    invoke-direct {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/EventStore;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    .line 40
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->sendLimit:I

    invoke-direct {v0, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/MemoryStore;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    .line 42
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "init memory store"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->attemptEmit()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;Lcom/meizu/cloud/pushsdk/networking/http/Request;)I
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->requestSender(Lcom/meizu/cloud/pushsdk/networking/http/Request;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;)Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    return-object v0
.end method

.method private attemptEmit()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Util;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;->getSize()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    .line 111
    iput v3, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->emptyCount:I

    .line 113
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    invoke-interface {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;->getEmittableEvents()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->buildRequests(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/EmittableEvents;)Ljava/util/LinkedList;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->performAsyncEmit(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v2, "Processing emitter results."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 126
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;

    .line 127
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;->getSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;->getEventIds()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 129
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 131
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;->getEventIds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int v1, v4, v0

    move v0, v2

    :goto_2
    move v2, v0

    move v4, v1

    .line 136
    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;->getEventIds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/2addr v0, v2

    .line 134
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v2, "Request sending failed but we will retry later."

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v4

    goto :goto_2

    .line 137
    :cond_2
    invoke-direct {p0, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->performAsyncEventRemoval(Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 142
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Success Count: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v1, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Failure Count: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v1, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    if-eqz v0, :cond_3

    .line 146
    if-eqz v2, :cond_6

    .line 147
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    invoke-interface {v0, v4, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;->onFailure(II)V

    .line 153
    :cond_3
    :goto_3
    if-lez v2, :cond_7

    if-nez v4, :cond_7

    .line 154
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Util;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Ensure collector path is valid: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->getEmitterUri()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Emitter loop stopping: failures."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 186
    :cond_5
    :goto_4
    return-void

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    invoke-interface {v0, v4}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;->onSuccess(I)V

    goto :goto_3

    .line 161
    :cond_7
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->attemptEmit()V

    goto :goto_4

    .line 164
    :cond_8
    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->emptyCount:I

    iget v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->emptyLimit:I

    if-lt v0, v1, :cond_9

    .line 165
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Emitter loop stopping: empty limit reached."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 167
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->requestCallback:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;

    invoke-interface {v0, v8}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;->isEmpty(Z)V

    goto :goto_4

    .line 171
    :cond_9
    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->emptyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->emptyCount:I

    .line 173
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emitter database empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->emptyCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->emitterTick:I

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_5
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->attemptEmit()V

    goto :goto_4

    .line 176
    :catch_0
    move-exception v0

    .line 177
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emitter thread sleep interrupted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 183
    :cond_a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Emitter loop stopping: emitter offline."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto/16 :goto_4
.end method

.method private getRemoveCallable(Ljava/lang/Long;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter$3;-><init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;Ljava/lang/Long;)V

    return-object v0
.end method

.method private getRequestCallable(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/networking/http/Request;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter$2;-><init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;Lcom/meizu/cloud/pushsdk/networking/http/Request;)V

    return-object v0
.end method

.method private performAsyncEmit(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 198
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 199
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 202
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    .line 203
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->getRequest()Lcom/meizu/cloud/pushsdk/networking/http/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->getRequestCallable(Lcom/meizu/cloud/pushsdk/networking/http/Request;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Executor;->futureCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Request Futures: %s"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-static {v0, v1, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 210
    :goto_1
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 211
    const/4 v3, -0x1

    .line 214
    :try_start_0
    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v8}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    move v3, v0

    .line 223
    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->isOversize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v3, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->getEventIds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {v3, v9, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v7, "Request Future was interrupted: %s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 217
    :catch_1
    move-exception v0

    .line 218
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v7, "Request Future failed: %s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 219
    :catch_2
    move-exception v0

    .line 220
    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v7, "Request Future had a timeout: %s"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v6, v7, v8}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 226
    :cond_1
    new-instance v6, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;

    invoke-virtual {p0, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isSuccessfulSend(I)Z

    move-result v3

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/ReadyRequest;->getEventIds()Ljava/util/LinkedList;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestResult;-><init>(ZLjava/util/LinkedList;)V

    invoke-virtual {v4, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 233
    :cond_2
    return-object v4
.end method

.method private performAsyncEventRemoval(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 248
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 249
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 252
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 253
    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->getRemoveCallable(Ljava/lang/Long;)Ljava/util/concurrent/Callable;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Executor;->futureCallable(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Removal Futures: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v1, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 259
    :goto_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 262
    :try_start_0
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const-wide/16 v6, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 270
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v6, "Removal Future was interrupted: %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 269
    goto :goto_2

    .line 265
    :catch_1
    move-exception v0

    .line 266
    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v6, "Removal Future failed: %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 269
    goto :goto_2

    .line 267
    :catch_2
    move-exception v0

    .line 268
    iget-object v5, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v6, "Removal Future had a timeout: %s"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v5, v6, v7}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2

    .line 276
    :cond_1
    return-object v3
.end method


# virtual methods
.method public add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;->add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)V

    .line 57
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->attemptEmit()V

    .line 61
    :cond_0
    return-void
.end method

.method public add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    invoke-interface {v0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;->add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRunning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attemptEmit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-nez p2, :cond_0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->timeUnit:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->attemptEmit()V

    .line 77
    :cond_1
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emitter add thread sleep interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter$1;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter$1;-><init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;)V

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Executor;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public getEmitterStatus()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getEventStore()Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->eventStore:Lcom/meizu/cloud/pushsdk/pushtracer/storage/Store;

    return-object v0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->TAG:Ljava/lang/String;

    const-string v1, "Shutting down emitter."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Emitter;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 317
    invoke-static {}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/classic/Executor;->shutdown()V

    .line 318
    return-void
.end method
