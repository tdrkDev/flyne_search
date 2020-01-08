.class public Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private height:I

.field private joinPlat:Ljava/lang/String;

.field private priority:I

.field private spaceId:Ljava/lang/String;

.field private spaceType:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->spaceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->height:I

    return v0
.end method

.method public getJoinPlat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->joinPlat:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->priority:I

    return v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->spaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpaceType()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->spaceType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->height:I

    return-void
.end method

.method public setJoinPlat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->joinPlat:Ljava/lang/String;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->priority:I

    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->spaceId:Ljava/lang/String;

    return-void
.end method

.method public setSpaceType(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->spaceType:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkModel;->width:I

    return-void
.end method
