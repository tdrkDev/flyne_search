.class final Lcn/com/xy/sms/sdk/net/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/net/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/net/h;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/net/h;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v6, 0x0

    move v5, v4

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/net/NetUtil;->a(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ZZZLjava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/h;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "Error get token"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    goto :goto_0
.end method
