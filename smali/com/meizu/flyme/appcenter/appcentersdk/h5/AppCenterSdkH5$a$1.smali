.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->onCallback(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/fastjson/e;

.field final synthetic b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;Lcom/alibaba/fastjson/e;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;->b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;->a:Lcom/alibaba/fastjson/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;->b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    iget-object v0, v0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 678
    const-string v0, "javascript:%s(\'%s\')"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;->b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    invoke-static {v3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;->a:Lcom/alibaba/fastjson/e;

    invoke-static {v3}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 679
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;->b:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;

    iget-object v1, v1, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;->a(Ljava/lang/String;)V

    .line 680
    const-string v1, "AppCenterSdkH5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallback: execute jsFuc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    return-void
.end method
