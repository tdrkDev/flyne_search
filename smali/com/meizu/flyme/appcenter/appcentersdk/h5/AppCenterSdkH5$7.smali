.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;->c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;->a:Landroid/net/Uri;

    iput-object p3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;->a:Landroid/net/Uri;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;->c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$7;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/meizu/flyme/appcenter/appcentersdk/d;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/e;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;->a(Ljava/lang/String;)V

    .line 392
    return-void
.end method
