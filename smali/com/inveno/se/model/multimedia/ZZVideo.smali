.class public Lcom/inveno/se/model/multimedia/ZZVideo;
.super Ljava/lang/Object;


# instance fields
.field private description:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private play_type:Ljava/lang/String;

.field private thumbnail:Lcom/inveno/se/model/multimedia/Imgs;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/multimedia/ZZVideo;
    .locals 3

    new-instance v0, Lcom/inveno/se/model/multimedia/ZZVideo;

    invoke-direct {v0}, Lcom/inveno/se/model/multimedia/ZZVideo;-><init>()V

    :try_start_0
    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/multimedia/ZZVideo;->setDescription(Ljava/lang/String;)V

    :cond_0
    const-string v1, "thumbnail"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "thumbnail"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/model/multimedia/Imgs;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/multimedia/Imgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/multimedia/ZZVideo;->setThumbnail(Lcom/inveno/se/model/multimedia/Imgs;)V

    :cond_1
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/multimedia/ZZVideo;->setUrl(Ljava/lang/String;)V

    const-string v1, "duration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/multimedia/ZZVideo;->setDuration(Ljava/lang/String;)V

    const-string v1, "play_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "play_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inveno/se/model/multimedia/ZZVideo;->play_type:Ljava/lang/String;

    :cond_2
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inveno/se/model/multimedia/ZZVideo;->title:Ljava/lang/String;

    :cond_3
    const-string v1, "video_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "video_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inveno/se/model/multimedia/ZZVideo;->video_id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getPlay_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->play_type:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Lcom/inveno/se/model/multimedia/Imgs;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->thumbnail:Lcom/inveno/se/model/multimedia/Imgs;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->video_id:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->duration:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Lcom/inveno/se/model/multimedia/Imgs;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->thumbnail:Lcom/inveno/se/model/multimedia/Imgs;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/multimedia/ZZVideo;->url:Ljava/lang/String;

    return-void
.end method
