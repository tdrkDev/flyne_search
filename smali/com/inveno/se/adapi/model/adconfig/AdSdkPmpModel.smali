.class public Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private advertHeight:I

.field private advertId:Ljava/lang/String;

.field private advertPos:I

.field private advertType:I

.field private isOpen:I

.field private requestNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvertHeight()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertHeight:I

    return v0
.end method

.method public getAdvertId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvertPos()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertPos:I

    return v0
.end method

.method public getAdvertType()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertType:I

    return v0
.end method

.method public getIsOpen()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->isOpen:I

    return v0
.end method

.method public getRequestNum()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->requestNum:I

    return v0
.end method

.method public setAdvertHeight(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertHeight:I

    return-void
.end method

.method public setAdvertId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertId:Ljava/lang/String;

    return-void
.end method

.method public setAdvertPos(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertPos:I

    return-void
.end method

.method public setAdvertType(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->advertType:I

    return-void
.end method

.method public setIsOpen(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->isOpen:I

    return-void
.end method

.method public setRequestNum(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adconfig/AdSdkPmpModel;->requestNum:I

    return-void
.end method
