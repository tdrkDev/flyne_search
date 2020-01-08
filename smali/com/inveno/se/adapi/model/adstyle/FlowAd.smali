.class public Lcom/inveno/se/adapi/model/adstyle/FlowAd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6a00fc20a41fa3e3L


# instance fields
.field private EMail_Num:Ljava/lang/String;

.field private SMS_or_EMail_Msg:Ljava/lang/String;

.field private adSourceLogo:Ljava/lang/String;

.field private adSourceText:Ljava/lang/String;

.field private adTag:Ljava/lang/String;

.field private adspaceId:Ljava/lang/String;

.field private banner_id:Ljava/lang/String;

.field private bid:Ljava/lang/String;

.field private deep_link:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private event_track:Ljava/util/List;

.field private img:Ljava/lang/String;

.field private imgH:I

.field private imgW:I

.field private imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/Img;",
            ">;"
        }
    .end annotation
.end field

.field private interaction_type:I

.field private isReport:Z

.field private jump_link:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private notice_id:Ljava/lang/String;

.field private open_type:I

.field private packageName:Ljava/lang/String;

.field private phone_Num:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->isReport:Z

    return-void
.end method

.method public static parse(Lcom/inveno/se/adapi/model/adresp/AdResp;)Lcom/inveno/se/adapi/model/adstyle/FlowAd;
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5e7f\u544a\u5217\u8868\u4e3a\u7a7a\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/Ads;

    move-object v2, v0

    :goto_2
    invoke-virtual {v2}, Lcom/inveno/se/adapi/model/adresp/Ads;->getCreative()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/Creative;

    :goto_3
    invoke-static {p0, v2, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->parseToFlowAd(Lcom/inveno/se/adapi/model/adresp/AdResp;Lcom/inveno/se/adapi/model/adresp/Ads;Lcom/inveno/se/adapi/model/adresp/Creative;)Lcom/inveno/se/adapi/model/adstyle/FlowAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flowAd parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_3

    :cond_2
    move-object v2, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static parseList(Lcom/inveno/se/adapi/model/adresp/AdResp;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/adapi/model/adresp/AdResp;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAd;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5e7f\u544a\u5217\u8868\u4e3a\u7a7a\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/Ads;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Ads;->getCreative()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/adapi/model/adresp/Creative;

    if-eqz v1, :cond_2

    invoke-static {p0, v0, v1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->parseToFlowAd(Lcom/inveno/se/adapi/model/adresp/AdResp;Lcom/inveno/se/adapi/model/adresp/Ads;Lcom/inveno/se/adapi/model/adresp/Creative;)Lcom/inveno/se/adapi/model/adstyle/FlowAd;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flowAdlist parse:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseMap(Lcom/inveno/se/adapi/model/adresp/AdResp;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/adapi/model/adresp/AdResp;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adstyle/FlowAds;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5e7f\u544a\u5217\u8868\u4e3a\u7a7a\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getAds()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/Ads;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Ads;->getCreative()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v6, Lcom/inveno/se/adapi/model/adstyle/FlowAds;

    invoke-direct {v6}, Lcom/inveno/se/adapi/model/adstyle/FlowAds;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, ""

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/adapi/model/adresp/Creative;

    if-eqz v1, :cond_4

    invoke-static {p0, v0, v1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->parseToFlowAd(Lcom/inveno/se/adapi/model/adresp/AdResp;Lcom/inveno/se/adapi/model/adresp/Ads;Lcom/inveno/se/adapi/model/adresp/Creative;)Lcom/inveno/se/adapi/model/adstyle/FlowAd;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Ads;->getAdspace_id()Ljava/lang/String;

    move-result-object v1

    :goto_3
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v2}, Lcom/inveno/se/adapi/model/adstyle/FlowAds;->setAdspace_id(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/inveno/se/adapi/model/adstyle/FlowAds;->setFlowAdArrayList(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flowAdlist parse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method private static parseToFlowAd(Lcom/inveno/se/adapi/model/adresp/AdResp;Lcom/inveno/se/adapi/model/adresp/Ads;Lcom/inveno/se/adapi/model/adresp/Creative;)Lcom/inveno/se/adapi/model/adstyle/FlowAd;
    .locals 4

    new-instance v1, Lcom/inveno/se/adapi/model/adstyle/FlowAd;

    invoke-direct {v1}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;-><init>()V

    invoke-virtual {p0}, Lcom/inveno/se/adapi/model/adresp/AdResp;->getBid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setBid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/model/adresp/Ads;->getAdspace_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setAdspaceId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getBanner_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setBanner_id(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/tools/StringTools;->getOnlyIdBySysTime()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setNotice_id(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getOpen_type()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setOpen_type(I)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getInteraction_type()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setInteraction_type(I)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getInteraction_object()Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/InteractionObject;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getNativ()Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Native;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getNativ()Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Native;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/Img;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Img;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setImg(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Img;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setImgW(I)V

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Img;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setImgH(I)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setImgs(Ljava/util/ArrayList;)V

    :cond_1
    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getInteraction_object()Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/InteractionObject;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setJump_link(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getInteraction_object()Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/InteractionObject;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setPhone_Num(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getInteraction_object()Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/InteractionObject;->getMail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setEMail_Num(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getInteraction_object()Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/InteractionObject;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setSMS_or_EMail_Msg(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getInteraction_object()Lcom/inveno/se/adapi/model/adresp/InteractionObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/InteractionObject;->getDeep_link()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setDeep_link(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getNativ()Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Native;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setLogo(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getNativ()Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Native;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setDesc(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getNativ()Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Native;->getAdSourceLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setAdSourceLogo(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getNativ()Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Native;->getAdSourceText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setAdSourceText(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getNativ()Lcom/inveno/se/adapi/model/adresp/Native;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Native;->getAdTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setAdTag(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getAdm()Lcom/inveno/se/adapi/model/adresp/Adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/Adm;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setSource(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/inveno/se/adapi/model/adresp/Creative;->getEvent_track()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->setEvent_track(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public getAdSourceLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adSourceLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSourceText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adSourceText:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAdspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adspaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->banner_id:Ljava/lang/String;

    return-object v0
.end method

.method public getBid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeep_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->deep_link:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getEMail_Num()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->EMail_Num:Ljava/lang/String;

    return-object v0
.end method

.method public getEvent_track()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->event_track:Ljava/util/List;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getImgH()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->imgH:I

    return v0
.end method

.method public getImgW()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->imgW:I

    return v0
.end method

.method public getImgs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/Img;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInteraction_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->interaction_type:I

    return v0
.end method

.method public getJump_link()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->jump_link:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice_id()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->notice_id:Ljava/lang/String;

    return-object v0
.end method

.method public getOpen_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->open_type:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone_Num()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->phone_Num:Ljava/lang/String;

    return-object v0
.end method

.method public getSMS_or_EMail_Msg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->SMS_or_EMail_Msg:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->isReport:Z

    return v0
.end method

.method public setAdSourceLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adSourceLogo:Ljava/lang/String;

    return-void
.end method

.method public setAdSourceText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adSourceText:Ljava/lang/String;

    return-void
.end method

.method public setAdTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adTag:Ljava/lang/String;

    return-void
.end method

.method public setAdspaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->adspaceId:Ljava/lang/String;

    return-void
.end method

.method public setBanner_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->banner_id:Ljava/lang/String;

    return-void
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->bid:Ljava/lang/String;

    return-void
.end method

.method public setDeep_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->deep_link:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->desc:Ljava/lang/String;

    return-void
.end method

.method public setEMail_Num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->EMail_Num:Ljava/lang/String;

    return-void
.end method

.method public setEvent_track(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->event_track:Ljava/util/List;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->img:Ljava/lang/String;

    return-void
.end method

.method public setImgH(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->imgH:I

    return-void
.end method

.method public setImgW(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->imgW:I

    return-void
.end method

.method public setImgs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/Img;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->imgs:Ljava/util/ArrayList;

    return-void
.end method

.method public setInteraction_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->interaction_type:I

    return-void
.end method

.method public setJump_link(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->jump_link:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNotice_id(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->notice_id:Ljava/lang/String;

    return-void
.end method

.method public setOpen_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->open_type:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPhone_Num(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->phone_Num:Ljava/lang/String;

    return-void
.end method

.method public setReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->isReport:Z

    return-void
.end method

.method public setSMS_or_EMail_Msg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->SMS_or_EMail_Msg:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adstyle/FlowAd;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
