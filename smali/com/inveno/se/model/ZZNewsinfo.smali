.class public Lcom/inveno/se/model/ZZNewsinfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static LONG_CLICK_SWITCH:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adObject:Ljava/lang/Object;

.field private author:Ljava/lang/String;

.field private bannerZZ:I

.field private body_size:Ljava/lang/String;

.field private categories:Ljava/lang/String;

.field private click_count:Ljava/lang/String;

.field private comment_count:Ljava/lang/String;

.field private content_id:Ljava/lang/String;

.field private content_type:Ljava/lang/String;

.field private cpack:Ljava/lang/String;

.field private cpid:Ljava/lang/String;

.field private dataSrc:Ljava/lang/String;

.field private dislike_count:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private erotic_score:Ljava/lang/String;

.field private flag:Ljava/lang/String;

.field private headimage:Lcom/inveno/se/model/multimedia/Imgs;

.field private imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/multimedia/Imgs;",
            ">;"
        }
    .end annotation
.end field

.field private isPVReport:Z

.field private isReport:Z

.field private keywords:Ljava/lang/String;

.field private like_count:Ljava/lang/String;

.field private link_type:Ljava/lang/String;

.field private news_score:Ljava/lang/String;

.field private origin_url:Ljava/lang/String;

.field private publish_time:Ljava/lang/String;

.field private server_time:Ljava/lang/String;

.field private share_count:Ljava/lang/String;

.field private share_url:Ljava/lang/String;

.field private social_score:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private top:Ljava/lang/String;

