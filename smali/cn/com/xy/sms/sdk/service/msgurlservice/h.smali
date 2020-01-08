.class final Lcn/com/xy/sms/sdk/service/msgurlservice/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/util/Map;

.field private final synthetic e:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic f:Lcn/com/xy/sms/sdk/util/D;

.field private final synthetic g:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/util/SdkCallBack;Lcn/com/xy/sms/sdk/util/D;J)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->d:Ljava/util/Map;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->e:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->f:Lcn/com/xy/sms/sdk/util/D;

    iput-wide p7, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    const-string v0, "xy_msgUrlPool_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/xy/sms/sdk/service/msgurlservice/i;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->f:Lcn/com/xy/sms/sdk/util/D;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->b:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->c:Ljava/lang/String;

    iget-wide v6, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->g:J

    iget-object v8, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->e:Lcn/com/xy/sms/util/SdkCallBack;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcn/com/xy/sms/sdk/service/msgurlservice/i;-><init>(Lcn/com/xy/sms/sdk/service/msgurlservice/h;Lcn/com/xy/sms/sdk/util/D;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcn/com/xy/sms/util/SdkCallBack;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->d:Ljava/util/Map;

    move-object v5, v9

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcn/com/xy/sms/sdk/service/msgurlservice/MsgUrlService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->e:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->f:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->q:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->f:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->p:Ljava/util/Map;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->f:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->q:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/msgurlservice/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
