.class final Lcn/com/xy/sms/sdk/util/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/util/j;->a:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/h;->e()I

    invoke-static {}, Lcn/com/xy/sms/sdk/db/a/a;->b()V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getTempPARSE_PATH()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getPARSE_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/f;->d(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/util/f;->d(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/constant/Constant;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "outdex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/f;->a(Ljava/io/File;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->d()V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/j;->a:Lcn/com/xy/sms/util/SdkCallBack;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/g;->a(Z)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/util/j;->a:Lcn/com/xy/sms/util/SdkCallBack;

    const-string v1, "-1"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/g;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcn/com/xy/sms/sdk/util/g;->a(Z)V

    throw v0
.end method
