.class public final Lcom/loc/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ck$c;,
        Lcom/loc/ck$a;,
        Lcom/loc/ck$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field a:Ljava/lang/String;

.field b:Lcom/loc/ck$b;

.field c:Lcom/amap/api/location/AMapLocation;

.field d:Lcom/loc/ck$a;

.field e:Landroid/content/Context;

.field f:Lcom/loc/aw;

.field g:Z

.field h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/loc/cf;

.field j:J

.field k:J

.field l:Ljava/lang/String;

.field m:Lcom/amap/api/location/AMapLocationClientOption;

.field n:Ljava/net/ServerSocket;

.field o:Z

.field p:Ljava/net/Socket;

.field q:Z

.field r:Lcom/loc/ck$c;

.field private s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field private x:J

.field private y:I

.field private z:Lcom/loc/cn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/loc/ck;->s:Z

    iput-boolean v2, p0, Lcom/loc/ck;->t:Z

    iput-object v1, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    iput-wide v4, p0, Lcom/loc/ck;->u:J

    iput-wide v4, p0, Lcom/loc/ck;->v:J

    iput-object v1, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-object v1, p0, Lcom/loc/ck;->c:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/ck;->x:J

    iput v2, p0, Lcom/loc/ck;->y:I

    iput-object v1, p0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    iput-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    iput-object v1, p0, Lcom/loc/ck;->z:Lcom/loc/cn;

    iput-object v1, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    iput-boolean v2, p0, Lcom/loc/ck;->g:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/ck;->h:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/loc/ck;->i:Lcom/loc/cf;

    iput-wide v4, p0, Lcom/loc/ck;->j:J

    iput-wide v4, p0, Lcom/loc/ck;->k:J

    iput-object v1, p0, Lcom/loc/ck;->l:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ck;->A:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/loc/ck;->B:Ljava/lang/String;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/ck;->m:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/loc/ck;->n:Ljava/net/ServerSocket;

    iput-boolean v2, p0, Lcom/loc/ck;->o:Z

    iput-object v1, p0, Lcom/loc/ck;->p:Ljava/net/Socket;

    iput-boolean v2, p0, Lcom/loc/ck;->q:Z

    iput-object v1, p0, Lcom/loc/ck;->r:Lcom/loc/ck$c;

    const-string v0, "jsonp1"

    iput-object v0, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    return-void
.end method

.method private static a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setErrorCode(I)V

    invoke-virtual {v0, p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationDetail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "newInstanceAMapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 1

    const/16 v0, 0xa

    invoke-static {v0, p0}, Lcom/loc/ck;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/loc/ck;Lcom/loc/cn;)Lcom/loc/cn;
    .locals 0

    iput-object p1, p0, Lcom/loc/ck;->z:Lcom/loc/cn;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/ck;->s:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    const-string v0, "optBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ck;->m:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ck;->s:Z

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/aw;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->a()V

    iget-object v0, p0, Lcom/loc/ck;->m:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {p0, v0}, Lcom/loc/ck;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/ck;->A:Z

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ck;->B:Ljava/lang/String;

    const-string v1, "APSServiceCore"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/by;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/loc/ck;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    :cond_0
    invoke-static {}, Lcom/loc/by;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/loc/ck$a;->sendEmptyMessage(I)Z

    :cond_1
    invoke-static {}, Lcom/loc/by;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/loc/by;->d()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/ck$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "checkConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/os/Messenger;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "sendMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "loc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "nb"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "originalLocType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/loc/ck;->h:Ljava/util/HashMap;

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/loc/ck;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    return-void
.end method

