.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

.field final synthetic d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;ILcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->a:Ljava/lang/String;

    iput p3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->b:I

    iput-object p4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->a:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->b:I

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$4;->c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->registerListener(Ljava/lang/String;ILcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V

    .line 255
    return-void
.end method
