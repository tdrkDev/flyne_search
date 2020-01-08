.class public Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;
.super Lcom/meizu/flyme/appcenter/aidl/ICommonCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;)V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback$Stub;-><init>()V

    .line 536
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    .line 537
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 566
    if-ne p0, p1, :cond_1

    .line 569
    :cond_0
    :goto_0
    return v0

    .line 567
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 568
    :cond_3
    check-cast p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;

    .line 569
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    iget-object v1, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCallback(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    iget v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    if-nez v0, :cond_1

    iget v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->action:I

    const/16 v1, 0x2328

    if-le v0, v1, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    iget v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    if-nez v0, :cond_3

    .line 548
    iget-object v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;

    move-result-object v0

    .line 549
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/e;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 550
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string v2, "mstore_data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    const-string v2, "mstore_data"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/e;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;->onCallback(ILjava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$a;->a:Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;

    iget v1, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    iget-object v2, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;->onCallback(ILjava/lang/String;)V

    goto :goto_0
.end method
