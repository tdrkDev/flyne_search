.class final Lcn/com/xy/sms/sdk/service/c/j;
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
    .locals 4

    const/16 v0, 0x2b

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v2, v3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/c;->a(JI)V

    const/16 v0, 0x2c

    const-wide/32 v2, 0x240c8400

    invoke-static {v0, v2, v3}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getUpdateCycleByType(IJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/c;->a(JI)V

    return-void
.end method
