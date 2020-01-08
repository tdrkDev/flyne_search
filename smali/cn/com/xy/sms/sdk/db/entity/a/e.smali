.class final Lcn/com/xy/sms/sdk/db/entity/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/a/e;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    const-string v0, "xy_query_pubinfo_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/e;->a:Ljava/util/HashMap;

    const-string v2, "num"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/util/ParseManager;->queryPublicInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
