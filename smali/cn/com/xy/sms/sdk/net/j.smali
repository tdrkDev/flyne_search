.class final Lcn/com/xy/sms/sdk/net/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/net/j;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    const-string v0, "xy-netWebPool"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcn/com/xy/sms/sdk/net/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/net/j;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/net/j;->c:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/net/NetWebUtil;->a(Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
