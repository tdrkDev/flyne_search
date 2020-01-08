.class final Lcn/com/xy/sms/sdk/service/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J

.field private final synthetic f:Ljava/util/Map;

.field private final synthetic g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/a/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/a/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/a/c;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/sdk/service/a/c;->e:J

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/a/c;->f:Ljava/util/Map;

    iput-object p8, p0, Lcn/com/xy/sms/sdk/service/a/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    const-string v0, "xy_feature_parse_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/a/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/a/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/a/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/a/c;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/sdk/service/a/c;->e:J

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/a/c;->f:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/sdk/service/a/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/a/c;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
