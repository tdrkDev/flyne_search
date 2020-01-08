.class final Lcn/com/xy/sms/sdk/service/msgurlservice/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Lorg/json/JSONObject;

.field private final synthetic e:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->b:Ljava/lang/String;

    iput p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->c:I

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->d:Lorg/json/JSONObject;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->e:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/16 v11, 0x196

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->getToken()Ljava/lang/String;

    move-result-object v8

    const-string v0, "URLValidity"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->a:Ljava/lang/String;

    const-wide/32 v2, 0x493e0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenAndPostRequestAgain(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/Map;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->b:Ljava/lang/String;

    iget v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->c:I

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1, v11, v2, v10}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;IILorg/json/JSONObject;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->e:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Lorg/json/JSONArray;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    :try_start_3
    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/j;->b:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-object v10, v0

    move v11, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v10

    move v1, v11

    :goto_2
    move-object v10, v0

    move v11, v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    move v1, v11

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_2
.end method
