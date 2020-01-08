.class Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;
.super Lcom/meizu/flyme/appcenter/aidl/ICommonCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;->getRecommendApps(ZLjava/lang/String;Ljava/lang/String;IJLcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;

.field final synthetic b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;->b:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;

    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;

    if-eqz v0, :cond_0

    .line 243
    iget v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    if-nez v0, :cond_1

    .line 244
    iget-object v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    const-class v1, Lcom/meizu/flyme/appcenter/appcentersdk/data/SdkAppItem;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/a;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;

    invoke-interface {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;->a(Ljava/util/List;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$2;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;

    iget v1, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    iget-object v2, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$c;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
