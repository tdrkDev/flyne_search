.class final Lcn/com/xy/sms/sdk/action/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/action/AbsSdkDoAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    const-string v0, "xy_local_bg_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->changeIccidAreaCode(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
