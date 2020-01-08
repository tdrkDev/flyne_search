.class final Lcn/com/xy/sms/sdk/util/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "xy-sdkinitpool-1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->g()V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->e()V

    invoke-static {}, Lcn/com/xy/sms/sdk/util/g;->f()V

    const-string v0, "train_data.txt"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/g;->a(Ljava/lang/String;I)V

    const-string v0, "air_data.txt"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/g;->a(Ljava/lang/String;I)V

    return-void
.end method
