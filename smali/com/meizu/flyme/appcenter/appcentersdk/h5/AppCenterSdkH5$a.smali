.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->b:Ljava/lang/String;

    .line 649
    iput-object p3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->c:Ljava/lang/String;

    .line 650
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 654
    const-string v0, "AppCenterSdkH5"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "AppCenterSdkH5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallback: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    const/4 v0, 0x0

    .line 659
    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;
    :try_end_0
    .catch Lcom/alibaba/fastjson/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 663
    :goto_0
    if-nez v0, :cond_1

    .line 664
    new-instance v0, Lcom/alibaba/fastjson/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson/e;-><init>()V

    .line 665
    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_1
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/e;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 668
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_2
    const-string v1, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/e;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 673
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->c(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;

    invoke-direct {v2, p0, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a$1;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$a;Lcom/alibaba/fastjson/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    :cond_3
    return-void

    .line 660
    :catch_0
    move-exception v1

    .line 661
    const-string v1, "AppCenterSdkH5"

    const-string v2, "DownloadCallback: is not a json string"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
