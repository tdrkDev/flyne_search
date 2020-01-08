.class public Lcom/meizu/cloud/pushsdk/util/UxIPUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UxIPUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static brandType(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isMeizu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const/4 v0, 0x1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isXiaoMi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    const/4 v0, 0x2

    goto :goto_0

    .line 295
    :cond_2
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isHuaWei()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static buildPlatformMessage(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;-><init>()V

    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 123
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    const-string v2, "task_id"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string v2, "task_id"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    .line 131
    :goto_0
    const-string v2, "seq_id"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    const-string v2, "seq_id"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 134
    :goto_1
    const-string v2, "push_timestamp"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const-string v2, "push_timestamp"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    :goto_2
    const-string v6, "device_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    const-string v1, "device_id"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_0
    invoke-static {}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->builder()Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;

    move-result-object v5

    .line 141
    invoke-virtual {v5, v4}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->taskId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->deviceId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->pushTimesTamp(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->seqId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage$Builder;->build()Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_3
    return-object v0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    const-string v1, "UxIPUtils"

    const-string v2, "the platformExtra parse error"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 150
    :cond_1
    const-string v1, "UxIPUtils"

    const-string v2, "the platformExtra is empty"

    invoke-static {v1, v2}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v3, v1

    goto :goto_1

    :cond_4
    move-object v4, v1

    goto :goto_0
.end method

.method public static getTaskId(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    const-string v0, "extra_app_push_task_Id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    :try_start_0
    const-string v0, "pushMessage"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/MPushMessage;->getTaskId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 84
    const-string v0, "no push platform task"

    .line 85
    const-string v2, "UxIPUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "paese MessageV2 error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public static notificationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 66
    const-string v0, "3.8.2"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->notificationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    return-void
.end method

.method public static notificationEvent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 69
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->getTaskId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "statistics_imei_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->getTaskId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 70
    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onRecordMessageFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public static notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 59
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "3.8.2"

    move-object v0, p0

    move-object v2, p4

    move-object v3, p3

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onRecordMessageFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    :cond_0
    return-void
.end method

.method public static onClickPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 189
    const/4 v1, 0x1

    const-string v6, "cpm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static onDeletePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 167
    const/4 v1, 0x1

    const-string v6, "dpm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static onInvalidPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 193
    const/4 v1, 0x1

    const-string v6, "ipm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 211
    const-string v1, "en"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v1, "ti"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "di"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "ts"

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p7

    :cond_0
    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v1, "pn"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v1, "pv"

    const-string v2, "3.8.2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    const-string v1, "si"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    invoke-static {p0, v0}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->remotePushTracker(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 221
    invoke-static {p0, p1, p6, v0}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;)V

    .line 223
    :cond_2
    return-void
.end method

.method public static onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    const-string v0, "UxIPUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogEvent eventName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] properties = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "notification_service_message"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/QuickTracker;->getAndroidTrackerClassic(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/pushtracer/emitter/RequestCallback;)Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;

    move-result-object v1

    invoke-static {}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;->builder()Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->eventName(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v0

    .line 237
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->brandType(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->brand(I)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v2

    const-string v0, "ts"

    .line 238
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->timestamp(J)Lcom/meizu/cloud/pushsdk/pushtracer/event/Event$Builder;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->eventCreateTime(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v2

    const-string v0, "di"

    .line 240
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->deviceId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v2

    const-string v0, "pn"

    .line 241
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->packageName(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v2

    const-string v0, "pv"

    .line 242
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->pushsdkVersion(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v2

    const-string v0, "ti"

    .line 243
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->taskId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v2

    const-string v0, "si"

    .line 244
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->seqId(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v2

    const-string v0, "pn"

    .line 245
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/meizu/cloud/pushsdk/util/PushPreferencesUtils;->getMessageSeqInCrease(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->messageSeq(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent$Builder;->build()Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;

    move-result-object v0

    .line 235
    invoke-virtual {v1, v0, p1}, Lcom/meizu/cloud/pushsdk/pushtracer/tracker/Tracker;->track(Lcom/meizu/cloud/pushsdk/pushtracer/event/PushEvent;Z)V

    goto/16 :goto_0

    .line 244
    :cond_1
    const-string v0, "si"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1
.end method

.method public static onNoShowPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 201
    const/4 v1, 0x0

    const-string v6, "npm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static onReceivePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 175
    const/4 v1, 0x0

    const-string v6, "rpe"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static onReceiveServerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 205
    const/4 v1, 0x0

    const-string v6, "rsm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static onReceiveThroughMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 183
    const/4 v1, 0x1

    const-string v6, "rpe"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public static onRecordMessageFlow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    const-string v1, "taskId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "deviceId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "package_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v1, "pushsdk_version"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "push_info"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "push_info_type"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v1, 0x0

    const-string v2, "notification_service_message"

    invoke-static {p0, v1, v2, v0}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void
.end method

.method public static onShowInBoxPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 197
    const/4 v1, 0x0

    const-string v6, "sipm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static onShowPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 111
    invoke-static {p2}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->buildPlatformMessage(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/PlatformMessage;->getPushTimesTamp()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onShowPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static onShowPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 159
    const/4 v1, 0x1

    const-string v6, "spm"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/meizu/cloud/pushsdk/util/UxIPUtils;->onLogEvent(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private static remotePushTracker(Landroid/content/Context;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 252
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.meizu.cloud.pushservice.action.PUSH_TRACKER_SERVICE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 257
    if-eqz v3, :cond_4

    .line 258
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 259
    const-string v5, "com.meizu.cloud"

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 260
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 261
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 265
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 266
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 267
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 270
    :cond_1
    :goto_1
    const-string v3, "UxIPUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current process packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 272
    const/4 v1, 0x1

    .line 274
    :try_start_0
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/pushtracer/utils/Util;->mapToJSONObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 276
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v0, "com.meizu.cloud.pushservice.action.PUSH_TRACKER_SERVICE"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v0, "extra_push_tracker"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 280
    const-string v0, "UxIPUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start tracker data in mz_tracker process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/cloud/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 286
    :goto_2
    return v0

    .line 281
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "UxIPUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start RemoteService error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
