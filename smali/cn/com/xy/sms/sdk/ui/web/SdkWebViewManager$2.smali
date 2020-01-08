.class Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;
.super Landroid/webkit/WebViewClient;
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
    .line 137
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$202(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;Z)Z

    .line 164
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$300(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)V

    .line 165
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 156
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p4}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->setEndUrl(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 140
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
