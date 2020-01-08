.class public Lcom/inveno/se/adapi/model/update/UpdateParam;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/update/UpdateParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adType:I

.field private adUnitId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private cmd:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private did:Ljava/lang/String;

.field private et:I

.field private invenoSpaceId:Ljava/lang/String;

.field private lan:Ljava/lang/String;

.field private mmodel:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private os:I

.field private packageName:Ljava/lang/String;

.field private sdk:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private ver:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/update/UpdateParam$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/update/UpdateParam$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/update/UpdateParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->did:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->os:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->country:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->lan:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->ver:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->channel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->mmodel:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->et:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->cmd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->state:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adUnitId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->invenoSpaceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adType:I

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adUnitId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getCmd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getEt()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->et:I

    return v0
.end method

.method public getInvenoSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->invenoSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->lan:Ljava/lang/String;

    return-object v0
.end method

.method public getMmodel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->mmodel:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->os:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->ver:Ljava/lang/String;

    return-object v0
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adType:I

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adUnitId:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->channel:Ljava/lang/String;

    return-void
.end method

.method public setCmd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->cmd:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->country:Ljava/lang/String;

    return-void
.end method

.method public setDid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->did:Ljava/lang/String;

    return-void
.end method

.method public setEt(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->et:I

    return-void
.end method

.method public setInvenoSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->invenoSpaceId:Ljava/lang/String;

    return-void
.end method

.method public setLan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->lan:Ljava/lang/String;

    return-void
.end method

.method public setMmodel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->mmodel:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->msg:Ljava/lang/String;

    return-void
.end method

.method public setOs(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->os:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setSdk(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdk:Ljava/lang/String;

    return-void
.end method

.method public setSdkVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdkVersion:Ljava/lang/String;

    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->state:Ljava/lang/String;

    return-void
.end method

.method public setVer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->ver:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->did:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->os:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->country:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->lan:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->ver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->channel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->mmodel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->et:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->cmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->sdk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->adUnitId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/update/UpdateParam;->invenoSpaceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
