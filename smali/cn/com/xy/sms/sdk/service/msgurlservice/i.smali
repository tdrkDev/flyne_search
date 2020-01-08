.class final Lcn/com/xy/sms/sdk/service/msgurlservice/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private synthetic a:Lcn/com/xy/sms/sdk/service/msgurlservice/h;

.field private final synthetic b:Lcn/com/xy/sms/sdk/util/D;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:J

.field private final synthetic g:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/service/msgurlservice/h;Lcn/com/xy/sms/sdk/util/D;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->b:Lcn/com/xy/sms/sdk/util/D;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->f:J

    iput-object p8, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->g:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->b:Lcn/com/xy/sms/sdk/util/D;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/util/D;->q:Ljava/util/HashSet;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->b:Lcn/com/xy/sms/sdk/util/D;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/util/D;->p:Ljava/util/Map;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->e:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->f:J

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->g:Lcn/com/xy/sms/util/SdkCallBack;

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

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;->c:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
