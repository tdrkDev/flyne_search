.class Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/appcenter/appcentersdk/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->init(Landroid/content/Context;)V
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
    .line 83
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "AppCenterSdk"

    const-string v1, "onConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->b(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;Z)Z

    .line 91
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->c(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V

    .line 92
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "AppCenterSdk"

    const-string v1, "onDisConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->a(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;Z)Z

    .line 98
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->d(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;)V

    .line 99
    return-void
.end method
