.class public Lcom/inveno/se/model/ZZNewsDetail;
.super Ljava/lang/Object;


# instance fields
.field private allow_comment:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private cpack:Ljava/lang/String;

.field private detailContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/ZZDetailContent;",
            ">;"
        }
    .end annotation
.end field

.field private error_msg:Ljava/lang/String;

.field private favorite:Ljava/lang/String;

.field private headVideo:Lcom/inveno/se/model/multimedia/ZZVideo;

.field private headimage:Ljava/lang/String;

.field private origin_url:Ljava/lang/String;

.field private server_time:Ljava/lang/String;

.field private share_url:Ljava/lang/String;

.field private upack:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNewsDetail;
    .locals 6

    new-instance v0, Lcom/inveno/se/model/ZZNewsDetail;

    invoke-direct {v0}, Lcom/inveno/se/model/ZZNewsDetail;-><init>()V

    :try_start_0
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setCode(Ljava/lang/String;)V

    const-string v1, "error_msg"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setError_msg(Ljava/lang/String;)V

    const-string v1, "server_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setServer_time(Ljava/lang/String;)V

    const-string v1, "cpack"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setCpack(Ljava/lang/String;)V

    const-string v1, "allow_comment"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setAllow_comment(Ljava/lang/String;)V

    const-string v1, "upack"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "upack"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setUpack(Ljava/lang/String;)V

    :cond_0
    const-string v1, "share_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "share_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setShare_url(Ljava/lang/String;)V

    :cond_1
    const-string v1, "favorite"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "favorite"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setFavorite(Ljava/lang/String;)V

    :cond_2
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setUrl(Ljava/lang/String;)V

    :cond_3
    const-string v1, "headimage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "headimage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setHeadimage(Ljava/lang/String;)V

    :cond_4
    const-string v1, "paragraphs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "paragraphs"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/inveno/se/model/ZZDetailContent;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZDetailContent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v4}, Lcom/inveno/se/model/ZZNewsDetail;->setDetailContents(Ljava/util/ArrayList;)V

    :cond_6
    const-string v1, "origin_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "origin_url"

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsDetail;->setOrigin_url(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
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
.method public getAllow_comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->allow_comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCpack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->cpack:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/ZZDetailContent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->detailContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getError_msg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->error_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getFavorite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->favorite:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadVideo()Lcom/inveno/se/model/multimedia/ZZVideo;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->headVideo:Lcom/inveno/se/model/multimedia/ZZVideo;

    return-object v0
.end method

.method public getHeadimage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->headimage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->origin_url:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->server_time:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUpack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->upack:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsDetail;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAllow_comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->allow_comment:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->code:Ljava/lang/String;

    return-void
.end method

.method public setCpack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->cpack:Ljava/lang/String;

    return-void
.end method

.method public setDetailContents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/ZZDetailContent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->detailContents:Ljava/util/ArrayList;

    return-void
.end method

.method public setError_msg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->error_msg:Ljava/lang/String;

    return-void
.end method

.method public setFavorite(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->favorite:Ljava/lang/String;

    return-void
.end method

.method public setHeadVideo(Lcom/inveno/se/model/multimedia/ZZVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->headVideo:Lcom/inveno/se/model/multimedia/ZZVideo;

    return-void
.end method

.method public setHeadimage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->headimage:Ljava/lang/String;

    return-void
.end method

.method public setOrigin_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->origin_url:Ljava/lang/String;

    return-void
.end method

.method public setServer_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->server_time:Ljava/lang/String;

    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->share_url:Ljava/lang/String;

    return-void
.end method

.method public setUpack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->upack:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsDetail;->url:Ljava/lang/String;

    return-void
.end method
