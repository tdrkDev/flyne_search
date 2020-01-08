.class Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;->execute([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;

.field final synthetic val$obj:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2$1;->this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2$1;->val$obj:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2$1;->this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->access$000(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;)Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    move-result-object v0

    invoke-interface {v0}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2$1;->this$1:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;

    iget-object v2, v2, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2;->val$callBackJSFunc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2$1;->val$obj:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$2$1;->val$obj:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    return-void
.end method
