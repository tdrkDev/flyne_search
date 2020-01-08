.class final Lcn/com/xy/sms/sdk/service/msgurlservice/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Z

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/util/HashMap;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->b:Z

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->c:Ljava/util/Map;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v8, 0x194

    if-eqz p1, :cond_7

    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "URLValidity"

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->a:Ljava/lang/String;

    const-wide/32 v2, 0x493e0

    iget-boolean v4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->b:Z

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->c:Ljava/util/Map;

    iget-object v8, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->d:Ljava/lang/String;

    move-object v9, p0

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/sdk/net/NetUtil;->requestNewTokenAndPostRequestAgain(Ljava/lang/String;Ljava/lang/String;JZZZLjava/util/Map;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    aget-object v0, p1, v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Lorg/json/JSONArray;)I

    move-result v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :cond_5
    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    iget-boolean v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->b:Z

    invoke-static {v1, v2, v0, v3}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->saveUrlResult(Lorg/json/JSONArray;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->f:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
