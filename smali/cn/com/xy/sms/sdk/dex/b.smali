.class final Lcn/com/xy/sms/sdk/dex/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:J

.field private final synthetic g:Ljava/util/Map;

.field private final synthetic h:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/dex/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/dex/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/dex/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/dex/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/dex/b;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcn/com/xy/sms/sdk/dex/b;->f:J

    iput-object p8, p0, Lcn/com/xy/sms/sdk/dex/b;->g:Ljava/util/Map;

    iput-object p9, p0, Lcn/com/xy/sms/sdk/dex/b;->h:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v0, 0x13

    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x0

    const-string v1, "cn.com.xy.sms.sdk.Iservice.ParseUtilConversation"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/dex/DexUtil;->getClassBymap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "handleParseMsg"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/com/xy/sms/sdk/dex/b;->a:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcn/com/xy/sms/sdk/dex/b;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcn/com/xy/sms/sdk/dex/b;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcn/com/xy/sms/sdk/dex/b;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcn/com/xy/sms/sdk/dex/b;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/dex/b;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcn/com/xy/sms/sdk/dex/b;->g:Ljava/util/Map;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcn/com/xy/sms/sdk/dex/b;->h:Lorg/json/JSONObject;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
