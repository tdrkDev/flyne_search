.class Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->postData(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

.field final synthetic val$json:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;->val$json:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$800(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$800(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:callBackData(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$6;->val$json:Lorg/json/JSONObject;

    .line 514
    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 513
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 516
    :cond_0
    return-void
.end method
