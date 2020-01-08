.class public Lcom/inveno/se/adapi/model/adreq/SCell;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adreq/SCell;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private CID:I

.field private LAC:I

.field private MCC:I

.field private MNC:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/SCell$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adreq/SCell$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adreq/SCell;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MCC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MNC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->LAC:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->CID:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCID()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->CID:I

    return v0
.end method

.method public getLAC()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->LAC:I

    return v0
.end method

.method public getMCC()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MCC:I

    return v0
.end method

.method public getMNC()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MNC:I

    return v0
.end method

.method public setCID(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->CID:I

    return-void
.end method

.method public setLAC(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->LAC:I

    return-void
.end method

.method public setMCC(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MCC:I

    return-void
.end method

.method public setMNC(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MNC:I

    return-void
.end method

.method public final toJsonObject()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "CID"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->CID:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "LAC"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->LAC:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "MCC"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MCC:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "MNC"

    iget v2, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MNC:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-class v1, Lcom/inveno/se/adapi/model/adreq/SCell;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MCC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->MNC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->LAC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adreq/SCell;->CID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
