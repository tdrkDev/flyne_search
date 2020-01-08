.class public final Lcom/loc/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

.field b:J

.field c:J

.field d:I

.field e:J

.field f:Lcom/amap/api/location/AMapLocation;

.field g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-wide v2, p0, Lcom/loc/ba;->b:J

    iput-wide v2, p0, Lcom/loc/ba;->c:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/ba;->h:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/ba;->d:I

    iput-wide v2, p0, Lcom/loc/ba;->e:J

    iput-object v1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    iput-wide v2, p0, Lcom/loc/ba;->g:J

    return-void
.end method

.method private b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 2

    invoke-static {p1}, Lcom/loc/ci;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/loc/ba;->h:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/by;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    iget v0, p0, Lcom/loc/ba;->d:I

    invoke-virtual {p1, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->setLocationType(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 5

    invoke-static {p1}, Lcom/loc/ci;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/ba;->g:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/loc/ba;->g:J

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    if-eq v0, v1, :cond_3

    const-string v0, "gps"

    iget-object v1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v2, v2, v0

    if-gez v2, :cond_5

    iput-object p1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    add-float/2addr v2, v3

    long-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-static {p1, v1}, Lcom/loc/ci;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    const v2, 0x453b8000    # 3000.0f

    add-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    iget-object p1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    goto/16 :goto_0

    :cond_6
    iput-object p1, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    goto/16 :goto_0
.end method

.method public final a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 12

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/ba;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->e:J

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->e:J

    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {v0}, Lcom/loc/ci;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/loc/ci;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()I

    move-result v0

    iget-object v1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->c()I

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getBuildingId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v0

    iput v0, p0, Lcom/loc/ba;->d:I

    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-static {p1, v0}, Lcom/loc/ci;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)F

    move-result v0

    iget-object v1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getAccuracy()F

    move-result v2

    sub-float v3, v2, v1

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/ba;->b:J

    sub-long v6, v4, v6

    const/high16 v8, 0x42ca0000    # 101.0f

    cmpg-float v8, v1, v8

    if-gez v8, :cond_8

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-gtz v8, :cond_9

    :cond_8
    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_c

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_c

    :cond_9
    iget-wide v0, p0, Lcom/loc/ba;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    iput-wide v4, p0, Lcom/loc/ba;->c:J

    :cond_a
    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/loc/ba;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_b
    iget-wide v0, p0, Lcom/loc/ba;->c:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    iput-wide v4, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_c
    const/high16 v8, 0x42c80000    # 100.0f

    cmpg-float v8, v2, v8

    if-gez v8, :cond_d

    const v8, 0x43958000    # 299.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_d

    iput-wide v4, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_d
    const v8, 0x43958000    # 299.0f

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_e

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/loc/ba;->c:J

    :cond_e
    const/high16 v8, 0x41200000    # 10.0f

    cmpg-float v8, v0, v8

    if-gez v8, :cond_11

    float-to-double v8, v0

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v8, v10

    if-lez v0, :cond_11

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_11

    const/high16 v0, -0x3c6a0000    # -300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/loc/ba;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_f
    div-float v0, v1, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_10

    iput-wide v4, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/loc/ba;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_11
    const/high16 v0, 0x43960000    # 300.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_13

    const-wide/16 v0, 0x7530

    cmp-long v0, v6, v0

    if-ltz v0, :cond_12

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    invoke-direct {p0, v0}, Lcom/loc/ba;->b(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    iput-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iget-object p1, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-object v2, p0, Lcom/loc/ba;->a:Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    iput-wide v0, p0, Lcom/loc/ba;->b:J

    iput-wide v0, p0, Lcom/loc/ba;->c:J

    iput-object v2, p0, Lcom/loc/ba;->f:Lcom/amap/api/location/AMapLocation;

    iput-wide v0, p0, Lcom/loc/ba;->g:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loc/ba;->h:Z

    return-void
.end method
