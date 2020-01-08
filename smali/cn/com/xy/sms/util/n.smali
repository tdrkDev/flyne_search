.class final Lcn/com/xy/sms/util/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/util/D;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/util/D;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/n;->a:Lcn/com/xy/sms/sdk/util/D;

    iput-object p2, p0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/n;->d:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcn/com/xy/sms/util/n;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/util/D;->j:Ljava/util/Map;

    iget-object v2, p0, Lcn/com/xy/sms/util/n;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/util/n;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->l:Ljava/util/Map;

    iget-object v1, p0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcn/com/xy/sms/util/n;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->n:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/util/ParseSmsMessage;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/util/n;->d:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "refresh list"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/n;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
