.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;
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
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iput-wide p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->a:J

    iput-object p4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->d:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;

    move-result-object v0

    iget-wide v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->a:J

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$1;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/flyme/appcenter/appcentersdk/d;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/meizu/flyme/appcenter/appcentersdk/e;->a(JLjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$c;->a(Ljava/lang/String;)V

    .line 182
    return-void
.end method
