.class final Lcn/com/xy/sms/sdk/number/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/number/t;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/number/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/number/t;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/util/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/number/t;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/t;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/util/b;->b(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/t;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, -0x6

    const-string v2, "digest mimatch"

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcn/com/xy/sms/util/b;->c()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/r;->a(Ljava/io/InputStream;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/number/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/t;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, 0x2

    invoke-static {}, Lcn/com/xy/sms/sdk/number/r;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/number/k;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/t;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/16 v1, -0xa

    const-string v2, "fetchAndUpdate unknown"

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V

    goto :goto_0
.end method
