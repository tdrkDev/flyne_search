.class public Lcom/inveno/se/biz/UidBiz;
.super Ljava/lang/Object;


# static fields
.field private static final REQUEST_UID_MAX_COUNT:I = 0x5

.field private static final UID:Ljava/lang/String; = "uid"

.field private static uidBiz:Lcom/inveno/se/biz/UidBiz;


# instance fields
.field private currentCount:I

.field private isRequesting:Z

.field private mContext:Landroid/content/Context;

.field private uid:Ljava/lang/String;

.field private uidLisenerList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/inveno/se/callback/UidLisener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/se/biz/UidBiz;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/inveno/se/biz/UidBiz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/inveno/se/biz/UidBiz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/biz/UidBiz;->uid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/inveno/se/biz/UidBiz;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inveno/se/biz/UidBiz;)I
    .locals 1

    iget v0, p0, Lcom/inveno/se/biz/UidBiz;->currentCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/inveno/se/biz/UidBiz;)I
    .locals 2

    iget v0, p0, Lcom/inveno/se/biz/UidBiz;->currentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inveno/se/biz/UidBiz;->currentCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/inveno/se/biz/UidBiz;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/inveno/se/biz/UidBiz;->requestZZUid(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$402(Lcom/inveno/se/biz/UidBiz;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/biz/UidBiz;->isRequesting:Z

    return p1
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/inveno/se/biz/UidBiz;
    .locals 2

    const-class v1, Lcom/inveno/se/biz/UidBiz;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/se/biz/UidBiz;->uidBiz:Lcom/inveno/se/biz/UidBiz;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/biz/UidBiz;

    invoke-direct {v0, p0}, Lcom/inveno/se/biz/UidBiz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/biz/UidBiz;->uidBiz:Lcom/inveno/se/biz/UidBiz;

    :cond_0
    sget-object v0, Lcom/inveno/se/biz/UidBiz;->uidBiz:Lcom/inveno/se/biz/UidBiz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private requestZZUid(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/inveno/se/biz/f;

    invoke-direct {v0, p0, p1}, Lcom/inveno/se/biz/f;-><init>(Lcom/inveno/se/biz/UidBiz;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/inveno/reportsdk/af;->a(Lcom/inveno/reportsdk/q;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/se/biz/UidBiz;->uidBiz:Lcom/inveno/se/biz/UidBiz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUid(Lcom/inveno/se/callback/UidLisener;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/inveno/se/biz/UidBiz;->isRequesting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inveno/se/biz/UidBiz;->isRequesting:Z

    invoke-direct {p0, p2}, Lcom/inveno/se/biz/UidBiz;->requestZZUid(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public hasUid()Z
    .locals 1

    invoke-static {}, Lcom/inveno/se/CustomController;->getUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/CustomController;->setUID(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iput-object v1, p0, Lcom/inveno/se/biz/UidBiz;->uidLisenerList:Ljava/util/Vector;

    :cond_0
    sput-object v1, Lcom/inveno/se/biz/UidBiz;->uidBiz:Lcom/inveno/se/biz/UidBiz;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/inveno/se/biz/UidBiz;->uid:Ljava/lang/String;

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/reportsdk/CommonParams;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inveno/reportsdk/CommonParams;->getInstance()Lcom/inveno/reportsdk/CommonParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/reportsdk/CommonParams;->setUid(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/model/MustParam;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/biz/UidBiz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/model/MustParam;->newInstance(Landroid/content/Context;)Lcom/inveno/se/model/MustParam;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/se/model/MustParam;->setUid(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
