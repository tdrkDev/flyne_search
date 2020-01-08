.class Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->initWebView()V
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
    .line 181
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 194
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 215
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 232
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$400(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->postData(Z)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 236
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 237
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 238
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 248
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method
