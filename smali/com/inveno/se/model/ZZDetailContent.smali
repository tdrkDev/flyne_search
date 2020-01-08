.class public Lcom/inveno/se/model/ZZDetailContent;
.super Ljava/lang/Object;


# instance fields
.field private imgs:Lcom/inveno/se/model/multimedia/Imgs;

.field private paragraph:Ljava/lang/String;

.field private videos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/multimedia/ZZVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZDetailContent;
    .locals 6

    new-instance v0, Lcom/inveno/se/model/ZZDetailContent;

    invoke-direct {v0}, Lcom/inveno/se/model/ZZDetailContent;-><init>()V

    :try_start_0
    const-string v1, "paragraph"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "paragraph"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZDetailContent;->setParagraph(Ljava/lang/String;)V

    :cond_0
    const-string v1, "paragraph_image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "paragraph_image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/model/multimedia/Imgs;->parseZZ(Lorg/json/JSONObject;)Lcom/inveno/se/model/multimedia/Imgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZDetailContent;->setImgs(Lcom/inveno/se/model/multimedia/Imgs;)V

    :cond_1
    const-string v1, "body_videos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "body_videos"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/inveno/se/model/multimedia/ZZVideo;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/multimedia/ZZVideo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Lcom/inveno/se/model/ZZDetailContent;->setVideos(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getImgs()Lcom/inveno/se/model/multimedia/Imgs;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZDetailContent;->imgs:Lcom/inveno/se/model/multimedia/Imgs;

    return-object v0
.end method

.method public getParagraph()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZDetailContent;->paragraph:Ljava/lang/String;

    return-object v0
.end method

.method public getVideos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/multimedia/ZZVideo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/model/ZZDetailContent;->videos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setImgs(Lcom/inveno/se/model/multimedia/Imgs;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZDetailContent;->imgs:Lcom/inveno/se/model/multimedia/Imgs;

    return-void
.end method

.method public setParagraph(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZDetailContent;->paragraph:Ljava/lang/String;

    return-void
.end method

.method public setVideos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/multimedia/ZZVideo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/model/ZZDetailContent;->videos:Ljava/util/ArrayList;

    return-void
.end method
