.class Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitRunnable"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field final synthetic this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;


# direct methods
.method public constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;->context:Landroid/content/Context;

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->initParams(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$InitRunnable;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$000(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method
