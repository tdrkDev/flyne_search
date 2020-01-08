.class public Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;
.super Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/cloud/pushsdk/PushMessageProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultPushMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;


# direct methods
.method public constructor <init>(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 213
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 219
    :cond_1
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    return-void
.end method

.method public onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method public onNotificationArrived(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onNotificationArrived(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V

    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method public onNotificationClicked(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 326
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onNotificationClicked(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V

    goto :goto_0

    .line 330
    :cond_1
    return-void
.end method

.method public onNotificationDeleted(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onNotificationDeleted(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/handler/MzPushMessage;)V

    goto :goto_0

    .line 350
    :cond_1
    return-void
.end method

.method public onNotifyMessageArrived(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 356
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onNotifyMessageArrived(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_1
    return-void
.end method

.method public onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 276
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onPushStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V

    goto :goto_0

    .line 280
    :cond_1
    return-void
.end method

.method public onRegister(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 225
    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onRegister(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :cond_1
    return-void
.end method

.method public onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 286
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/RegisterStatus;)V

    goto :goto_0

    .line 290
    :cond_1
    return-void
.end method

.method public onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 315
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 316
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onSubAliasStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubAliasStatus;)V

    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method public onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 306
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onSubTagsStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V

    goto :goto_0

    .line 310
    :cond_1
    return-void
.end method

.method public onUnRegister(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 256
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onUnRegister(Landroid/content/Context;Z)V

    goto :goto_0

    .line 260
    :cond_1
    return-void
.end method

.method public onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1, p2}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onUnRegisterStatus(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/platform/message/UnRegisterStatus;)V

    goto :goto_0

    .line 300
    :cond_1
    return-void
.end method

.method public onUpdateNotificationBuilder(Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/PushMessageProxy$DefaultPushMessageListener;->this$0:Lcom/meizu/cloud/pushsdk/PushMessageProxy;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/PushMessageProxy;->access$000(Lcom/meizu/cloud/pushsdk/PushMessageProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0, p1}, Lcom/meizu/cloud/pushsdk/handler/AbstractAppLogicListener;->onUpdateNotificationBuilder(Lcom/meizu/cloud/pushsdk/notification/PushNotificationBuilder;)V

    goto :goto_0

    .line 270
    :cond_1
    return-void
.end method
