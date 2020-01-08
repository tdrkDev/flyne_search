.class final Lcn/com/xy/sms/sdk/service/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/c/h;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/h;->c:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/h;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/h;->a:Ljava/util/List;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/c/h;->b:Ljava/lang/String;

    invoke-static {}, Lcn/com/xy/sms/sdk/service/c/c;->a()Landroid/util/LruCache;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcn/com/xy/sms/sdk/db/entity/q;->a(Ljava/util/List;Ljava/lang/String;Landroid/util/LruCache;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/h;->c:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-static {v2, v0}, Lcn/com/xy/sms/sdk/service/c/c;->a(Ljava/util/List;Lcn/com/xy/sms/util/SdkCallBack;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "netQueryNums:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/h;->c:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-static {v1, v0, v2}, Lcn/com/xy/sms/sdk/service/c/c;->a(Ljava/util/List;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/h;->c:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "exception error"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_1
.end method
