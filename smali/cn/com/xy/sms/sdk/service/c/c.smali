.class public final Lcn/com/xy/sms/sdk/service/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0x64

.field private static b:I = 0x65

.field private static c:I = 0x66

.field private static final d:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcn/com/xy/sms/sdk/service/c/c;->d:Landroid/util/LruCache;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/com/xy/sms/sdk/service/c/c;->e:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Lcn/com/xy/sms/sdk/service/c/c;->d:Landroid/util/LruCache;

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcn/com/xy/sms/sdk/service/c/c;->d:Landroid/util/LruCache;

    invoke-static {p0, p1, v1}, Lcn/com/xy/sms/sdk/db/entity/q;->a(Ljava/util/List;Ljava/lang/String;Landroid/util/LruCache;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(JI)V
    .locals 12

    const/4 v5, 0x0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/db/entity/q;->a(JI)Ljava/util/List;

    move-result-object v6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backgroud update status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phones:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    cmpl-double v7, v0, v2

    if-lez v7, :cond_5

    const/16 v0, 0xc8

    move-wide v10, v2

    move v2, v0

    move-wide v0, v10

    :goto_1
    move v3, v5

    :goto_2
    int-to-double v4, v3

    cmpg-double v4, v4, v0

    if-ltz v4, :cond_2

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/p;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/p;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v5, v3, 0x14

    add-int/lit8 v4, v3, 0x1

    int-to-double v8, v4

    cmpl-double v4, v8, v0

    if-nez v4, :cond_4

    move v4, v2

    :goto_4
    invoke-interface {v6, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Lcn/com/xy/sms/sdk/service/c/k;

    invoke-direct {v5, v4}, Lcn/com/xy/sms/sdk/service/c/k;-><init>(Ljava/util/List;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/net/util/j;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "phonemenu"

    const/4 v8, 0x0

    invoke-static {v7, v4, v8, v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v4, v4, 0x14

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "cnum"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "code"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "iccid"

    invoke-static {p1, v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "simIndex"

    invoke-static {p1, v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/xy/sms/sdk/db/entity/a/f;->d(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1, v4, v3, p0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/c;->b()V

    const-string v0, "%s:%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v7

    aput-object v1, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcn/com/xy/sms/sdk/service/c/c;->d:Landroid/util/LruCache;

    invoke-virtual {v0, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get result from cache:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [Ljava/lang/Object;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    invoke-static {p2, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcn/com/xy/sms/sdk/service/c/f;

    invoke-direct {v4, v2, v1, v3, p2}, Lcn/com/xy/sms/sdk/service/c/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/db/entity/p;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/service/c/k;

    invoke-direct {v0, p0}, Lcn/com/xy/sms/sdk/service/c/k;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lcn/com/xy/sms/sdk/net/util/j;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phonemenu"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/util/List;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/service/c/c;->b(Ljava/util/List;Lcn/com/xy/sms/util/SdkCallBack;)V

    return-void
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 4

    new-instance v0, Lcn/com/xy/sms/sdk/service/c/i;

    invoke-direct {v0, p1, p2}, Lcn/com/xy/sms/sdk/service/c/i;-><init>(Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phonemenu"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "exception params"

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cnum"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "code"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "iccid"

    invoke-static {p1, v4}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "simIndex"

    invoke-static {p1, v5}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/xy/sms/sdk/db/entity/a/f;->d(Ljava/lang/String;)I

    move-result v5

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v5, v4, v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    sget-object v1, Lcn/com/xy/sms/sdk/a/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/com/xy/sms/sdk/service/c/d;

    invoke-direct {v2, v3, v0, p2}, Lcn/com/xy/sms/sdk/service/c/d;-><init>(Ljava/util/List;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private static b()V
    .locals 4

    sget-wide v0, Lcn/com/xy/sms/sdk/service/c/c;->e:J

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcn/com/xy/sms/sdk/service/c/c;->e:J

    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/com/xy/sms/sdk/service/c/j;

    invoke-direct {v1}, Lcn/com/xy/sms/sdk/service/c/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static b(JI)V
    .locals 12

    const/4 v5, 0x0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/com/xy/sms/sdk/db/entity/q;->a(JI)Ljava/util/List;

    move-result-object v6

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v5

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backgroud update status:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phones:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    cmpl-double v7, v0, v2

    if-lez v7, :cond_5

    const/16 v0, 0xc8

    move-wide v10, v2

    move v2, v0

    move-wide v0, v10

    :goto_1
    move v3, v5

    :goto_2
    int-to-double v4, v3

    cmpg-double v4, v4, v0

    if-ltz v4, :cond_2

    :cond_0
    :goto_3
    return-void

    :cond_1
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/p;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/p;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    mul-int/lit8 v5, v3, 0x14

    add-int/lit8 v4, v3, 0x1

    int-to-double v8, v4

    cmpl-double v4, v8, v0

    if-nez v4, :cond_4

    move v4, v2

    :goto_4
    invoke-interface {v6, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Lcn/com/xy/sms/sdk/service/c/k;

    invoke-direct {v5, v4}, Lcn/com/xy/sms/sdk/service/c/k;-><init>(Ljava/util/List;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/net/util/j;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "phonemenu"

    const/4 v8, 0x0

    invoke-static {v7, v4, v8, v5}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v4, v4, 0x14

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method private static b(Ljava/util/List;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v3, 0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/util/List;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcn/com/xy/sms/sdk/service/c/i;

    invoke-direct {v0, p1, p2}, Lcn/com/xy/sms/sdk/service/c/i;-><init>(Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-static {p0, p1}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phonemenu"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method

.method private static b(Ljava/util/List;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "cnum"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "code"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "iccid"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "simIndex"

    invoke-static {p1, v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getValueByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->d(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_4

    invoke-interface {v8, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v6, v5, v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->getAreaCodeByCnumOrIccid(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    move v3, v2

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v9, p2}, Lcn/com/xy/sms/sdk/service/c/c;->b(Ljava/util/List;Lcn/com/xy/sms/util/SdkCallBack;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "tmpQueryNums:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-object v0, Lcn/com/xy/sms/sdk/a/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/com/xy/sms/sdk/service/c/h;

    invoke-direct {v2, v8, v1, p2}, Lcn/com/xy/sms/sdk/service/c/h;-><init>(Ljava/util/List;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/c;->b()V

    goto :goto_0

    :cond_4
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    const-string v0, "%s:%s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcn/com/xy/sms/sdk/service/c/c;->d:Landroid/util/LruCache;

    invoke-virtual {v0, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get result from cache,key:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    :cond_8
    move-object v1, v3

    goto/16 :goto_2
.end method
