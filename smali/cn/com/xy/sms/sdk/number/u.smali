.class final Lcn/com/xy/sms/sdk/number/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/number/u;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 4

    const/4 v2, 0x2

    const/16 v3, -0xa

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/u;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/16 v1, -0xa

    const-string v2, "obj invalid"

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eq v1, v2, :cond_2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/u;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const-string v2, "query fail"

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/u;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const-string v1, "query error"

    invoke-static {v0, v3, v1}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/u;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v1, -0x8

    invoke-static {}, Lcn/com/xy/sms/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/u;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/number/r;->a(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
