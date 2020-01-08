.class Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp;Landroid/webkit/JsResult;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp$3;->this$0:Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp$3;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/BaseActivityForWebViewImp$3;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 183
    return-void
.end method
