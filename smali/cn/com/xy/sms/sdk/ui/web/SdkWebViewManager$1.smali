.class Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
    .line 128
    iput-object p1, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$1;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9

    .prologue
    .line 132
    iget-object v0, p0, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager$1;->this$0:Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;->access$100(Lcn/com/xy/sms/sdk/ui/web/SdkWebViewManager;)Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcn/com/xy/sms/sdk/ui/web/IActivityForWebView;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 133
    return-void
.end method
