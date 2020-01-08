.class final Lcn/com/xy/sms/sdk/service/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Lcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/d;->c:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lcn/com/xy/sms/sdk/service/c/e;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/d;->c:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {v0, p0, v1}, Lcn/com/xy/sms/sdk/service/c/e;-><init>(Lcn/com/xy/sms/sdk/service/c/d;Lcn/com/xy/sms/util/SdkCallBack;)V

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/d;->a:Ljava/util/List;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/net/util/j;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "phonemenu"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcn/com/xy/sms/sdk/net/NetUtil;->executeServiceHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method
