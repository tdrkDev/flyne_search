.class final Lcn/com/xy/sms/sdk/number/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/number/n;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/n;->a:Lorg/json/JSONObject;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->JSONCombine(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
