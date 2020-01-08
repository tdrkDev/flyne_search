.class final Lcn/com/xy/sms/sdk/iccid/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/iccid/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/iccid/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/j;->c(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/a;

    move-result-object v5

    iget v0, v5, Lcn/com/xy/sms/sdk/db/entity/a;->a:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/iccid/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->getSubString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcn/com/xy/sms/sdk/db/entity/a;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lcn/com/xy/sms/sdk/db/entity/a;->g:J

    iget-object v0, p0, Lcn/com/xy/sms/sdk/iccid/b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v5}, Lcn/com/xy/sms/sdk/db/entity/a/a;->a(Lcn/com/xy/sms/sdk/db/entity/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v5, Lcn/com/xy/sms/sdk/db/entity/a;->b:Ljava/lang/String;

    invoke-static {v0, v5}, Lcn/com/xy/sms/sdk/db/entity/a/a;->a(Ljava/lang/String;Lcn/com/xy/sms/sdk/db/entity/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/iccid/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/iccid/b;->b:Ljava/lang/String;

    iget-object v2, v5, Lcn/com/xy/sms/sdk/db/entity/a;->d:Ljava/lang/String;

    iget-object v3, v5, Lcn/com/xy/sms/sdk/db/entity/a;->c:Ljava/lang/String;

    iget-object v4, v5, Lcn/com/xy/sms/sdk/db/entity/a;->e:Ljava/lang/String;

    iget-object v5, v5, Lcn/com/xy/sms/sdk/db/entity/a;->f:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->insertIccid(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    goto :goto_0

    :cond_2
    iget v0, v5, Lcn/com/xy/sms/sdk/db/entity/a;->a:I

    sget v1, Lcn/com/xy/sms/sdk/net/util/j;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/iccid/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->QueryTokenRequest(Ljava/lang/String;)V

    goto :goto_0
.end method
