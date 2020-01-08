.class public final Lcn/com/xy/sms/util/a;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Z

.field private static j:J

.field private static k:Ljava/util/Map;

.field private static l:I


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    sput-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/com/xy/sms/util/a;->j:J

    const/4 v0, 0x0

    sput-object v0, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    sput v2, Lcn/com/xy/sms/util/a;->l:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    iput v0, p0, Lcn/com/xy/sms/util/a;->h:I

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->i:Z

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;IIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    iput v0, p0, Lcn/com/xy/sms/util/a;->h:I

    iput-boolean v0, p0, Lcn/com/xy/sms/util/a;->i:Z

    iput-boolean p1, p0, Lcn/com/xy/sms/util/a;->d:Z

    iput-object p2, p0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    iput p3, p0, Lcn/com/xy/sms/util/a;->f:I

    iput p4, p0, Lcn/com/xy/sms/util/a;->g:I

    iput-boolean p5, p0, Lcn/com/xy/sms/util/a;->i:Z

    const-string v0, "before_parse_thread"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/util/a;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " limit:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "start"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    const-string v3, "executeBeforeParse %s%s%s%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " number:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " parseCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static a()V
    .locals 2

    sget-object v1, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ZLjava/lang/String;IIZ)V
    .locals 6

    new-instance v0, Lcn/com/xy/sms/util/a;

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/util/a;-><init>(ZLjava/lang/String;IIZ)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/util/a;->setPriority(I)V

    invoke-virtual {v0}, Lcn/com/xy/sms/util/a;->start()V

    return-void
.end method

