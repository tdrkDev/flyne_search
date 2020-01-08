.class final Lcn/com/xy/sms/sdk/net/util/p;
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

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/f;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcn/com/xy/sms/sdk/net/util/n;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
