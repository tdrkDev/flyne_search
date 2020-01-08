.class final Lcn/com/xy/sms/sdk/util/B;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/util/B;->a:Ljava/util/List;

    iput p2, p0, Lcn/com/xy/sms/sdk/util/B;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "0"

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/B;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/y;->a(Ljava/util/List;)I

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcn/com/xy/sms/sdk/log/LogManager;->debug:Z

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/i;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcn/com/xy/sms/sdk/util/B;->b:I

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/SceneconfigUtil;->a(Ljava/util/List;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/B;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/y;->a(Ljava/util/List;)I

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/B;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/y;->a(Ljava/util/List;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/B;->a:Ljava/util/List;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/y;->a(Ljava/util/List;)I

    throw v0
.end method
