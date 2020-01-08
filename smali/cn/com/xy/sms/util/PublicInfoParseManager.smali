.class public Lcn/com/xy/sms/util/PublicInfoParseManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static mins:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-wide/16 v0, 0x1

    sput-wide v0, Lcn/com/xy/sms/util/PublicInfoParseManager;->mins:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-static/range {p0 .. p7}, Lcn/com/xy/sms/util/PublicInfoParseManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p7, :cond_0

    const/4 v1, 0x0

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p4, p5, p6}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->createBitmapByPath2(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz p7, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_0

    sget-object v1, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    if-eqz p7, :cond_0

    const/4 v1, 0x0

    invoke-interface {p7, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static findBitmapLogoByLogoName(Landroid/content/Context;Ljava/lang/String;IILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    const/4 v13, 0x0

    invoke-static {}, Lcn/com/xy/sms/util/v;->a()Ljava/lang/String;

    move-result-object v14

    :try_start_0
    const-string v4, "cn.com.xy.sms.util.PublicInfoParseManager"

    const-string v5, "findBitmapLogoByLogoName"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    const/4 v7, 0x5

    aput-object p5, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogIn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "duoqu_publiclogo"

    invoke-static {v4}, Lcn/com/xy/sms/sdk/constant/Constant;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v4, v1, v2}, Lcn/com/xy/sms/sdk/ui/popu/util/ViewUtil;->createBitmapByPath2(Landroid/content/Context;Ljava/io/File;II)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :try_start_1
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v4, "cn.com.xy.sms.util.PublicInfoParseManager"

    const-string v6, "findBitmapLogoByLogoName"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object v5, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    :cond_0
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v4, v5

    :goto_0
    return-object v4

    :cond_2
    :try_start_2
    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v4, "cn.com.xy.sms.util.PublicInfoParseManager"

    const-string v6, "findBitmapLogoByLogoName"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object v5, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-lez v4, :cond_4

    :cond_3
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    :try_start_3
    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x13

    const-wide/16 v16, 0x3c

    sget-wide v18, Lcn/com/xy/sms/util/PublicInfoParseManager;->mins:J

    mul-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    invoke-static {v6, v0, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v16

    add-long v4, v4, v16

    cmp-long v4, v10, v4

    if-gez v4, :cond_8

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "cn.com.xy.sms.util.PublicInfoParseManager"

    const-string v5, "findBitmapLogoByLogoName"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    const/4 v7, 0x5

    aput-object p5, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-lez v4, :cond_7

    :cond_6
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcn/com/xy/sms/sdk/net/NetUtil;->BIZPORT_DOWN_URL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcn/com/xy/sms/sdk/a/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    new-instance v4, Lcn/com/xy/sms/util/s;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-direct/range {v4 .. v12}, Lcn/com/xy/sms/util/s;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)V

    invoke-interface {v15, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v4, "cn.com.xy.sms.util.PublicInfoParseManager"

    const-string v5, "findBitmapLogoByLogoName"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    const/4 v7, 0x5

    aput-object p5, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-static {v14, v4, v5, v6}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v8, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v8, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v8

    add-long/2addr v4, v8

    cmp-long v4, v6, v4

    if-lez v4, :cond_a

    :cond_9
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v5, 0x7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v5, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object v4, v13

    :goto_1
    new-instance v5, Lcn/com/xy/sms/sdk/queue/k;

    const/16 v6, 0xc

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "state"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "256"

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v5}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v5, v13

    :goto_2
    const-string v4, "cn.com.xy.sms.util.PublicInfoParseManager"

    const-string v6, "findBitmapLogoByLogoName"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object v5, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_e

    :cond_b
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v5

    goto :goto_1

    :catchall_0
    move-exception v4

    move-object v5, v4

    :goto_3
    const-string v4, "cn.com.xy.sms.util.PublicInfoParseManager"

    const-string v6, "findBitmapLogoByLogoName"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    aput-object p4, v7, v8

    const/4 v8, 0x5

    aput-object p5, v7, v8

    const/4 v8, 0x6

    aput-object v13, v7, v8

    invoke-static {v14, v4, v6, v7}, Lcn/com/xy/sms/sdk/util/ConversationManager;->saveLogOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const/16 v4, 0x14

    const-wide/32 v10, 0x36ee80

    invoke-static {v4, v10, v11}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v10

    add-long/2addr v8, v10

    cmp-long v4, v6, v8

    if-lez v4, :cond_d

    :cond_c
    new-instance v4, Lcn/com/xy/sms/sdk/queue/k;

    const/4 v6, 0x7

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lcn/com/xy/sms/sdk/queue/k;-><init>(I[Ljava/lang/String;)V

    invoke-static {v4}, Lcn/com/xy/sms/sdk/queue/i;->a(Lcn/com/xy/sms/sdk/queue/k;)V

    sget-object v4, Lcn/com/xy/sms/util/PublicInfoParseManager;->a:Ljava/util/HashMap;

    const-string v6, "runResourseQueue"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    throw v5

    :catchall_1
    move-exception v4

    move-object v13, v5

    move-object v5, v4

    goto :goto_3

    :catch_1
    move-exception v4

    goto/16 :goto_2

    :cond_e
    move-object v4, v5

    goto/16 :goto_1
.end method

.method public static varargs getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :goto_1
    :try_start_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getLogoNameByNum(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcn/com/xy/sms/util/t;

    invoke-direct {v0, p3, p6}, Lcn/com/xy/sms/util/t;-><init>(ILcn/com/xy/sms/util/SdkCallBack;)V

    invoke-static {p1, p2, p4, p5, v0}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const-string v0, "logo"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "logoc"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public static getNameAndLogoNameByNum(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x5

    :try_start_0
    invoke-static {v1}, Lcn/com/xy/sms/sdk/net/util/n;->a(B)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p6, :cond_3

    new-instance v1, Lcn/com/xy/sms/util/u;

    invoke-direct {v1, p3, p6}, Lcn/com/xy/sms/util/u;-><init>(ILcn/com/xy/sms/util/SdkCallBack;)V

    :goto_1
    invoke-static {p1, p2, p4, p5, v1}, Lcn/com/xy/sms/sdk/service/f/g;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-ne p3, v3, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "logoName"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "logo"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "logoName"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "logoc"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static queryLocalSmsSignByNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/com/xy/sms/sdk/db/entity/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static queryLogoByPhone(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;IILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/com/xy/sms/util/SdkCallBack;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p7

    :try_start_0
    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getLogoNameByNum(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logoName is null"

    aput-object v2, v0, v1

    invoke-static {p8, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v2, p5

    move v3, p6

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/PublicInfoParseManager;->findBitmapLogoByLogoName(Landroid/content/Context;Ljava/lang/String;IILjava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logo drawable is null"

    aput-object v2, v0, v1

    invoke-static {p8, v0}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p8, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "-1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p8, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
