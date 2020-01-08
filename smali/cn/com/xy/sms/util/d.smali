.class final Lcn/com/xy/sms/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/util/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/d;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/util/d;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/util/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->getMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_num_md5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "phonenum"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcn/com/xy/sms/util/d;->a:Ljava/lang/String;

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/StringUtils;->getPhoneNumberNo86(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "msg_id"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcn/com/xy/sms/util/d;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "session_reuslt"

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcn/com/xy/sms/util/d;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/16 v0, 0x8

    const-string v3, "save_time"

    aput-object v3, v2, v0

    const/16 v0, 0x9

    iget-wide v4, p0, Lcn/com/xy/sms/util/d;->e:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/16 v0, 0xa

    const-string v3, "session_lasttime"

    aput-object v3, v2, v0

    const/16 v0, 0xb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/MatchCacheManager;->insertOrUpdate(Landroid/content/ContentValues;I)J

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/util/d;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method
