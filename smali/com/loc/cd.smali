.class public Lcom/loc/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/cd$a;,
        Lcom/loc/cd$b;,
        Lcom/loc/cd$c;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Landroid/content/ServiceConnection;

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field public b:Lcom/loc/cd$c;

.field c:Lcom/loc/cm;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/loc/a;

.field f:Z

.field public g:Z

.field public h:Z

.field i:Lcom/loc/cn;

.field j:Landroid/os/Messenger;

.field k:Landroid/os/Messenger;

.field l:Landroid/content/Intent;

.field m:I

.field n:Lcom/loc/cd$b;

.field o:Z

.field p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field q:Ljava/lang/Object;

.field r:Lcom/loc/cf;

.field s:Lcom/loc/ck;

.field t:Ljava/lang/String;

.field u:Z

.field v:Lcom/loc/cd$a;

.field w:Ljava/lang/String;

.field private x:Landroid/content/Context;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, p0, Lcom/loc/cd;->c:Lcom/loc/cm;

    iput-boolean v2, p0, Lcom/loc/cd;->y:Z

    iput-boolean v2, p0, Lcom/loc/cd;->z:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/loc/cd;->f:Z

    iput-boolean v3, p0, Lcom/loc/cd;->g:Z

    iput-boolean v3, p0, Lcom/loc/cd;->h:Z

    iput-object v1, p0, Lcom/loc/cd;->j:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/cd;->k:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    iput v2, p0, Lcom/loc/cd;->m:I

    iput v2, p0, Lcom/loc/cd;->A:I

    iput-boolean v3, p0, Lcom/loc/cd;->B:Z

    iput-object v1, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    iput-boolean v2, p0, Lcom/loc/cd;->o:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/loc/cd;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->q:Ljava/lang/Object;

    iput-object v1, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    iput-object v1, p0, Lcom/loc/cd;->s:Lcom/loc/ck;

    iput-object v1, p0, Lcom/loc/cd;->t:Ljava/lang/String;

    new-instance v0, Lcom/loc/cd$1;

    invoke-direct {v0, p0}, Lcom/loc/cd$1;-><init>(Lcom/loc/cd;)V

    iput-object v0, p0, Lcom/loc/cd;->C:Landroid/content/ServiceConnection;

    iput-boolean v2, p0, Lcom/loc/cd;->u:Z

    iput-object v1, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    iput-object v1, p0, Lcom/loc/cd;->w:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    invoke-static {}, Lcom/loc/bz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/bz;->b()Lcom/loc/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/cg;->a(Landroid/content/Context;Lcom/loc/cy;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/loc/cd$c;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/cd$c;-><init>(Lcom/loc/cd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/cd;->b:Lcom/loc/cd$c;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    new-instance v0, Lcom/loc/cn;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/cn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/cd;->i:Lcom/loc/cn;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    new-instance v0, Lcom/loc/cd$b;

    const-string v1, "amapLocManagerThread"

    invoke-direct {v0, v1, p0}, Lcom/loc/cd$b;-><init>(Ljava/lang/String;Lcom/loc/cd;)V

    iput-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    iget-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/loc/cd$b;->setPriority(I)V

    iget-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    invoke-virtual {v0}, Lcom/loc/cd$b;->start()V

    iget-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    invoke-virtual {v0}, Lcom/loc/cd$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/cd;->a(Landroid/os/Looper;)Lcom/loc/cd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    new-instance v0, Lcom/loc/cm;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cd;->b:Lcom/loc/cd$c;

    invoke-direct {v0, v1, v2}, Lcom/loc/cm;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/cd;->c:Lcom/loc/cm;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    iget-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    if-nez v0, :cond_1

    new-instance v0, Lcom/loc/cf;

    invoke-direct {v0}, Lcom/loc/cf;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    :cond_1
    return-void

    :cond_2
    :try_start_5
    new-instance v0, Lcom/loc/cd$c;

    invoke-direct {v0, p0}, Lcom/loc/cd$c;-><init>(Lcom/loc/cd;)V

    iput-object v0, p0, Lcom/loc/cd;->b:Lcom/loc/cd$c;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 1"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string v1, "AMapLocationManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 5"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 3"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private a(Lcom/loc/aw;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 3

    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/loc/aw;->i()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doFirstCacheLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/os/Looper;)Lcom/loc/cd$a;
    .locals 2

    iget-object v1, p0, Lcom/loc/cd;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/loc/cd$a;

    invoke-direct {v0, p0, p1}, Lcom/loc/cd$a;-><init>(Lcom/loc/cd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    iget-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/loc/cd;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bz;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->t:Ljava/lang/String;

    :cond_1
    const-string v0, "c"

    iget-object v1, p0, Lcom/loc/cd;->t:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/loc/cd;->k:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/cd;->j:Landroid/os/Messenger;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/loc/cd;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "sendLocMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 3

    iget-object v1, p0, Lcom/loc/cd;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    invoke-virtual {v2, v0, p3, p4}, Lcom/loc/cd$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/loc/bz;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    const-string v1, "loc"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/cg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    const-string v1, "loc"

    const-string v2, "amaplocation is null"

    invoke-static {v0, v1, v2}, Lcom/loc/cg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    :try_start_1
    new-instance p1, Lcom/amap/api/location/AMapLocation;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v0, "amapLocation is null"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    :cond_3
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lcom/loc/cd;->z:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    iget-object v0, p0, Lcom/loc/cd;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    invoke-virtual {v1, p1, v0}, Lcom/loc/cn;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3f6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    :cond_5
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    iget v1, p0, Lcom/loc/cd;->A:I

    invoke-static {v0, v1, p1}, Lcom/loc/cf;->a(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    iget v1, p0, Lcom/loc/cd;->A:I

    invoke-static {v0, v1, p1}, Lcom/loc/cf;->b(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/loc/cd;->c:Lcom/loc/cm;

    invoke-virtual {v0}, Lcom/loc/cm;->c()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/ci;->b(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/loc/ci;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/loc/ci;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    iget-boolean v0, p0, Lcom/loc/cd;->o:Z

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/loc/bz;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cg;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/cd;->g()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method static synthetic a(Lcom/loc/cd;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/by;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-static {}, Lcom/loc/by;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/loc/by;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/loc/by;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/cd$2;

    invoke-direct {v3, p0}, Lcom/loc/cd$2;-><init>(Lcom/loc/cd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {}, Lcom/loc/by;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/cd$3;

    invoke-direct {v3, p0}, Lcom/loc/cd$3;-><init>(Lcom/loc/cd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/loc/cd;->e()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/loc/cd;->e()V

    const-string v1, "AMapLocationManager"

    const-string v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/loc/cd;Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-class v0, Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    const-string v2, "originalLocType"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/loc/cd;->A:I

    const-string v2, "nb"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/cd;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/loc/cd;->c:Lcom/loc/cm;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/loc/cd;->c:Lcom/loc/cm;

    iput-object v0, v2, Lcom/loc/cm;->n:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/loc/cd;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "AMapLocationManager"

    const-string v3, "doLbsLocationSuccess"

    invoke-static {v0, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/cd;Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    iput v1, p0, Lcom/loc/cd;->A:I

    :cond_0
    iget-boolean v1, p0, Lcom/loc/cd;->h:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/cd;->j:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "optBundle"

    iget-object v3, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/loc/bz;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/loc/cd;->h:Z

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/cd;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V

    iget-boolean v0, p0, Lcom/loc/cd;->B:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doGpsLocationSuccess"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/loc/cd;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/loc/cd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/cd;->y:Z

    return p1
.end method

.method private b(Lcom/loc/aw;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/loc/ce;

    invoke-direct {v5}, Lcom/loc/ce;-><init>()V

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/loc/ce;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/loc/cr;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/loc/ct;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/loc/aw;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {p1, v0}, Lcom/loc/aw;->a(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/loc/aw;->h()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-direct {p0, p1}, Lcom/loc/cd;->a(Lcom/loc/aw;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-nez v2, :cond_9

    :try_start_5
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bz;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ci;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "http://abroad.apilocate.amap.com/mobile/binary"

    sput-object v0, Lcom/loc/bz;->a:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_3
    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p1, v0}, Lcom/loc/aw;->a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    :goto_4
    :try_start_7
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/loc/ce;->b(J)V

    invoke-virtual {v5, v2}, Lcom/loc/ce;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :goto_5
    :try_start_8
    iget-object v4, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    invoke-virtual {v4, v2, v0}, Lcom/loc/cn;->b(Lcom/amap/api/location/AMapLocation;Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    :goto_6
    :try_start_9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_7

    const-string v6, "originalLocType"

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "loc"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "nb"

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/loc/cd;->b:Lcom/loc/cd$c;

    invoke-virtual {v4, v0}, Lcom/loc/cd$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_8
    :try_start_a
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/loc/cf;->a(Landroid/content/Context;Lcom/loc/ce;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :try_start_b
    invoke-virtual {p1, v0}, Lcom/loc/aw;->a(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v1

    :goto_9
    :try_start_c
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    :try_start_d
    invoke-virtual {p1, v1}, Lcom/loc/aw;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_3
    :goto_a
    if-eqz p1, :cond_4

    :try_start_e
    invoke-virtual {p1}, Lcom/loc/aw;->e()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_c

    :cond_4
    :goto_b
    return-object v2

    :catch_0
    move-exception v0

    :try_start_f
    const-string v2, "AMapLocationManager"

    const-string v6, "apsLocation setAuthKey"

    invoke-static {v0, v2, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_c
    :try_start_10
    const-string v1, "AMapLocationManager"

    const-string v3, "apsLocation"

    invoke-static {v0, v1, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz p1, :cond_4

    :try_start_11
    invoke-virtual {p1}, Lcom/loc/aw;->e()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    :try_start_12
    const-string v2, "AMapLocationManager"

    const-string v6, "apsLocation setUmidToken"

    invoke-static {v0, v2, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    :try_start_13
    invoke-virtual {p1}, Lcom/loc/aw;->e()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d

    :cond_5
    :goto_d
    throw v0

    :catch_4
    move-exception v0

    :try_start_14
    const-string v2, "AMapLocationManager"

    const-string v6, "initApsBase"

    invoke-static {v0, v2, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_2

    :catch_5
    move-exception v0

    :try_start_15
    const-string v4, "AMapLocationManager"

    const-string v6, "checkUrl"

    invoke-static {v0, v4, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_6
    move-exception v0

    goto :goto_c

    :catch_7
    move-exception v0

    const-string v4, "AMapLocationManager"

    const-string v6, "apsLocation:doFirstNetLocate"

    invoke-static {v0, v4, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_8
    move-exception v0

    const-string v4, "AMapLocationManager"

    const-string v6, "fixLastLocation"

    invoke-static {v0, v4, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_6
    move-object v0, v2

    goto/16 :goto_6

    :cond_7
    :try_start_16
    const-string v0, "originalLocType"

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_7

    :catch_9
    move-exception v0

    :try_start_17
    const-string v4, "AMapLocationManager"

    const-string v6, "apsLocation:callback"

    invoke-static {v0, v4, v6}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_a
    move-exception v0

    const-string v3, "AMapLocationManager"

    const-string v4, "apsLocation:doFirstNetLocate 2"

    invoke-static {v0, v3, v4}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_b
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v3, "apsLocation:doFirstAddCache"

    invoke-static {v0, v1, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_a

    :catch_c
    move-exception v0

    goto :goto_b

    :catch_d
    move-exception v1

    goto :goto_d

    :cond_8
    move-object v0, v1

    goto/16 :goto_5

    :cond_9
    move v3, v4

    goto/16 :goto_4
.end method

.method static synthetic b(Lcom/loc/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/cd;->e()V

    return-void
.end method

.method static synthetic b(Lcom/loc/cd;Landroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic b(Lcom/loc/cd;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/cd;->g()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/loc/cd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/loc/cd;->B:Z

    return p1
.end method

.method private c()V
    .locals 3

    iget-object v1, p0, Lcom/loc/cd;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    const/16 v2, 0x3f8

    invoke-virtual {v0, v2}, Lcom/loc/cd$a;->removeMessages(I)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/loc/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/cd;->f()V

    return-void
.end method

.method static synthetic d(Lcom/loc/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/loc/cd;->g()V

    return-void
.end method

.method private d()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v2, v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/loc/cd;->j:Landroid/os/Messenger;

    if-nez v3, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/loc/cd;->j:Landroid/os/Messenger;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/amap/api/location/AMapLocation;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1\uff0c\u5e76\u4e14manifest\u4e2dservice\u6807\u7b7e\u662f\u5426\u914d\u7f6e\u5728application\u6807\u7b7e\u5185"

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-string v4, "loc"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/loc/cd;->b:Lcom/loc/cd$c;

    invoke-virtual {v2, v1}, Lcom/loc/cd$c;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "checkAPSManager"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/loc/by;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/loc/by;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/loc/by;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/loc/cd;)V
    .locals 4

    const/16 v0, 0x3f8

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method private f()V
    .locals 7

    const/16 v6, 0x3f8

    const/16 v5, 0x3f7

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-boolean v2, p0, Lcom/loc/cd;->z:Z

    if-eqz v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/loc/cd;->z:Z

    sget-object v2, Lcom/loc/cd$4;->a:[I

    iget-object v3, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x3f9

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    invoke-direct {p0, v6, v4, v0, v1}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/loc/cd;->c()V

    invoke-direct {p0, v5, v4, v0, v1}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x7530

    :cond_2
    invoke-direct {p0, v6, v4, v0, v1}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic f(Lcom/loc/cd;)V
    .locals 5

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/cd;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cd;->g:Z

    new-instance v0, Lcom/loc/aw;

    invoke-direct {v0}, Lcom/loc/aw;-><init>()V

    invoke-direct {p0, v0}, Lcom/loc/cd;->b(Lcom/loc/aw;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    invoke-direct {p0}, Lcom/loc/cd;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "0"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    const-string v0, "1"

    :cond_1
    const-string v1, "optBundle"

    iget-object v3, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v3}, Lcom/loc/bz;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "isCacheLoc"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/loc/cd;->h()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_1
    return-void

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/loc/cd;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/loc/bz;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/loc/cd;->c:Lcom/loc/cm;

    invoke-virtual {v1}, Lcom/loc/cm;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "AMapLocationManager"

    const-string v2, "doLBSLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/loc/cd;->h()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/loc/cd;->h()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private g()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->c:Lcom/loc/cm;

    invoke-virtual {v0}, Lcom/loc/cm;->a()V

    invoke-direct {p0}, Lcom/loc/cd;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cd;->z:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/cd;->m:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/loc/cd;)V
    .locals 3

    iget-object v0, p0, Lcom/loc/cd;->c:Lcom/loc/cm;

    iget-object v1, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, v0, Lcom/loc/cm;->c:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, v0, Lcom/loc/cm;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v1, v0, Lcom/loc/cm;->c:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-object v1, v0, Lcom/loc/cm;->c:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/loc/cm;->a:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/loc/cm;->a:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/loc/cd;->z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cd;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/loc/cd;->g()V

    invoke-direct {p0}, Lcom/loc/cd;->f()V

    :cond_2
    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cd;->p:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/loc/cf;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1, v2}, Lcom/loc/cf;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/cf;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private h()V
    .locals 6

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x3f8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    :goto_0
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/loc/cd;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->j:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/cd;->m:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/loc/bz;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/loc/cd;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/cd;->m:I

    iget v0, p0, Lcom/loc/cd;->m:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/loc/cd;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "optBundle"

    iget-object v2, p0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-static {v2}, Lcom/loc/bz;->b(Lcom/amap/api/location/AMapLocationClientOption;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v0, 0xc

    invoke-direct {p0, v0, v4}, Lcom/loc/cd;->a(ILandroid/os/Bundle;)V

    iput-boolean v2, p0, Lcom/loc/cd;->g:Z

    iput-boolean v2, p0, Lcom/loc/cd;->h:Z

    iput-boolean v1, p0, Lcom/loc/cd;->y:Z

    invoke-direct {p0}, Lcom/loc/cd;->g()V

    iget-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cd;->r:Lcom/loc/cf;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/loc/cf;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cf;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->removeGeoFence()V

    :cond_1
    iget-object v0, p0, Lcom/loc/cd;->s:Lcom/loc/ck;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/cd;->s:Lcom/loc/ck;

    iget-object v0, v0, Lcom/loc/ck;->d:Lcom/loc/ck$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/loc/cd;->d:Ljava/util/ArrayList;

    :cond_3
    iput-object v4, p0, Lcom/loc/cd;->C:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/loc/cd;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/loc/cd$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cd;->v:Lcom/loc/cd$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    :try_start_1
    iget-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/loc/cc;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    iput-object v4, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    iget-object v0, p0, Lcom/loc/cd;->b:Lcom/loc/cd$c;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/cd;->b:Lcom/loc/cd$c;

    invoke-virtual {v0, v4}, Lcom/loc/cd$c;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    invoke-virtual {v0}, Lcom/loc/cn;->b()V

    iput-object v4, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/loc/cd;->C:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/cd;->C:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    invoke-virtual {v0}, Lcom/loc/cd$b;->quit()Z

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/loc/cd;->n:Lcom/loc/cd$b;

    invoke-virtual {v0}, Lcom/loc/cd$b;->quit()Z

    goto :goto_1
.end method

.method final a(Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/cd;->C:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/a;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/loc/a;->setActivateAction(I)V

    :cond_0
    new-instance v2, Lcom/amap/api/location/DPoint;

    invoke-direct {v2, p2, p3, p4, p5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    iget-object v1, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    const/4 v4, 0x0

    move/from16 v3, p6

    move-object v5, p1

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lcom/loc/a;->addRoundGeoFence(Lcom/amap/api/location/DPoint;FLjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "addGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final b()Landroid/content/Intent;
    .locals 4

    iget-object v0, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    const-class v2, Lcom/amap/api/location/APSService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    :cond_0
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    const-string v2, "a"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    const-string v1, "b"

    iget-object v2, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/cq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    const-string v1, "d"

    invoke-static {}, Lcom/amap/api/location/UmidtokenInfo;->getUmidtoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/cd;->l:Landroid/content/Intent;

    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/loc/cd;->x:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/cq;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "startServiceImpl p2"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/cd;->i:Lcom/loc/cn;

    iget-object v2, v1, Lcom/loc/cn;->b:Lcom/loc/bq;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/loc/cn;->d()Lcom/loc/bq;

    move-result-object v2

    iput-object v2, v1, Lcom/loc/cn;->b:Lcom/loc/bq;

    :cond_0
    iget-object v2, v1, Lcom/loc/cn;->b:Lcom/loc/bq;

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v2, v1, Lcom/loc/cn;->b:Lcom/loc/bq;

    invoke-virtual {v2}, Lcom/loc/bq;->a()Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/ci;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/loc/cn;->b:Lcom/loc/bq;

    invoke-virtual {v1}, Lcom/loc/bq;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loc/cd;->y:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    const/16 v0, 0x3f3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cd;->o:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    invoke-virtual {v0, p1}, Lcom/loc/a;->a(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 2"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cd;->e:Lcom/loc/a;

    invoke-virtual {v0, p1, p2}, Lcom/loc/a;->a(Landroid/app/PendingIntent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 1"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ea

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 4

    const/16 v0, 0x3fa

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 4

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 4

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 4

    const/16 v0, 0x3f1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ed

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/loc/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
