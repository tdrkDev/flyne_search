.class final Lcn/com/xy/sms/sdk/service/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic d:I

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/f/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/f/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/f/e;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput p4, p0, Lcn/com/xy/sms/sdk/service/f/e;->d:I

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/f/e;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/f/e;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/e;->a:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->b:Ljava/lang/String;

    invoke-static {v0, v4, p1}, Lcn/com/xy/sms/sdk/service/f/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    array-length v0, p1

    if-ne v0, v8, :cond_4

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/j;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Lorg/json/JSONObject;)V

    :try_start_0
    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v4, :cond_6

    iget v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->d:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->a:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/f/e;->b:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcn/com/xy/sms/sdk/util/JsonUtil;->pubInfoToJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/f/e;->e:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->a:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;)V

    :goto_2
    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/e;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/e;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v3, v4, v1

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/e;->e:Ljava/lang/String;

    aput-object v1, v4, v8

    invoke-static {v0, v4}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_2
    iget v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->d:I

    if-ne v4, v1, :cond_6

    const-string v4, "pubMenuInfolist"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_3
    :try_start_3
    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/f/e;->e:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    :goto_4
    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/e;->a:Ljava/lang/String;

    invoke-static {v4}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/db/entity/a/f;->a(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/f/e;->f:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->QueryTokenRequest(Ljava/lang/String;)V

    :cond_4
    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_1
.end method