.field private top_ttl:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private zZVideo:Lcom/inveno/se/model/multimedia/ZZVideo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/inveno/se/model/ZZNewsinfo;->LONG_CLICK_SWITCH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->isReport:Z

    iput-boolean v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->isPVReport:Z

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNewsinfo;
    .locals 6

    new-instance v0, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-direct {v0}, Lcom/inveno/se/model/ZZNewsinfo;-><init>()V

    :try_start_0
    const-string v1, "content_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "content_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setContent_id(Ljava/lang/String;)V

    :cond_0
    const-string v1, "content_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "content_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setContent_type(Ljava/lang/String;)V

    :cond_1
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setTitle(Ljava/lang/String;)V

    :cond_2
    const-string v1, "display"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "display"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setDisplay(Ljava/lang/String;)V

    :cond_3
    const-string v1, "link_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "link_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setLink_type(Ljava/lang/String;)V

    :cond_4
    const-string v1, "cpack"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "cpack"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setCpack(Ljava/lang/String;)V

    :cond_5
    const-string v1, "publish_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "publish_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setPublish_time(Ljava/lang/String;)V

    :cond_6
    const-string v1, "server_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "server_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setServer_time(Ljava/lang/String;)V

    :cond_7
    const-string v1, "is_Report"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "is_Report"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setReport(Z)V

    :cond_8
    const-string v1, "list_images"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_b

    :try_start_1
    const-string v1, "list_images"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_a

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/inveno/se/model/multimedia/Imgs;->parseZZ(Lorg/json/JSONObject;)Lcom/inveno/se/model/multimedia/Imgs;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    invoke-virtual {v0, v4}, Lcom/inveno/se/model/ZZNewsinfo;->setImgs(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    :goto_1
    :try_start_2
    const-string v1, "headvideo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_c

    :try_start_3
    const-string v1, "headvideo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/model/multimedia/ZZVideo;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/multimedia/ZZVideo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setHeadVideo(Lcom/inveno/se/model/multimedia/ZZVideo;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    :goto_2
    :try_start_4
    const-string v1, "linktype"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    if-eqz v1, :cond_d

    :cond_d
    :try_start_5
    const-string v1, "author"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "author"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setAuthor(Ljava/lang/String;)V

    :cond_e
    const-string v1, "summary"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "summary"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setSummary(Ljava/lang/String;)V

    :cond_f
    const-string v1, "body_size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "body_size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setBody_size(Ljava/lang/String;)V

    :cond_10
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setSource(Ljava/lang/String;)V

    :cond_11
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setUrl(Ljava/lang/String;)V

    :cond_12
    const-string v1, "origin_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "origin_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setOrigin_url(Ljava/lang/String;)V

    :cond_13
    const-string v1, "flag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "flag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setFlag(Ljava/lang/String;)V

    :cond_14
    const-string v1, "top"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "top"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setTop(Ljava/lang/String;)V

    :cond_15
    const-string v1, "top_ttl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "top_ttl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setTop_ttl(Ljava/lang/String;)V

    :cond_16
    const-string v1, "keywords"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "keywords"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setKeywords(Ljava/lang/String;)V

    :cond_17
    const-string v1, "categories"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "categories"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setCategories(Ljava/lang/String;)V

    :cond_18
    const-string v1, "news_score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "news_score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setNews_score(Ljava/lang/String;)V

    :cond_19
    const-string v1, "social_score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "social_score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setSocial_score(Ljava/lang/String;)V

    :cond_1a
    const-string v1, "erotic_score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "erotic_score"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setErotic_score(Ljava/lang/String;)V

    :cond_1b
    const-string v1, "click_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "click_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setClick_count(Ljava/lang/String;)V

    :cond_1c
    const-string v1, "like_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "like_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setLike_count(Ljava/lang/String;)V

    :cond_1d
    const-string v1, "dislike_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "dislike_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setDislike_count(Ljava/lang/String;)V

    :cond_1e
    const-string v1, "share_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v1, "share_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setShare_count(Ljava/lang/String;)V

    :cond_1f
    const-string v1, "comment_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "comment_count"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setComment_count(Ljava/lang/String;)V

    :cond_20
    const-string v1, "cpid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "cpid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setCpid(Ljava/lang/String;)V

    :cond_21
    const-string v1, "headimage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "headimage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/model/multimedia/Imgs;->parseZZ(Lorg/json/JSONObject;)Lcom/inveno/se/model/multimedia/Imgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setHeadimage(Lcom/inveno/se/model/multimedia/Imgs;)V

    :cond_22
    const-string v1, "share_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "share_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setShare_url(Ljava/lang/String;)V

    :cond_23
    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/ZZNewsinfo;->setDataSrc(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_24
    :goto_3
    return-object v0

    :catch_0
    move-exception v1

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static parsePush(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNewsinfo;
    .locals 8

    const/4 v7, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    :try_start_0
    new-instance v1, Lcom/inveno/se/model/ZZNewsinfo;

    invoke-direct {v1}, Lcom/inveno/se/model/ZZNewsinfo;-><init>()V

    const-string v0, "content_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "content_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setContent_id(Ljava/lang/String;)V

    :cond_2
    const-string v0, "link_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "link_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setLink_type(Ljava/lang/String;)V

    :cond_3
    const-string v0, "cpack"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "cpack"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setCpack(Ljava/lang/String;)V

    :cond_4
    const-string v0, "server_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "server_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setServer_time(Ljava/lang/String;)V

    :cond_5
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setTitle(Ljava/lang/String;)V

    :cond_6
    const-string v0, "link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setUrl(Ljava/lang/String;)V

    :cond_7
    const-string v0, "publisher"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "publisher"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setSource(Ljava/lang/String;)V

    :cond_8
    const-string v0, "link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "link"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/model/ZZNewsinfo;->setUrl(Ljava/lang/String;)V

    :cond_9
    const-string v0, "image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "image"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lcom/inveno/se/model/multimedia/Imgs;

    invoke-direct {v4}, Lcom/inveno/se/model/multimedia/Imgs;-><init>()V

    const-string v0, "img_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "img_url"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/inveno/se/model/multimedia/Imgs;->setUrl(Ljava/lang/String;)V

    :cond_a
    const-string v0, "width"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_b

    :try_start_1
    const-string v0, "width"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/inveno/se/model/multimedia/Imgs;->setWd(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_1
    :try_start_2
    const-string v0, "height"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_c

    :try_start_3
    const-string v0, "height"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/inveno/se/model/multimedia/Imgs;->setHg(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_c
    :goto_2
    :try_start_4
    const-string v0, "format"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "format"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/inveno/se/model/multimedia/Imgs;->setFm(Ljava/lang/String;)V

    :cond_d
    const-string v0, "surl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "surl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/inveno/se/model/multimedia/Imgs;->setSurl(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Lcom/inveno/se/model/ZZNewsinfo;->setHeadimage(Lcom/inveno/se/model/multimedia/Imgs;)V

    invoke-virtual {v1, v3}, Lcom/inveno/se/model/ZZNewsinfo;->setImgs(Ljava/util/ArrayList;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

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

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2
.end method


# virtual methods
.method public getAdObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->adObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerZZ()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->bannerZZ:I

    return v0
.end method

.method public getBody_size()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->body_size:Ljava/lang/String;

    return-object v0
.end method

.method public getCategories()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->categories:Ljava/lang/String;

    return-object v0
.end method

.method public getClick_count()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->click_count:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_count()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->comment_count:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->content_id:Ljava/lang/String;

    return-object v0
.end method

.method public getContent_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getCpack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->cpack:Ljava/lang/String;

    return-object v0
.end method

.method public getCpid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->cpid:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->dataSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getDislike_count()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->dislike_count:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getErotic_score()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->erotic_score:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadVideo()Lcom/inveno/se/model/multimedia/ZZVideo;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->zZVideo:Lcom/inveno/se/model/multimedia/ZZVideo;

    return-object v0
.end method

.method public getHeadimage()Lcom/inveno/se/model/multimedia/Imgs;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->headimage:Lcom/inveno/se/model/multimedia/Imgs;

    return-object v0
.end method

.method public getImgs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/multimedia/Imgs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_count()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->like_count:Ljava/lang/String;

    return-object v0
.end method

.method public getLink_type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->link_type:Ljava/lang/String;

    return-object v0
.end method

.method public getNews_score()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->news_score:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->origin_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->publish_time:Ljava/lang/String;

    return-object v0
.end method

.method public getServer_time()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->server_time:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_count()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->share_count:Ljava/lang/String;

    return-object v0
.end method

.method public getShare_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->share_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSocial_score()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->social_score:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->top:Ljava/lang/String;

    return-object v0
.end method

.method public getTop_ttl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->top_ttl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isPVReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->isPVReport:Z

    return v0
.end method

.method public isReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/model/ZZNewsinfo;->isReport:Z

    return v0
.end method

.method public setAdObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->adObject:Ljava/lang/Object;

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->author:Ljava/lang/String;

    return-void
.end method

.method public setBannerZZ(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->bannerZZ:I

    return-void
.end method

.method public setBody_size(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->body_size:Ljava/lang/String;

    return-void
.end method

.method public setCategories(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->categories:Ljava/lang/String;

    return-void
.end method

.method public setClick_count(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->click_count:Ljava/lang/String;

    return-void
.end method

.method public setComment_count(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->comment_count:Ljava/lang/String;

    return-void
.end method

.method public setContent_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->content_id:Ljava/lang/String;

    return-void
.end method

.method public setContent_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->content_type:Ljava/lang/String;

    return-void
.end method

.method public setCpack(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->cpack:Ljava/lang/String;

    return-void
.end method

.method public setCpid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->cpid:Ljava/lang/String;

    return-void
.end method

.method public setDataSrc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->dataSrc:Ljava/lang/String;

    return-void
.end method

.method public setDislike_count(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->dislike_count:Ljava/lang/String;

    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->display:Ljava/lang/String;

    return-void
.end method

.method public setErotic_score(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->erotic_score:Ljava/lang/String;

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->flag:Ljava/lang/String;

    return-void
.end method

.method public setHeadVideo(Lcom/inveno/se/model/multimedia/ZZVideo;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->zZVideo:Lcom/inveno/se/model/multimedia/ZZVideo;

    return-void
.end method

.method public setHeadimage(Lcom/inveno/se/model/multimedia/Imgs;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->headimage:Lcom/inveno/se/model/multimedia/Imgs;

    return-void
.end method

.method public setImgs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/model/multimedia/Imgs;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->imgs:Ljava/util/ArrayList;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->keywords:Ljava/lang/String;

    return-void
.end method

.method public setLike_count(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->like_count:Ljava/lang/String;

    return-void
.end method

.method public setLink_type(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->link_type:Ljava/lang/String;

    return-void
.end method

.method public setNews_score(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->news_score:Ljava/lang/String;

    return-void
.end method

.method public setOrigin_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->origin_url:Ljava/lang/String;

    return-void
.end method

.method public setPVReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->isPVReport:Z

    return-void
.end method

.method public setPublish_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->publish_time:Ljava/lang/String;

    return-void
.end method

.method public setReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->isReport:Z

    return-void
.end method

.method public setServer_time(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->server_time:Ljava/lang/String;

    return-void
.end method

.method public setShare_count(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->share_count:Ljava/lang/String;

    return-void
.end method

.method public setShare_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->share_url:Ljava/lang/String;

    return-void
.end method

.method public setSocial_score(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->social_score:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->source:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setTop(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->top:Ljava/lang/String;

    return-void
.end method

.method public setTop_ttl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->top_ttl:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/ZZNewsinfo;->url:Ljava/lang/String;

    return-void
.end method
