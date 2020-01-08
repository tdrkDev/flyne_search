.class final Lcn/com/xy/sms/sdk/db/entity/F;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:Lcn/com/xy/sms/sdk/db/entity/G;


# direct methods
.method constructor <init>(Ljava/util/List;Lcn/com/xy/sms/sdk/db/entity/G;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/F;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/F;->b:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/F;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "tb_update_task"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id IN ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/F;->b:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/D;->a(Lcn/com/xy/sms/sdk/db/entity/G;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
