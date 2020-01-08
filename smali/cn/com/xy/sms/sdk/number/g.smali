.class final Lcn/com/xy/sms/sdk/number/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/number/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/number/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/number/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/number/g;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/number/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/number/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/number/g;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static {v0, v1, v2, v3}, Lcn/com/xy/sms/sdk/number/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)Ljava/io/File;

    return-void
.end method
