.class public Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GET_PUBLIC_KEY:Ljava/lang/String; = "https://api-push.meizu.com/garcia/api/server/getPublicKey"

.field public static final TAG:Ljava/lang/String; = "PushAPI"


# instance fields
.field public API_SERVER:Ljava/lang/String;

.field private CHANGE_ALL_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

.field private CHANGE_NOTIFICATION_SWITCH_URI_PRIX:Ljava/lang/String;

.field private CHANGE_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

.field private CHECK_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

.field private CHECK_SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

.field private CHECK_SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

.field private REGISTER_URL_PRIX:Ljava/lang/String;

.field private SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

.field private SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

.field private UNREGISTER_URL_ADVANCE_PRIX:Ljava/lang/String;

.field private UNREGISTER_URL_PRIX:Ljava/lang/String;

.field private UNSUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

.field private UNSUBSCRIBE_ALL_TAGS_URL_RPIX:Ljava/lang/String;

.field private UNSUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

.field private UPLOAD_LOG_FILE_URL_PRIX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "https://api-push.meizu.com/garcia/api/client/"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/registerPush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->REGISTER_URL_PRIX:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unRegisterPush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNREGISTER_URL_PRIX:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "advance/unRegisterPush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNREGISTER_URL_ADVANCE_PRIX:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/getRegisterSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/changeRegisterSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/changeAllSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_ALL_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/subscribeTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unSubscribeTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unSubAllTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALL_TAGS_URL_RPIX:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/getSubTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/subscribeAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unSubscribeAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/getSubAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "log/upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UPLOAD_LOG_FILE_URL_PRIX:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "advance/changeRegisterSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_NOTIFICATION_SWITCH_URI_PRIX:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->enableLogging()V

    .line 49
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isInternational()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isIndiaLocal()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    const-string v0, "https://api-push.in.meizu.com/garcia/api/client/"

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/registerPush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->REGISTER_URL_PRIX:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unRegisterPush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNREGISTER_URL_PRIX:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "advance/unRegisterPush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNREGISTER_URL_ADVANCE_PRIX:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/getRegisterSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/changeRegisterSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/changeAllSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_ALL_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/subscribeTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unSubscribeTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unSubAllTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALL_TAGS_URL_RPIX:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/getSubTags"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/subscribeAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/unSubscribeAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message/getSubAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->API_SERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "advance/changeRegisterSwitch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_NOTIFICATION_SWITCH_URI_PRIX:Ljava/lang/String;

    .line 66
    :cond_1
    return-void
.end method


# virtual methods
.method public changeNotificationSwitch(Ljava/lang/String;Ljava/lang/String;I)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 175
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 176
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "subSwitch"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 181
    const-string v2, "sign"

    const-string v3, "4a2ca769d79f4856bb3bd982d30de790"

    invoke-static {v0, v3}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advance change notification switch post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_NOTIFICATION_SWITCH_URI_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 184
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 183
    return-object v0
.end method

.method public checkPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 211
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 212
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 215
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 216
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 218
    return-object v0
.end method

.method public checkPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 194
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 197
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 198
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 203
    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 204
    return-void
.end method

.method public checkSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 544
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 545
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 548
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 549
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 552
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 551
    return-object v0
.end method

.method public checkSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 527
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 528
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 531
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 532
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 535
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 537
    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 538
    return-void
.end method

.method public checkSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 432
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 433
    const-string v1, "appId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v1, "pushId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 436
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 437
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 439
    return-object v0
.end method

.method public checkSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 414
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 415
    const-string v1, "appId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v1, "pushId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 418
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 419
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHECK_SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 422
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 424
    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 425
    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 94
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 95
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 98
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 99
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->REGISTER_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 76
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 80
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->REGISTER_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 86
    return-void
.end method

.method public subScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 470
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 471
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v1, "alias"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 476
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 477
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 480
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 479
    return-object v0
.end method

.method public subScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 449
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 450
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v1, "appKey"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "alias"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 455
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 456
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 461
    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 462
    return-void
.end method

.method public subScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 323
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 324
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v1, "tags"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 328
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 329
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 332
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 331
    return-object v0
.end method

