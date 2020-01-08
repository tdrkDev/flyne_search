.class final Lcn/com/xy/sms/sdk/service/f/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:I

.field private final synthetic g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic h:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/com/xy/sms/sdk/Iservice/XyCallBack;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/service/f/j;->a:Z

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/f/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/f/j;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/f/j;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/f/j;->e:Ljava/lang/String;

    iput p6, p0, Lcn/com/xy/sms/sdk/service/f/j;->f:I

    iput-object p7, p0, Lcn/com/xy/sms/sdk/service/f/j;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput-boolean p8, p0, Lcn/com/xy/sms/sdk/service/f/j;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    const-string v0, "xy_query_pubinfo_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcn/com/xy/sms/sdk/net/NetUtil;->isEnhance()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/com/xy/sms/sdk/service/f/j;->a:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->checkAccessNetWork(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/f/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/f/j;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/f/j;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/service/f/j;->e:Ljava/lang/String;

    iget v5, p0, Lcn/com/xy/sms/sdk/service/f/j;->f:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/com/xy/sms/sdk/service/f/j;->g:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcn/com/xy/sms/sdk/service/f/j;->h:Z

    invoke-static/range {v0 .. v10}, Lcn/com/xy/sms/sdk/service/f/b;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;IZZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