.method private a(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0, p1}, Lcom/loc/aw;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->isKillProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/loc/ck;->g:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "setExtra"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/ck;)V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/loc/ck;->y:I

    invoke-static {}, Lcom/loc/by;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/loc/ck;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/ck;->y:I

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->d()V

    iget-object v0, p0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/4 v1, 0x4

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/ck$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doGpsFusion"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/ck;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/loc/ck;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/loc/ck;Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/loc/ck;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/by;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/loc/aw;->g()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doCallOtherSer"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/ck;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/loc/ck;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ck;->t:Z

    invoke-direct {p0, p1}, Lcom/loc/ck;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/by;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/loc/aw;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/loc/ck;->a(Landroid/os/Messenger;)V

    iget-wide v0, p0, Lcom/loc/ck;->x:J

    invoke-static {v0, v1}, Lcom/loc/by;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    const-string v1, "isCacheLoc"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ck;->x:J

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->d()V

    :cond_2
    invoke-direct {p0}, Lcom/loc/ck;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doInitAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/ck;Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loc/ck;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/loc/ck;Ljava/net/Socket;)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget v3, Lcom/loc/bz;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-direct {p0, v2}, Lcom/loc/ck;->a(Ljava/io/BufferedReader;)V

    invoke-direct {p0}, Lcom/loc/ck;->c()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v1

    if-nez v1, :cond_3

    :try_start_3
    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':8,\'error\':\'unknown error\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v4, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/loc/ci;->d(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':36,\'error\':\'app is background\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result-object v0

    :cond_1
    :goto_2
    :try_start_4
    sput v3, Lcom/loc/bz;->e:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-direct {p0, v0}, Lcom/loc/ck;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "invoke part5"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "({\'package\':\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'error_code\':0,\'error\':\'\',\'location\':{\'y\':"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",\'precision\':"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",\'x\':"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "},\'version_code\':\'3.4.0\',\'version\':\'3.4.0\'})"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_9
    const-string v1, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v1, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_b
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    :goto_3
    :try_start_d
    throw v0

    :catch_4
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "({\'package\':\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'error_code\':1,\'error\':\'params error\'})"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "APSServiceCore"

    const-string v5, "invoke part2"

    invoke-static {v0, v4, v5}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    sput v3, Lcom/loc/bz;->e:I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1

    :try_start_10
    invoke-direct {p0, v2}, Lcom/loc/ck;->b(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    :try_start_12
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_0

    :catch_7
    move-exception v0

    :try_start_13
    const-string v2, "APSServiceCore"

    const-string v3, "invoke part3"

    invoke-static {v0, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    :try_start_15
    const-string v1, "APSServiceCore"

    const-string v2, "invoke part4"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    :goto_5
    :try_start_17
    throw v0

    :catch_9
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_6
    sput v3, Lcom/loc/bz;->e:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_1

    :try_start_18
    invoke-direct {p0, v1}, Lcom/loc/ck;->b(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_a

    :goto_7
    :try_start_1a
    throw v0

    :catch_a
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1

    goto :goto_7

    :catch_b
    move-exception v1

    :try_start_1b
    const-string v3, "APSServiceCore"

    const-string v4, "invoke part3"

    invoke-static {v1, v3, v4}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c

    goto :goto_7

    :catch_c
    move-exception v1

    :try_start_1d
    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d

    :goto_8
    :try_start_1f
    throw v0

    :catch_d
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part4"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1

    goto :goto_8

    :catchall_4
    move-exception v0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_6

    :catch_e
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_4

    :catch_f
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto/16 :goto_4

    :cond_3
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private a(Ljava/io/BufferedReader;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x7530

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-le v3, v7, :cond_3

    aget-object v2, v2, v7

    const-string v3, "\\?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    if-le v3, v7, :cond_3

    aget-object v2, v2, v7

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v2, v3

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    aget-object v4, v3, v0

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-le v5, v7, :cond_1

    const-string v5, "to"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v2, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    const-string v5, "callback"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    aget-object v4, v4, v7

    iput-object v4, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    sput v0, Lcom/loc/bz;->e:I

    return-void
.end method

.method private b(Landroid/os/Messenger;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aw;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/by;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ngpsAble"

    invoke-static {}, Lcom/loc/by;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/loc/ck;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/loc/by;->r()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "initAuth"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/ck;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    iget-wide v2, p0, Lcom/loc/ck;->u:J

    invoke-static {v0, v2, v3}, Lcom/loc/by;->a(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/ci;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ck;->u:J

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doNGps"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/loc/ck;Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ck;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/16 v6, 0x320

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/loc/ck;->A:Z

    if-nez v0, :cond_2

    const/16 v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/ck;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/ck;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/loc/ck;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "optBundle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bz;->a(Landroid/os/Bundle;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/loc/ck;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_6

    iget-wide v8, p0, Lcom/loc/ck;->v:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x258

    cmp-long v0, v4, v8

    if-gez v0, :cond_6

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v2, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/loc/ck;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;I)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/loc/ck;->b(Landroid/os/Messenger;)V

    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/by;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/loc/ck;->a(Landroid/os/Messenger;)V

    :cond_3
    iget-wide v2, p0, Lcom/loc/ck;->x:J

    invoke-static {v2, v3}, Lcom/loc/by;->a(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_4

    if-ne v1, v10, :cond_5

    :cond_4
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ck;->x:J

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->d()V

    :cond_5
    invoke-direct {p0}, Lcom/loc/ck;->d()V

    goto/16 :goto_0

    :cond_6
    new-instance v7, Lcom/loc/ce;

    invoke-direct {v7}, Lcom/loc/ce;-><init>()V

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/loc/ce;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v1

    :cond_7
    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v7, v0}, Lcom/loc/ce;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v4

    :cond_8
    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    iget-object v2, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v0, v2, v8}, Lcom/loc/aw;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;[Ljava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setTime(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v1

    :goto_2
    :try_start_3
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/loc/ce;->b(J)V

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ck;->v:J

    :cond_9
    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-nez v0, :cond_a

    const/16 v0, 0x8

    const-string v1, "loc is null"

    invoke-static {v0, v1}, Lcom/loc/ck;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_a
    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :cond_b
    iget-object v0, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {v6}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/loc/ck;->z:Lcom/loc/cn;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/loc/ck;->z:Lcom/loc/cn;

    iget-object v4, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1, v4, v3}, Lcom/loc/cn;->b(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    :cond_c
    :goto_3
    :try_start_5
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/loc/ck;->a(Landroid/os/Messenger;Lcom/amap/api/location/AMapLocation;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/loc/cf;->a(Landroid/content/Context;Lcom/loc/ce;)V

    move v1, v2

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v2, 0x0

    const/16 v4, 0x821

    invoke-static {v2, v4}, Lcom/loc/cf;->a(Ljava/lang/String;I)V

    const/16 v2, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "loc error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/loc/ck;->a(ILjava/lang/String;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-string v2, "APSServiceCore"

    const-string v4, "run part2"

    invoke-static {v0, v2, v4}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v4, "APSServiceCore"

    const-string v5, "fixLastLocation"

    invoke-static {v1, v4, v5}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/loc/ck;->p:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "UTF-8"

    invoke-direct {v0, v1, v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    const-string v1, "HTTP/1.0 200 OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content-Length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/ci;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v1}, Lcom/loc/aw;->c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    iput-object v1, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object v1, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/ck;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "({\'package\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/ck;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'error_code\':"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'error\':\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/ck;->w:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "APSServiceCore"

    const-string v3, "invoke part1"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "startColl"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->p:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ck;->p:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/ck;->n:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ck;->n:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/ck;->r:Lcom/loc/ck$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/ck;->r:Lcom/loc/ck$c;

    invoke-virtual {v0}, Lcom/loc/ck$c;->interrupt()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iput-object v4, p0, Lcom/loc/ck;->r:Lcom/loc/ck$c;

    iput-object v4, p0, Lcom/loc/ck;->n:Ljava/net/ServerSocket;

    iput-boolean v3, p0, Lcom/loc/ck;->o:Z

    iput-boolean v3, p0, Lcom/loc/ck;->q:Z

    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doStopScocket 1"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doStopScocket 2"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method final a(Landroid/os/Messenger;Landroid/os/Bundle;)V
    .locals 10

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/loc/by;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lat"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "lon"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/ck;->c:Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v6, 0x0

    aput-wide v2, v0, v6

    const/4 v6, 0x1

    aput-wide v4, v0, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/loc/ck;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/loc/ck;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v0, v6

    invoke-static {v0}, Lcom/loc/ci;->a([D)F

    move-result v0

    invoke-static {}, Lcom/loc/by;->z()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v6, v0, v6

    if-gez v6, :cond_2

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-class v7, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v7, "lMaxGeoDis"

    invoke-static {}, Lcom/loc/by;->z()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "lMinGeoDis"

    invoke-static {}, Lcom/loc/by;->z()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "loc"

    iget-object v8, p0, Lcom/loc/ck;->c:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v7, 0x6

    invoke-static {p1, v7, v6}, Lcom/loc/ck;->a(Landroid/os/Messenger;ILandroid/os/Bundle;)V

    :cond_2
    :goto_1
    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/loc/by;->z()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loc/ck;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/loc/aw;->a(DD)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ck;->c:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "doLocationGeo"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 8

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/ck;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ck;->h:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/aw;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/ck$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x12

    if-lt v0, v1, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cc;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    iget-object v0, p0, Lcom/loc/ck;->z:Lcom/loc/cn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/ck;->z:Lcom/loc/cn;

    invoke-virtual {v0}, Lcom/loc/cn;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ck;->z:Lcom/loc/cn;

    :cond_3
    invoke-virtual {p0}, Lcom/loc/ck;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ck;->s:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/ck;->t:Z

    iget-object v0, p0, Lcom/loc/ck;->f:Lcom/loc/aw;

    invoke-virtual {v0}, Lcom/loc/aw;->e()V

    iget-object v0, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cf;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/ck;->i:Lcom/loc/cf;

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/loc/ck;->j:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/loc/ck;->k:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/ck;->j:J

    sub-long v6, v0, v2

    iget-object v0, p0, Lcom/loc/ck;->i:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cf;->c(Landroid/content/Context;)I

    move-result v2

    iget-object v0, p0, Lcom/loc/ck;->i:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cf;->d(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    iget-wide v4, p0, Lcom/loc/ck;->k:J

    invoke-static/range {v1 .. v7}, Lcom/loc/cf;->a(Landroid/content/Context;IIJJ)V

    iget-object v0, p0, Lcom/loc/ck;->i:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/ck;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cf;->e(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/loc/df;->a()V

    iget-boolean v0, p0, Lcom/loc/ck;->g:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    invoke-virtual {v0}, Lcom/loc/ck$b;->quit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSServiceCore"

    const-string v2, "threadDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    :try_start_3
    iget-object v0, p0, Lcom/loc/ck;->b:Lcom/loc/ck$b;

    invoke-virtual {v0}, Lcom/loc/ck$b;->quit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