.method public subScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 304
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 305
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v1, "tags"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 309
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 310
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->SUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 313
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 315
    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 316
    return-void
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 248
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 249
    const-string v0, "appId"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v0, "pushId"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v0, "msgType"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "subSwitch"

    if-eqz p5, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 255
    const-string v2, "sign"

    invoke-static {v1, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switchPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 257
    return-object v0

    .line 252
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 286
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 287
    const-string v0, "appId"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v0, "pushId"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v2, "subSwitch"

    if-eqz p4, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 291
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 292
    const-string v2, "sign"

    invoke-static {v1, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v1, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_ALL_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switchPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_ALL_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v1

    .line 295
    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 294
    return-object v0

    .line 289
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 228
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 229
    const-string v0, "appId"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v0, "pushId"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v0, "msgType"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v2, "subSwitch"

    if-eqz p5, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 234
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 235
    const-string v2, "sign"

    invoke-static {v1, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v1, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switchPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_REGISTER_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 240
    invoke-virtual {v0, p6}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 241
    return-void

    .line 232
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 267
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 268
    const-string v0, "appId"

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v0, "pushId"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "subSwitch"

    if-eqz p4, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 272
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 273
    const-string v2, "sign"

    invoke-static {v1, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v1, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_ALL_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switchPush post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->CHANGE_ALL_SWITCH_STATUS_URL_PRIX:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 278
    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 279
    return-void

    .line 270
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public unRegister(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 158
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 161
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 162
    const-string v2, "sign"

    const-string v3, "4a2ca769d79f4856bb3bd982d30de790"

    invoke-static {v0, v3}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advance unregister post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNREGISTER_URL_ADVANCE_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public unRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 142
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 143
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNREGISTER_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method public unRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 120
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 121
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNREGISTER_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->get(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->addQueryParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$GetRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 127
    return-void
.end method

.method public unSubAllScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 396
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 397
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 400
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 401
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeAllTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALL_TAGS_URL_RPIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 404
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 403
    return-object v0
.end method

.method public unSubAllScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 378
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 379
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 382
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 383
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeAllTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALL_TAGS_URL_RPIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 388
    invoke-virtual {v0, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 389
    return-void
.end method

.method public unSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 509
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 510
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v1, "alias"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 514
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 515
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 518
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 517
    return-object v0
.end method

.method public unSubScribeAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 489
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 490
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v1, "alias"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 494
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 495
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_ALIAS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 498
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 500
    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 501
    return-void
.end method

.method public unSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4

    .prologue
    .line 360
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 361
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "tags"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 365
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 366
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 369
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 368
    return-object v0
.end method

.method public unSubScribeTags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V
    .locals 4

    .prologue
    .line 341
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 342
    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v1, "pushId"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "tags"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 346
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 347
    const-string v2, "sign"

    invoke-static {v0, p2}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subScribeTags post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UNSUBSCRIBE_TAGS_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->post(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->addBodyParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$PostRequestBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 352
    invoke-virtual {v0, p5}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->getAsOkHttpResponseAndString(Lcom/meizu/cloud/pushsdk/networking/interfaces/OkHttpResponseAndStringRequestListener;)V

    .line 353
    return-void
.end method

.method public uploadLogFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 560
    const-string v1, "msgId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const-string v1, "deviceId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 563
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 564
    const-string v2, "sign"

    const-string v3, "4a2ca769d79f4856bb3bd982d30de790"

    invoke-static {v0, v3}, Lcom/meizu/cloud/pushsdk/platform/SignUtils;->getSignature(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    const-string v0, "errorMsg"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    :cond_0
    const-string v0, "PushAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadLogFile post map "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->UPLOAD_LOG_FILE_URL_PRIX:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/networking/AndroidNetworking;->upload(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    .line 570
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->addMultipartParameter(Ljava/util/HashMap;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    const-string v1, "logFile"

    .line 571
    invoke-virtual {v0, v1, p4}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->addMultipartFile(Ljava/lang/String;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest$MultiPartBuilder;->build()Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;

    move-result-object v0

    .line 573
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANRequest;->executeForString()Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    .line 574
    return-object v0
.end method
