.class final Lcn/com/xy/sms/sdk/number/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/number/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/b;->b(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/number/b;->a(Z)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/number/b;->b(Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcn/com/xy/sms/util/b;->a(Landroid/content/Context;)V

    const-string v0, "0"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/util/b;->d()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/b;->a(Ljava/io/InputStream;)V

    const-string v0, "1"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/number/b;->a(Z)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/number/b;->b(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/number/b;->a(Z)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/number/b;->b(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcn/com/xy/sms/sdk/number/b;->a(Z)V

    invoke-static {v2}, Lcn/com/xy/sms/sdk/number/b;->b(Z)V

    throw v0
.end method
