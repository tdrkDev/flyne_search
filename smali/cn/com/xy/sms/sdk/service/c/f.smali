.class final Lcn/com/xy/sms/sdk/service/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/c/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/c/f;->d:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/f;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/entity/q;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/p;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcn/com/xy/sms/sdk/db/entity/p;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/db/entity/p;->c:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/c;->a()Landroid/util/LruCache;

    move-result-object v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "get result from db:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/f;->d:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcn/com/xy/sms/sdk/service/c/g;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/f;->a:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/c/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/c/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/c/f;->d:Lcn/com/xy/sms/util/SdkCallBack;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/c/g;-><init>(Lcn/com/xy/sms/sdk/service/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/net/util/j;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phonemenu"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/f;->d:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v6, [Ljava/lang/Object;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v9, v1, v8

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method
