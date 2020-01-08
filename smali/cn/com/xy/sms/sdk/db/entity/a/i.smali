.class final Lcn/com/xy/sms/sdk/db/entity/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->a:I

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->c:Ljava/lang/String;

    iput p4, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->d:I

    iput-object p5, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->f:Ljava/lang/String;

    iput p7, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x14

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "pubId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "areaCode"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "num"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ptype"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->d:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "lastloadtime"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "isrulenum"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "purpose"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "extend"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "isuse"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "1"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "nameType"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget v3, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->g:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "tb_public_num_info"

    const-string v2, " num = ? and ptype = ? "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcn/com/xy/sms/sdk/db/entity/a/i;->d:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->saveOrUpdateTableData(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
