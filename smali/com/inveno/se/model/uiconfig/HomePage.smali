.class public Lcom/inveno/se/model/uiconfig/HomePage;
.super Ljava/lang/Object;


# instance fields
.field private cbsIsShow:I

.field private clIsShow:I

.field private ctsIsShow:I

.field private hbcata:Ljava/lang/String;

.field private hbsji:Ljava/lang/String;

.field private hbsjiis:I

.field private hbst:Ljava/lang/String;

.field private hbstc:Ljava/lang/String;

.field private hbstis:I

.field private hbstjd:Ljava/lang/String;

.field private hcfsn:I

.field private hnlca:Ljava/lang/String;

.field private hnlsn:I

.field private htcata:Ljava/lang/String;

.field private htcn:Ljava/lang/String;

.field private htcnc:Ljava/lang/String;

.field private htri:Ljava/lang/String;

.field private htriis:I

.field private htrt:Ljava/lang/String;

.field private htrtc:Ljava/lang/String;

.field private htrtis:I

.field private nsIsShow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbsjiis:I

    iput v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbstis:I

    iput v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->cbsIsShow:I

    iput v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htriis:I

    iput v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->ctsIsShow:I

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/uiconfig/HomePage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/inveno/se/model/uiconfig/HomePage;

    invoke-direct {v0}, Lcom/inveno/se/model/uiconfig/HomePage;-><init>()V

    const-string v1, "homePage"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cbs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cbs"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "hbcata"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHbcata(Ljava/lang/String;)V

    const-string v3, "hbsji"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHbsji(Ljava/lang/String;)V

    const-string v3, "hbst"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHbst(Ljava/lang/String;)V

    const-string v3, "hbstc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHbstc(Ljava/lang/String;)V

    const-string v3, "hbstjd"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHbstjd(Ljava/lang/String;)V

    const-string v3, "hbsjiis"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHbsjiis(I)V

    const-string v3, "hbstis"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHbstis(I)V

    const-string v3, "isShow"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/uiconfig/HomePage;->setCbsIsShow(I)V

    :cond_0
    const-string v2, "cl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "isShow"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setClIsShow(I)V

    const-string v3, "hcfsn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/uiconfig/HomePage;->setHcfsn(I)V

    :cond_1
    const-string v2, "cts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "cts"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "htcata"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtcata(Ljava/lang/String;)V

    const-string v3, "htcn"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtcn(Ljava/lang/String;)V

    const-string v3, "htcnc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtcnc(Ljava/lang/String;)V

    const-string v3, "htri"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtri(Ljava/lang/String;)V

    const-string v3, "htrt"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtrt(Ljava/lang/String;)V

    const-string v3, "htrtc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtrtc(Ljava/lang/String;)V

    const-string v3, "htriis"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtriis(I)V

    const-string v3, "htrtis"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inveno/se/model/uiconfig/HomePage;->setHtrtis(I)V

    const-string v3, "isShow"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/uiconfig/HomePage;->setCtsIsShow(I)V

    :cond_2
    const-string v2, "ns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ns"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hnlca"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/uiconfig/HomePage;->setHnlca(Ljava/lang/String;)V

    const-string v2, "hnlsn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/inveno/se/model/uiconfig/HomePage;->setHnlsn(I)V

    const-string v2, "isShow"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inveno/se/model/uiconfig/HomePage;->setNsIsShow(I)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getCbsIsShow()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->cbsIsShow:I

    return v0
.end method

.method public getClIsShow()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->clIsShow:I

    return v0
.end method

.method public getCtsIsShow()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->ctsIsShow:I

    return v0
.end method

.method public getHbcata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbcata:Ljava/lang/String;

    return-object v0
.end method

.method public getHbsji()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbsji:Ljava/lang/String;

    return-object v0
.end method

.method public getHbsjiis()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbsjiis:I

    return v0
.end method

.method public getHbst()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbst:Ljava/lang/String;

    return-object v0
.end method

.method public getHbstc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbstc:Ljava/lang/String;

    return-object v0
.end method

.method public getHbstis()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbstis:I

    return v0
.end method

.method public getHbstjd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbstjd:Ljava/lang/String;

    return-object v0
.end method

.method public getHcfsn()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hcfsn:I

    return v0
.end method

.method public getHnlca()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hnlca:Ljava/lang/String;

    return-object v0
.end method

.method public getHnlsn()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hnlsn:I

    return v0
.end method

.method public getHtcata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htcata:Ljava/lang/String;

    return-object v0
.end method

.method public getHtcn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htcn:Ljava/lang/String;

    return-object v0
.end method

.method public getHtcnc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htcnc:Ljava/lang/String;

    return-object v0
.end method

.method public getHtri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htri:Ljava/lang/String;

    return-object v0
.end method

.method public getHtriis()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htriis:I

    return v0
.end method

.method public getHtrt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htrt:Ljava/lang/String;

    return-object v0
.end method

.method public getHtrtc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htrtc:Ljava/lang/String;

    return-object v0
.end method

.method public getHtrtis()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htrtis:I

    return v0
.end method

.method public getNsIsShow()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/model/uiconfig/HomePage;->nsIsShow:I

    return v0
.end method

.method public setCbsIsShow(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->cbsIsShow:I

    return-void
.end method

.method public setClIsShow(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->clIsShow:I

    return-void
.end method

.method public setCtsIsShow(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->ctsIsShow:I

    return-void
.end method

.method public setHbcata(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbcata:Ljava/lang/String;

    return-void
.end method

.method public setHbsji(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbsji:Ljava/lang/String;

    return-void
.end method

.method public setHbsjiis(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbsjiis:I

    return-void
.end method

.method public setHbst(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbst:Ljava/lang/String;

    return-void
.end method

.method public setHbstc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbstc:Ljava/lang/String;

    return-void
.end method

.method public setHbstis(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbstis:I

    return-void
.end method

.method public setHbstjd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hbstjd:Ljava/lang/String;

    return-void
.end method

.method public setHcfsn(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hcfsn:I

    return-void
.end method

.method public setHnlca(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hnlca:Ljava/lang/String;

    return-void
.end method

.method public setHnlsn(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->hnlsn:I

    return-void
.end method

.method public setHtcata(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htcata:Ljava/lang/String;

    return-void
.end method

.method public setHtcn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htcn:Ljava/lang/String;

    return-void
.end method

.method public setHtcnc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htcnc:Ljava/lang/String;

    return-void
.end method

.method public setHtri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htri:Ljava/lang/String;

    return-void
.end method

.method public setHtriis(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htriis:I

    return-void
.end method

.method public setHtrt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htrt:Ljava/lang/String;

    return-void
.end method

.method public setHtrtc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htrtc:Ljava/lang/String;

    return-void
.end method

.method public setHtrtis(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->htrtis:I

    return-void
.end method

.method public setNsIsShow(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/model/uiconfig/HomePage;->nsIsShow:I

    return-void
.end method