.method private static b()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/ParseItemManager;->isInitData()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcn/com/xy/sms/util/a;->c:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Lcn/com/xy/sms/util/a;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_1

    sget-boolean v3, Lcn/com/xy/sms/sdk/util/g;->a:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcn/com/xy/sms/util/a;->c:Z

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 15

    const-wide/16 v2, 0x0

    sget-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    if-nez v0, :cond_0

    sget-wide v0, Lcn/com/xy/sms/util/a;->j:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    if-eqz v0, :cond_5

    const-string v0, "BEFORE_HAND_PARSE_SMS_TIME"

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v4

    :goto_1
    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x7fffffff

    add-long/2addr v4, v0

    :cond_2
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    iget v6, p0, Lcn/com/xy/sms/util/a;->f:I

    invoke-virtual/range {v0 .. v6}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getReceiveMsgByReceiveTime(Ljava/lang/String;JJI)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v0, 0x0

    invoke-direct {p0}, Lcn/com/xy/sms/util/a;->d()Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    if-eqz v1, :cond_9

    sget-object v1, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move v12, v0

    move-wide v6, v4

    :goto_2
    if-lt v12, v14, :cond_6

    move-wide v10, v6

    :cond_3
    iget-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    if-eqz v0, :cond_0

    if-ne v12, v14, :cond_4

    rem-int/lit8 v0, v14, 0xa

    if-eqz v0, :cond_0

    :cond_4
    const-string v0, "BEFORE_HAND_PARSE_SMS_TIME"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->findObjectByPhone(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "maxReceiveTime"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_6
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/json/JSONObject;

    const-string v0, "smsReceiveTime"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-gez v0, :cond_8

    move-wide v10, v4

    :goto_3
    const-string v1, "isSafeVerifyCode"

    const-string v0, "isSafeVerifyCode"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msgId"

    invoke-static {v3, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "phone"

    invoke-static {v3, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "msg"

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v6, "centerNum"

    invoke-static {v3, v6}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v6, p0, Lcn/com/xy/sms/util/a;->g:I

    iget-boolean v7, p0, Lcn/com/xy/sms/util/a;->d:Z

    iget-boolean v8, p0, Lcn/com/xy/sms/util/a;->i:Z

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->parseSmsToBubbleResultMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZLjava/util/Map;)Ljava/util/Map;

    iget v0, p0, Lcn/com/xy/sms/util/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/com/xy/sms/util/a;->h:I

    iget-boolean v0, p0, Lcn/com/xy/sms/util/a;->d:Z

    if-eqz v0, :cond_7

    const-string v0, "BEFORE_HAND_PARSE_SMS_TIME"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    :cond_7
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/util/a;->sleep(J)V

    sget-boolean v0, Lcn/com/xy/sms/util/a;->b:Z

    if-nez v0, :cond_3

    sget-wide v0, Lcn/com/xy/sms/util/a;->j:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    move-wide v6, v10

    goto/16 :goto_2

    :cond_8
    move-wide v10, v6

    goto :goto_3

    :cond_9
    move v12, v0

    move-wide v6, v4

    goto/16 :goto_2

    :cond_a
    move-wide v4, v2

    goto/16 :goto_1
.end method

.method private declared-synchronized d()Ljava/util/Map;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getExtendConfig(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->parseJSON2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    if-nez v0, :cond_1

    sget v0, Lcn/com/xy/sms/util/a;->l:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/com/xy/sms/util/a;->l:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    :cond_1
    sget-object v0, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 17

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    const-string v3, "XIAOYUAN"

    const-string v4, "start"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/xy/sms/util/a;->f:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcn/com/xy/sms/util/a;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v3, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    sget-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcn/com/xy/sms/util/a;->b()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v2

    if-nez v2, :cond_1

    sget-object v3, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_3
    sput-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v4, 0x0

    sput-wide v4, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    const-string v3, "XIAOYUAN"

    const-string v4, "end"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/xy/sms/util/a;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/com/xy/sms/util/a;->h:I

    invoke-static {v4, v5, v6, v7}, Lcn/com/xy/sms/util/a;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catch_0
    move-exception v2

    sget-object v3, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_5
    sput-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v4, 0x0

    sput-wide v4, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    const-string v3, "XIAOYUAN"

    const-string v4, "end"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/xy/sms/util/a;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/com/xy/sms/util/a;->h:I

    invoke-static {v4, v5, v6, v7}, Lcn/com/xy/sms/util/a;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    :try_start_6
    sget-object v3, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    sget-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    if-eqz v2, :cond_2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    sget-object v3, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v4, 0x0

    sput-wide v4, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    const-string v3, "XIAOYUAN"

    const-string v4, "end"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/xy/sms/util/a;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/com/xy/sms/util/a;->h:I

    invoke-static {v4, v5, v6, v7}, Lcn/com/xy/sms/util/a;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    const/4 v2, 0x1

    :try_start_9
    sput-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    sput-wide v4, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    sget-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    if-nez v2, :cond_3

    sget-wide v2, Lcn/com/xy/sms/util/a;->j:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    sget-object v3, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_b
    sput-boolean v2, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v4, 0x0

    sput-wide v4, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    const-string v3, "XIAOYUAN"

    const-string v4, "end"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcn/com/xy/sms/util/a;->f:I

    move-object/from16 v0, p0

    iget v7, v0, Lcn/com/xy/sms/util/a;->h:I

    invoke-static {v4, v5, v6, v7}, Lcn/com/xy/sms/util/a;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    :try_start_c
    monitor-exit v3

    throw v2
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v2

    sget-object v3, Lcn/com/xy/sms/util/a;->a:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    :try_start_d
    sput-boolean v4, Lcn/com/xy/sms/util/a;->c:Z

    const/4 v4, 0x0

    sput-boolean v4, Lcn/com/xy/sms/util/a;->b:Z

    const-wide/16 v4, 0x0

    sput-wide v4, Lcn/com/xy/sms/util/a;->j:J

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v3

    const-string v4, "XIAOYUAN"

    const-string v5, "end"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcn/com/xy/sms/util/a;->f:I

    move-object/from16 v0, p0

    iget v8, v0, Lcn/com/xy/sms/util/a;->h:I

    invoke-static {v5, v6, v7, v8}, Lcn/com/xy/sms/util/a;->a(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v2

    :cond_4
    const-wide/16 v6, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/com/xy/sms/util/a;->d:Z

    if-eqz v2, :cond_8

    const-string v2, "BEFORE_HAND_PARSE_SMS_TIME"

    const-wide/16 v4, 0x0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v4, v5, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->getLongParam(Ljava/lang/String;JLandroid/content/Context;)J

    move-result-wide v6

    :cond_5
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-nez v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    add-long v6, v2, v4

    :cond_6
    invoke-static {}, Lcn/com/xy/sms/sdk/util/DuoquUtils;->getSdkDoAction()Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcn/com/xy/sms/util/a;->f:I

    invoke-virtual/range {v2 .. v8}, Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;->getReceiveMsgByReceiveTime(Ljava/lang/String;JJI)Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcn/com/xy/sms/util/a;->d()Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    if-eqz v3, :cond_d

    sget-object v3, Lcn/com/xy/sms/util/a;->k:Ljava/util/Map;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    move v14, v2

    move-wide v8, v6

    :goto_3
    move/from16 v0, v16

    if-lt v14, v0, :cond_9

    move-wide v2, v8

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcn/com/xy/sms/util/a;->d:Z

    if-eqz v4, :cond_3

    move/from16 v0, v16

    if-ne v14, v0, :cond_7

    rem-int/lit8 v4, v16, 0xa

    if-eqz v4, :cond_3

    :cond_7
    const-string v4, "BEFORE_HAND_PARSE_SMS_TIME"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/com/xy/sms/util/a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/db/entity/PhoneSmsParseManager;->findObjectByPhone(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v3, "maxReceiveTime"

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_2

    :cond_9
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    const-string v2, "smsReceiveTime"

    invoke-static {v5, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-gez v2, :cond_c

    move-wide v12, v6

    :goto_5
    const-string v3, "isSafeVerifyCode"

    const-string v2, "isSafeVerifyCode"

    invoke-static {v5, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msgId"

    invoke-static {v5, v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "phone"

    invoke-static {v5, v3}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "msg"

    invoke-static {v5, v4}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "centerNum"

    invoke-static {v5, v8}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcn/com/xy/sms/util/a;->g:I

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcn/com/xy/sms/util/a;->d:Z

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcn/com/xy/sms/util/a;->i:Z

    invoke-static/range {v2 .. v11}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->parseSmsToBubbleResultMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZLjava/util/Map;)Ljava/util/Map;

    move-object/from16 v0, p0

    iget v2, v0, Lcn/com/xy/sms/util/a;->h:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/com/xy/sms/util/a;->h:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/com/xy/sms/util/a;->d:Z

    if-eqz v2, :cond_a

    const-string v2, "BEFORE_HAND_PARSE_SMS_TIME"

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/entity/SysParamEntityManager;->setParam(Ljava/lang/String;Ljava/lang/String;)J

    :cond_a
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcn/com/xy/sms/util/a;->sleep(J)V

    sget-boolean v2, Lcn/com/xy/sms/util/a;->b:Z

    if-nez v2, :cond_b

    sget-wide v2, Lcn/com/xy/sms/util/a;->j:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move-wide v8, v12

    goto/16 :goto_3

    :catchall_5
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_6
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_7
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_b
    move-wide v2, v12

    goto/16 :goto_4

    :cond_c
    move-wide v12, v8

    goto :goto_5

    :cond_d
    move v14, v2

    move-wide v8, v6

    goto/16 :goto_3
.end method
