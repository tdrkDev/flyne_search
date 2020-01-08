.class Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->asyncRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

.field final synthetic val$callBackJSFunc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1;->val$callBackJSFunc:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs execute([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->access$000(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;)Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1$1;

    invoke-direct {v1, p0, p1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1$1;-><init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$1;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method
