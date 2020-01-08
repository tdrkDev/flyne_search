.class final Lcn/com/xy/sms/util/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/util/o;

.field private final synthetic b:[Ljava/lang/Object;

.field private final synthetic c:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/util/o;[Ljava/lang/Object;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/util/p;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lcn/com/xy/sms/util/p;->c:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p4, p0, Lcn/com/xy/sms/util/p;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/util/p;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    if-eqz v1, :cond_3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "NEW_ADACTION"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcn/com/xy/sms/util/p;->c:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/p;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :pswitch_0
    const/4 v0, 0x1

    aget-object v0, p1, v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcn/com/xy/sms/util/p;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    check-cast v0, Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_1

    :try_start_3
    const-string v4, "NEW_ADACTION"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_3
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    :try_start_4
    iget-object v0, p0, Lcn/com/xy/sms/util/p;->c:Lcn/com/xy/sms/util/SdkCallBack;

    iget-object v1, p0, Lcn/com/xy/sms/util/p;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcn/com/xy/sms/util/p;->c:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/p;->b:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcn/com/xy/sms/util/p;->b:[Ljava/lang/Object;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcn/com/xy/sms/util/p;->c:Lcn/com/xy/sms/util/SdkCallBack;

    iget-object v1, p0, Lcn/com/xy/sms/util/p;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
