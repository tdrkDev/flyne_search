.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/fastjson/e;

.field final synthetic d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->c:Lcom/alibaba/fastjson/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 538
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$2;->c:Lcom/alibaba/fastjson/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->statistics(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V

    .line 539
    return-void
.end method
