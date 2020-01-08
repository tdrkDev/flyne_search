.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/fastjson/e;

.field final synthetic c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->b:Lcom/alibaba/fastjson/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 486
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->c:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->a:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->b:Lcom/alibaba/fastjson/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->statistics(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/e;)V

    .line 487
    const-string v0, "AppCenterSdkH5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickEvent: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | property = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$9;->b:Lcom/alibaba/fastjson/e;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/e;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method
