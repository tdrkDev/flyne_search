.class Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->e(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    const-string v0, "com.meizu.mstore.launch"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const-string v0, "AppCenterSdk"

    const-string v1, "onReceive: action = com.meizu.mstore.launch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const-string v0, "AppCenterSdk"

    const-string v1, "onReceive: start rebind aidl service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$3;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->f(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Landroid/content/Context;)Z

    goto :goto_0
.end method
