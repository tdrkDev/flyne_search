.class Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->queryJson(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

.field final synthetic val$aType:Ljava/lang/String;

.field final synthetic val$jsObj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->val$aType:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->val$jsObj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    invoke-static {v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->access$000(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;)Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;

    move-result-object v1

    invoke-interface {v1}, Lcn/com/xy/sms/sdk/ui/web/IActivityParamForJS;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->val$aType:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->val$jsObj:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcn/com/xy/sms/sdk/util/ConversationManager;->queryConversationMsg(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->access$102(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 368
    const-string v0, "queryConversationMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    invoke-static {v2}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcn/com/xy/sms/sdk/util/JsonUtil;->jsonObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/log/LogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/com/xy/sms/sdk/ui/web/SdkWebJavaScript;->postData(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    const-string v1, "SdkWebJavaScript error "

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
