.class final Lcn/com/xy/sms/sdk/db/entity/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/db/entity/C;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/db/entity/C;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/E;->a:Lcn/com/xy/sms/sdk/db/entity/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/E;->a:Lcn/com/xy/sms/sdk/db/entity/C;

    iget-wide v0, v0, Lcn/com/xy/sms/sdk/db/entity/C;->b:J

    :try_start_0
    const-string v2, "tb_update_task"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Lcn/com/xy/sms/sdk/db/entity/G;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
