.class final Lcn/com/xy/sms/sdk/service/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/util/HashMap;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/d/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/d/c;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/d/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/d/c;->d:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/d/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/d/c;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 10

    const/16 v8, -0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "opanalysis"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/d/c;->a:Ljava/lang/String;

    const-wide/32 v2, 0x493e0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/d/c;->b:Ljava/util/HashMap;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/service/d/a;->a(Ljava/util/Map;)Z

    move-result v4

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/d/c;->b:Ljava/util/HashMap;

    iget-object v8, p0, Lcn/com/xy/sms/sdk/service/d/c;->c:Ljava/lang/String;

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenAndPostRequestAgain(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/Map;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/d/c;->d:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "server error"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, p1

    if-ne v1, v7, :cond_3

    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/d/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/d/c;->f:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/db/entity/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/d/c;->d:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/d/c;->d:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "response content error"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/d/c;->d:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response code wrong, code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/d/c;->d:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "no result"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
