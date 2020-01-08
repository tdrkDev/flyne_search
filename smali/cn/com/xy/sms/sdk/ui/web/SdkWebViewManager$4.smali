.class Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$4;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$4;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 459
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$4;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$500(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V

    goto :goto_0

    .line 455
    :pswitch_1
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$4;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$600(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V

    goto :goto_0

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
