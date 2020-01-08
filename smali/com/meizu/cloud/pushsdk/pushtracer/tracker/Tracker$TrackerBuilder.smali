.class public Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackerBuilder"
.end annotation


# static fields
.field protected static defaultTrackerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final appId:Ljava/lang/String;

.field protected backgroundTimeout:J

.field protected base64Encoded:Z

.field protected final context:Landroid/content/Context;

.field protected final emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

.field protected foregroundTimeout:J

.field protected logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

.field protected final namespace:Ljava/lang/String;

.field protected sessionCheckInterval:J

.field protected sessionContext:Z

.field protected subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

.field protected threadCount:I

.field protected timeUnit:Ljava/util/concurrent/TimeUnit;

.field private trackerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 78
    sget-object v5, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->defaultTrackerClass:Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;-><init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    .line 62
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->base64Encoded:Z

    .line 63
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;->OFF:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .line 64
    iput-boolean v1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->sessionContext:Z

    .line 65
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->foregroundTimeout:J

    .line 66
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->backgroundTimeout:J

    .line 67
    const-wide/16 v0, 0xf

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->sessionCheckInterval:J

    .line 68
    const/16 v0, 0xa

    iput v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->threadCount:I

    .line 69
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 90
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->emitter:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/Emitter;

    .line 91
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->namespace:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->appId:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->context:Landroid/content/Context;

    .line 94
    iput-object p5, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->trackerClass:Ljava/lang/Class;

    .line 95
    return-void
.end method


# virtual methods
.method public backgroundTimeout(J)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 1

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->backgroundTimeout:J

    .line 149
    return-object p0
.end method

.method public base64(Ljava/lang/Boolean;)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->base64Encoded:Z

    .line 112
    return-object p0
.end method

.method public foregroundTimeout(J)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 1

    .prologue
    .line 139
    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->foregroundTimeout:J

    .line 140
    return-object p0
.end method

.method public level(Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->logLevel:Lcom/meizu/cloud/pushsdk/pushtracer/utils/LogLevel;

    .line 122
    return-object p0
.end method

.method public sessionCheckInterval(J)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 1

    .prologue
    .line 157
    iput-wide p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->sessionCheckInterval:J

    .line 158
    return-object p0
.end method

.method public sessionContext(Z)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->sessionContext:Z

    .line 131
    return-object p0
.end method

.method public subject(Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->subject:Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Subject;

    .line 103
    return-object p0
.end method

.method public threadCount(I)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 0

    .prologue
    .line 166
    iput p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->threadCount:I

    .line 167
    return-object p0
.end method

.method public timeUnit(Ljava/util/concurrent/TimeUnit;)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker$TrackerBuilder;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 176
    return-object p0
.end method
