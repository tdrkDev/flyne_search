.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->doAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

.field final synthetic b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$3;->b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$3;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$3;->b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$3;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->registerGlobalListener(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    .line 221
    return-void
.end method
