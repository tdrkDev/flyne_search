.class final Lcn/com/xy/sms/sdk/service/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/util/Map;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Ljava/lang/String;

.field private final synthetic l:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/g/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/g/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/g/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/g/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/g/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/g/c;->f:Ljava/util/Map;

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/g/c;->g:Ljava/lang/String;

    iput-object p8, p0, Lcn/com/xy/sms/sdk/service/g/c;->h:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/xy/sms/sdk/service/g/c;->i:Ljava/lang/String;

    iput-object p10, p0, Lcn/com/xy/sms/sdk/service/g/c;->j:Ljava/lang/String;

    iput-object p11, p0, Lcn/com/xy/sms/sdk/service/g/c;->k:Ljava/lang/String;

    iput-object p12, p0, Lcn/com/xy/sms/sdk/service/g/c;->l:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    const-string v0, "xy_service_data_query"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    new-instance v0, Lcn/com/xy/sms/sdk/service/g/d;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/g/c;->g:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/g/c;->h:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/g/c;->i:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/g/c;->j:Ljava/lang/String;

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/g/c;->k:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/g/c;->l:Lcn/com/xy/sms/util/SdkCallBack;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcn/com/xy/sms/sdk/service/g/d;-><init>(Lcn/com/xy/sms/sdk/service/g/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/g/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/g/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/g/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/g/c;->d:Ljava/lang/String;

    iget-object v5, p0, Lcn/com/xy/sms/sdk/service/g/c;->e:Ljava/lang/String;

    iget-object v7, p0, Lcn/com/xy/sms/sdk/service/g/c;->f:Ljava/util/Map;

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcn/com/xy/sms/sdk/service/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
