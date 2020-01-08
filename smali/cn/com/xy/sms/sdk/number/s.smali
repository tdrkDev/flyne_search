.class final Lcn/com/xy/sms/sdk/number/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/number/s;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/number/s;->a:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/number/r;->b(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V

    return-void
.end method
