.class public Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;
.super Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy",
        "<",
        "Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHECK_PUSH:I = 0x2

.field public static final SWITCH_ALL:I = 0x3

.field public static final SWITCH_NOTIFICATION:I = 0x0

.field public static final SWITCH_THROUGH_MESSAGE:I = 0x1


# instance fields
.field private pushId:Ljava/lang/String;

.field private pushStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private switchType:I

.field switcher:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;-><init>(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 48
    iput-boolean p4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->enableRPC:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/Strategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushStatusMap:Ljava/util/Map;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 39
    iput-object p4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private changeSyncPushStatus(Z)V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushStatusMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-void
.end method

.method private hasNotificationSwitch()Z
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->hasNotificationSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasThroughMessageSwitch()Z
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->hasThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isSyncPushStatus()Z
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushStatusMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 279
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 280
    :goto_0
    const-string v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSyncPushStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch type->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flag->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v0

    .line 279
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notificationSwitch()Z
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private switchAll(Z)V
    .locals 2

    .prologue
    .line 248
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->setNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 249
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_1
    invoke-static {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->setThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 250
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private switchNotification(Z)V
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->setNotificationMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 241
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private switchThroughMessage(Z)V
    .locals 2

    .prologue
    .line 244
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->setThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 245
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private throughMessageSwitch()Z
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getThroughMessageSwitchStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected feedBackErrorResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>()V

    .line 71
    const-string v1, "20001"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const-string v1, "appId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "appKey not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "pushId not empty"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic localResponse()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->localResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected localResponse()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .locals 2

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    packed-switch v1, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    return-object v0

    .line 217
    :pswitch_1
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchAll(Z)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchNotification(Z)V

    goto :goto_0

    .line 223
    :pswitch_3
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchThroughMessage(Z)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected matchCondition()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    move-result-object v0

    return-object v0
.end method

.method protected netWorkRequest()Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 112
    new-instance v6, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {v6}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>()V

    .line 113
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setPushId(Ljava/lang/String;)V

    .line 114
    const-string v0, "200"

    invoke-virtual {v6, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    .line 116
    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 164
    new-instance v1, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v0, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "network pushSwitchStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "200"

    invoke-virtual {v6}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, v8}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->changeSyncPushStatus(Z)V

    .line 169
    const-string v0, "Strategy"

    const-string v2, "update local switch preference"

    invoke-static {v0, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchNotificationMessage()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 171
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchThroughMessage()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    .line 172
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchNotificationMessage()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchNotification(Z)V

    .line 173
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->isSwitchThroughMessage()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchThroughMessage(Z)V

    .line 185
    :cond_0
    :goto_1
    const-string v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRPC "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->enableRPC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportRemoteInvoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->isSupportRemoteInvoke:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->enableRPC:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->isSupportRemoteInvoke:Z

    if-nez v0, :cond_1

    .line 187
    iget v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    packed-switch v0, :pswitch_data_1

    .line 198
    :cond_1
    :goto_2
    :pswitch_0
    return-object v6

    .line 118
    :pswitch_1
    const-string v1, "CHECK_PUSH"

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->hasNotificationSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->hasThroughMessageSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->isSyncPushStatus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->notificationSwitch()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 121
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->throughMessageSwitch()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto/16 :goto_0

    .line 123
    :cond_2
    invoke-direct {p0, v7}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->changeSyncPushStatus(Z)V

    .line 124
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->checkPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 128
    :pswitch_2
    const-string v1, "SWITCH_ALL"

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->notificationSwitch()Z

    move-result v1

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->throughMessageSwitch()Z

    move-result v1

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->isSyncPushStatus()Z

    move-result v1

    if-nez v1, :cond_3

    .line 130
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 131
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto/16 :goto_0

    .line 133
    :cond_3
    invoke-direct {p0, v7}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->changeSyncPushStatus(Z)V

    .line 134
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchAll(Z)V

    .line 135
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :pswitch_3
    const-string v1, "SWITCH_NOTIFICATION"

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->notificationSwitch()Z

    move-result v1

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->isSyncPushStatus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 141
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 142
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->throughMessageSwitch()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto/16 :goto_0

    .line 144
    :cond_4
    invoke-direct {p0, v7}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->changeSyncPushStatus(Z)V

    .line 145
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchNotification(Z)V

    .line 146
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    iget-boolean v5, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :pswitch_4
    const-string v1, "SWITCH_THROUGH_MESSAGE"

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->throughMessageSwitch()Z

    move-result v1

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->isSyncPushStatus()Z

    move-result v1

    if-nez v1, :cond_5

    .line 152
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->notificationSwitch()Z

    move-result v1

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchNotificationMessage(Z)V

    .line 153
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setSwitchThroughMessage(Z)V

    goto/16 :goto_0

    .line 155
    :cond_5
    invoke-direct {p0, v7}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->changeSyncPushStatus(Z)V

    .line 156
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchThroughMessage(Z)V

    .line 157
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushAPI:Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    iget v4, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    iget-boolean v5, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/platform/api/PushAPI;->switchPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 176
    :cond_6
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/common/ANResponse;->getError()Lcom/meizu/cloud/pushsdk/networking/error/ANError;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 178
    const-string v1, "Strategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getResponse()Lcom/meizu/cloud/pushsdk/networking/http/Response;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_7
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setCode(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/error/ANError;->getErrorBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;->setMessage(Ljava/lang/String;)V

    .line 182
    const-string v0, "Strategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushSwitchStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 190
    :pswitch_5
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    iget-boolean v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->switchPushMessageSetting(Landroid/content/Context;IZLjava/lang/String;)V

    goto/16 :goto_2

    .line 193
    :pswitch_6
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0, v8, v1, v2}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->switchPushMessageSetting(Landroid/content/Context;IZLjava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0, v7, v1, v2}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->switchPushMessageSetting(Landroid/content/Context;IZLjava/lang/String;)V

    goto/16 :goto_2

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 187
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    return-void
.end method

.method protected sendReceiverMessage(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 2

    .prologue
    .line 231
    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyPackageNanme:Ljava/lang/String;

    :goto_0
    invoke-static {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->sendPushStatus(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    .line 232
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected sendRpcRequest()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 85
    const-string v0, "app_id"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v0, "app_key"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->appKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v0, "strategy_package_name"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v0, "push_id"

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v0, "strategy_type"

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->strategyType()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v0, "strategy_child_type"

    iget v2, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v2, "strategy_params"

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    return-object v1

    .line 91
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->pushId:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSwitchType(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switchType:I

    .line 57
    return-void
.end method

.method public setSwitcher(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/meizu/cloud/pushsdk/platform/pushstrategy/SwitchStatusStrategy;->switcher:Z

    .line 53
    return-void
.end method

.method protected strategyType()I
    .locals 1

    .prologue
    .line 236
    const/16 v0, 0x10

    return v0
.end method
