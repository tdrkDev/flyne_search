.class Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;->execute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;

.field final synthetic val$obj:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4$1;->this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4$1;->val$obj:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 413
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4$1;->val$obj:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4$1;->val$obj:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lorg/json/JSONObject;

    .line 415
    const-string v1, "queryConversationMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/log/LogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4$1;->this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->access$000(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;)Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4$1;->this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;

    iget-object v3, v3, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$4;->val$callBackJSFunc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 418
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 422
    :catch_0
    move-exception v0

    .line 423
    const-string v1, "SdkWebJavaScript error "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
