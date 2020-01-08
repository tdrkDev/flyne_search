.class public final Lcom/loc/cf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/loc/at;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lorg/json/JSONArray;


# instance fields
.field public a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:J

.field d:[Ljava/lang/String;

.field public e:I

.field public f:J

.field g:Z

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/loc/az;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/cf;->h:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iput v3, p0, Lcom/loc/cf;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/cf;->c:J

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ol"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ha"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ds"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    iput v3, p0, Lcom/loc/cf;->e:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/loc/cf;->f:J

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    iput-boolean v4, p0, Lcom/loc/cf;->g:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/by;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/loc/cf;->h:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/loc/cf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/loc/cf;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p0}, Lcom/loc/au;->a(Ljava/util/List;Landroid/content/Context;)V

    sget-object v0, Lcom/loc/cf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    invoke-static {p0}, Lcom/loc/cf;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;IIJJ)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "O012"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {}, Lcom/loc/by;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "param_int_first"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "param_int_second"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "param_long_first"

    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "param_long_second"

    invoke-virtual {v1, v2, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p0, v0, v1}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ReportUtil"

    const-string v2, "applyStatisticsEx"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "reportServiceAliveTime"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "net"

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :cond_0
    :pswitch_1
    move v1, v2

    :goto_2
    if-eqz v1, :cond_1

    const-string v1, "O005"

    invoke-static {p0, v1, v3, v0}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :pswitch_2
    const-string v0, "cache"

    move v2, v1

    goto :goto_1

    :pswitch_3
    const-string v0, "net"

    move v2, v1

    goto :goto_1

    :pswitch_4
    const-string v0, "net"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "reportBatting"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/by;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    const-string v1, "O004"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "reportGPSLocUseTime"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/loc/ce;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/by;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/loc/ce;->c()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v4

    invoke-virtual {p1}, Lcom/loc/ce;->a()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/loc/ce;->b()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v5

    const-string v0, "net"

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->j()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-virtual {v4}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "param_int_first"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "param_int_second"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "O003"

    invoke-static {p0, v2, v1}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    const-string v1, "O002"

    invoke-static {p0, v1, v5, v0}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "reportLBSLocUseTime"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    move v2, v1

    goto :goto_1

    :pswitch_2
    :try_start_1
    const-string v0, "cache"

    move v1, v2

    goto :goto_1

    :pswitch_3
    const-string v0, "net"
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string v0, "O010"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "reportDex_dexFunction"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    const-string v0, "O009"

    invoke-static {p0, v0, p2, p1}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "reportDex_dexLoadClass"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/by;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "param_string_first"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const v1, 0x7fffffff

    if-eq p2, v1, :cond_3

    const-string v1, "param_int_first"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    invoke-static {p0, p1, v0}, Lcom/loc/cf;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "applyStatisticsEx"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/loc/by;->o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/loc/at;

    const-string v1, "loc"

    const-string v2, "3.4.0"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/loc/at;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/at;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/loc/cf;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/loc/cf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/loc/cf;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0, p0}, Lcom/loc/au;->a(Ljava/util/List;Landroid/content/Context;)V

    sget-object v0, Lcom/loc/cf;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "applyStatistics"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-static {p0, v1, v0}, Lcom/loc/cf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string v0, "ContextIsNull"

    goto :goto_0

    :sswitch_1
    const-string v0, "OnlyMainWifi"

    goto :goto_0

    :sswitch_2
    const-string v0, "OnlyOneWifiButNotMain"

    goto :goto_0

    :sswitch_3
    const-string v0, "CreateApsReqException"

    goto :goto_0

    :sswitch_4
    const-string v0, "ResponseResultIsNull"

    goto :goto_0

    :sswitch_5
    const-string v0, "NeedLoginNetWork\t"

    goto :goto_0

    :sswitch_6
    const-string v0, "MaybeIntercepted"

    goto :goto_0

    :sswitch_7
    const-string v0, "DecryptResponseException"

    goto :goto_0

    :sswitch_8
    const-string v0, "ParserDataException"

    goto :goto_0

    :sswitch_9
    const-string v0, "ServerRetypeError"

    goto :goto_0

    :sswitch_a
    const-string v0, "ServerLocFail"

    goto :goto_0

    :sswitch_b
    const-string v0, "LocalLocException"

    goto :goto_0

    :sswitch_c
    const-string v0, "InitException"

    goto :goto_0

    :sswitch_d
    const-string v0, "BindAPSServiceException"

    goto :goto_0

    :sswitch_e
    const-string v0, "AuthClientScodeFail"

    goto :goto_0

    :sswitch_f
    const-string v0, "ErrorCgiInfo"

    goto :goto_0

    :sswitch_10
    const-string v0, "NotLocPermission"

    goto :goto_0

    :sswitch_11
    const-string v0, "NoCgiOrWifiInfo"

    goto :goto_0

    :sswitch_12
    const-string v0, "NoEnoughStatellites"

    goto :goto_0

    :sswitch_13
    const-string v0, "MaybeMockNetLoc"

    goto :goto_0

    :sswitch_14
    const-string v0, "MaybeMockGPSLoc"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7e5 -> :sswitch_1
        0x7e6 -> :sswitch_2
        0x7ef -> :sswitch_3
        0x7f9 -> :sswitch_4
        0x803 -> :sswitch_5
        0x804 -> :sswitch_6
        0x805 -> :sswitch_7
        0x806 -> :sswitch_8
        0x80d -> :sswitch_9
        0x80e -> :sswitch_a
        0x821 -> :sswitch_b
        0x82b -> :sswitch_c
        0x835 -> :sswitch_d
        0x836 -> :sswitch_e
        0x83f -> :sswitch_f
        0x849 -> :sswitch_10
        0x853 -> :sswitch_11
        0x85d -> :sswitch_12
        0x867 -> :sswitch_13
        0x868 -> :sswitch_14
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/loc/bz;->b()Lcom/loc/cy;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/loc/df;->b(Lcom/loc/cy;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "reportLog"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/loc/bz;->b()Lcom/loc/cy;

    move-result-object v0

    const-string v1, "/mobile/binary"

    invoke-static {v0, v1, p2, p0, p1}, Lcom/loc/df;->a(Lcom/loc/cy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    instance-of v0, p1, Lcom/loc/cp;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/loc/bz;->b()Lcom/loc/cy;

    move-result-object v0

    check-cast p1, Lcom/loc/cp;

    invoke-static {v0, p0, p1}, Lcom/loc/df;->a(Lcom/loc/cy;Ljava/lang/String;Lcom/loc/cp;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/loc/cy;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/s;->a(Landroid/content/Context;Lcom/loc/cy;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    sget-object v1, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sput-object v1, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lon"

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lat"

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "timestamp"

    invoke-static {}, Lcom/loc/ci;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    sget-object v0, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    sput-object v0, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {}, Lcom/loc/by;->p()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/loc/cf;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    move v1, v0

    goto :goto_0

    :pswitch_2
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "recordOfflineLocLog"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static f(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/loc/bz;->b()Lcom/loc/cy;

    move-result-object v0

    new-instance v1, Lcom/loc/ar;

    sget-object v2, Lcom/loc/cf;->i:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/loc/ar;-><init>(Landroid/content/Context;Lcom/loc/cy;Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/loc/as;->a(Lcom/loc/ar;Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/cf;->i:Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "writeOfflineLocLog"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cf;->g:Z

    iget-object v0, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 6

    :try_start_0
    iget v0, p0, Lcom/loc/cf;->b:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/loc/cf;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/loc/cf;->b:I

    if-eq v0, p2, :cond_1

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/cf;->c:J

    sub-long v2, v0, v2

    iget-object v0, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v1, p0, Lcom/loc/cf;->b:I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v5, p0, Lcom/loc/cf;->b:I

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    const-string v0, "pref"

    iget-object v1, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v2

    sub-long v0, v2, v0

    iput-wide v0, p0, Lcom/loc/cf;->c:J

    iput p2, p0, Lcom/loc/cf;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "setLocationType"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 8

    const/4 v2, -0x1

    :try_start_0
    sget-object v0, Lcom/loc/cf$1;->a:[I

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v1, v2

    :goto_0
    iget v0, p0, Lcom/loc/cf;->e:I

    if-ne v0, v1, :cond_0

    :goto_1
    return-void

    :pswitch_0
    const/4 v0, 0x4

    move v1, v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    move v1, v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/loc/cf;->e:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/loc/cf;->e:I

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/cf;->f:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v4, p0, Lcom/loc/cf;->e:I

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v6, p0, Lcom/loc/cf;->e:I

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    const-string v0, "pref"

    iget-object v2, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-wide/16 v4, 0x0

    invoke-static {p1, v0, v2, v4, v5}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/loc/cf;->f:J

    iput v1, p0, Lcom/loc/cf;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "setLocationMode"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/loc/cf;->g:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/loc/cf;->g:Z

    :cond_0
    new-instance v0, Lcom/loc/az;

    invoke-direct {v0, p1, v1}, Lcom/loc/az;-><init>(Lcom/amap/api/location/AMapLocation;I)V

    iget-object v1, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iput-boolean v3, p0, Lcom/loc/cf;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v0, Lcom/loc/az;

    invoke-direct {v0, p1, v3}, Lcom/loc/az;-><init>(Lcom/amap/api/location/AMapLocation;I)V

    iget-object v1, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/loc/cf;->g:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/loc/cf;->j:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/az;

    invoke-virtual {v0}, Lcom/loc/az;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, "gpsstatistics"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cf;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 10

    const/4 v6, -0x1

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/cf;->c:J

    sub-long v2, v0, v2

    iget v0, p0, Lcom/loc/cf;->b:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v1, p0, Lcom/loc/cf;->b:I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v5, p0, Lcom/loc/cf;->b:I

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/loc/ci;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/loc/cf;->f:J

    sub-long v2, v0, v2

    iget v0, p0, Lcom/loc/cf;->e:I

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v1, p0, Lcom/loc/cf;->e:I

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    iget v5, p0, Lcom/loc/cf;->e:I

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/loc/cf;->a:Landroid/util/SparseArray;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-lez v0, :cond_2

    const-string v0, "pref"

    iget-object v4, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-wide/16 v6, 0x0

    invoke-static {p1, v0, v4, v6, v7}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const-string v0, "pref"

    iget-object v4, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {p1, v0, v4, v2, v3}, Lcom/loc/ch;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ReportUtil"

    const-string v2, "saveLocationTypeAndMode"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c(Landroid/content/Context;)I
    .locals 14

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    const-wide/16 v12, 0x0

    :try_start_0
    const-string v4, "pref"

    iget-object v5, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const-wide/16 v6, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "pref"

    iget-object v7, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const-wide/16 v8, 0x0

    invoke-static {p1, v6, v7, v8, v9}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "pref"

    iget-object v9, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const-wide/16 v10, 0x0

    invoke-static {p1, v8, v9, v10, v11}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v10, v4, v12

    if-nez v10, :cond_0

    cmp-long v10, v6, v12

    if-nez v10, :cond_0

    cmp-long v10, v8, v12

    if-nez v10, :cond_0

    :goto_0
    return v0

    :cond_0
    sub-long/2addr v6, v4

    sub-long/2addr v8, v4

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 14

    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v0, -0x1

    const/4 v2, 0x5

    const-wide/16 v12, 0x0

    :try_start_0
    const-string v4, "pref"

    iget-object v5, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const-wide/16 v6, 0x0

    invoke-static {p1, v4, v5, v6, v7}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "pref"

    iget-object v7, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    const-wide/16 v8, 0x0

    invoke-static {p1, v6, v7, v8, v9}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "pref"

    iget-object v9, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v9, v9, v10

    const-wide/16 v10, 0x0

    invoke-static {p1, v8, v9, v10, v11}, Lcom/loc/ch;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    cmp-long v10, v4, v12

    if-nez v10, :cond_0

    cmp-long v10, v6, v12

    if-nez v10, :cond_0

    cmp-long v10, v8, v12

    if-nez v10, :cond_0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final e(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "pref"

    iget-object v2, p0, Lcom/loc/cf;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-wide/16 v4, 0x0

    invoke-static {p1, v1, v2, v4, v5}, Lcom/loc/ch;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
