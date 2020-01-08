.class Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->doConversationStateChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$5;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$5;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$800(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:callBackData(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$5;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    .line 470
    invoke-static {v2}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$700(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 471
    return-void
.end method
