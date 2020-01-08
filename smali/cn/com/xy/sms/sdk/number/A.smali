.class final Lcn/com/xy/sms/sdk/number/A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Ljava/util/Map;

.field private final synthetic e:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/number/A;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/number/A;->b:Ljava/lang/String;

    iput p3, p0, Lcn/com/xy/sms/sdk/number/A;->c:I

    iput-object p4, p0, Lcn/com/xy/sms/sdk/number/A;->d:Ljava/util/Map;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/number/A;->e:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/A;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/A;->b:Ljava/lang/String;

    iget v2, p0, Lcn/com/xy/sms/sdk/number/A;->c:I

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/number/z;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/A;->d:Ljava/util/Map;

    new-instance v2, Lcn/com/xy/sms/sdk/number/B;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/number/A;->e:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/number/A;->a:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcn/com/xy/sms/sdk/number/B;-><init>(Lcn/com/xy/sms/sdk/number/A;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/service/c/n;->a(Ljava/util/Map;Ljava/util/Map;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method
