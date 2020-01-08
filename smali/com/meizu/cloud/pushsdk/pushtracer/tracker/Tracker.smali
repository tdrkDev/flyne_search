.class public abstract Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected appId:Ljava/lang/String;

.field protected base64Encoded:Z

.field protected dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

.field protected level:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

.field protected namespace:Ljava/lang/String;

.field protected sessionCheckInterval:J

.field protected sessionContext:Z

.field protected subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

.field protected threadCount:I

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field protected trackerSession:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;

.field protected final trackerVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;)V
    .locals 8

    .prologue
    const/4 v0, 0x2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v1, "3.8.2"

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->trackerVersion:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 187
    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    .line 188
    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->appId:Ljava/lang/String;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->appId:Ljava/lang/String;

    .line 189
    iget-boolean v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->base64Encoded:Z

    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->base64Encoded:Z

    .line 190
    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->namespace:Ljava/lang/String;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->namespace:Ljava/lang/String;

    .line 191
    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    .line 192
    iget-object v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->level:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .line 193
    iget-boolean v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->sessionContext:Z

    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->sessionContext:Z

    .line 194
    iget-wide v2, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->sessionCheckInterval:J

    iput-wide v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->sessionCheckInterval:J

    .line 195
    iget v1, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->threadCount:I

    if-ge v1, v0, :cond_1

    :goto_0
    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->threadCount:I

    .line 196
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 199
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->sessionContext:Z

    if-eqz v0, :cond_0

    .line 200
    new-instance v1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;

    iget-wide v2, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->foregroundTimeout:J

    iget-wide v4, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->backgroundTimeout:J

    iget-object v6, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->context:Landroid/content/Context;

    invoke-direct/range {v1 .. v7}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;-><init>(JJLjava/util/concurrent/TimeUnit;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->trackerSession:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;

    .line 207
    :cond_0
    iget-object v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->updateLogLevel(Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;)V

    .line 208
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string v1, "Tracker created successfully."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void

    .line 195
    :cond_1
    iget v0, p1, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->threadCount:I

    goto :goto_0
.end method

.method private addEventPayload(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;->getSubject()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->addMap(Ljava/util/Map;)V

    .line 228
    invoke-direct {p0, p2}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->getFinalContext(Ljava/util/List;)Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;

    move-result-object v0

    .line 229
    const-string v1, "et"

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 233
    :cond_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string v1, "Adding new payload to event storage: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    invoke-virtual {v0, p1, p3}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->add(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/DataLoad;Z)V

    .line 235
    return-void
.end method

.method private getFinalContext(Ljava/util/List;)Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;",
            ">;)",
            "Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;"
        }
    .end annotation

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->sessionContext:Z

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->trackerSession:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;->getSessionContext()Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;->getSubjectLocation()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;

    const-string v1, "geolocation"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    .line 255
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;->getSubjectLocation()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;->getSubjectMobile()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;

    const-string v1, "mobileinfo"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    .line 260
    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;->getSubjectMobile()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 267
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;

    .line 268
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_3
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;

    const-string v2, "push_extra_info"

    invoke-direct {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/pushtracer/dataload/SelfDescribingJson;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getBase64Encoded()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->base64Encoded:Z

    return v0
.end method

.method public getDataCollection()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getEmitter()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    return-object v0
.end method

.method public getLogLevel()Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->level:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->trackerSession:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Session;

    return-object v0
.end method

.method public getSubject()Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    return-object v0
.end method

.method public getThreadCount()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->threadCount:I

    return v0
.end method

.method public getTrackerVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "3.8.2"

    return-object v0
.end method

.method public pauseEventTracking()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->pauseSessionChecking()V

    .line 314
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->getEmitter()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->shutdown()V

    .line 316
    :cond_0
    return-void
.end method

.method public abstract pauseSessionChecking()V
.end method

.method public restartEventTracking()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->getEmitter()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->flush()V

    goto :goto_0
.end method

.method public resumeEventTracking()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->resumeSessionChecking()V

    .line 325
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->getEmitter()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->flush()V

    .line 327
    :cond_0
    return-void
.end method

.method public abstract resumeSessionChecking()V
.end method

.method public setEmitter(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;)V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->getEmitter()Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;->shutdown()V

    .line 353
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    .line 354
    return-void
.end method

.method public setSubject(Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    .line 343
    return-void
.end method

.method public track(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;)V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->track(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;Z)V

    .line 294
    return-void
.end method

.method public track(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;Z)V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->dataCollection:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->getSelfDescribingJson()Ljava/util/List;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->getDataLoad()Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;

    move-result-object v1

    .line 288
    invoke-direct {p0, v1, v0, p2}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->addEventPayload(Lcom/meizu/cloud/pushsdk/pushtracer/dataload/TrackerDataload;Ljava/util/List;Z)V

    goto :goto_0
.end method
