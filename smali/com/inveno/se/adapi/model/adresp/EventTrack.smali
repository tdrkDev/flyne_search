.class public Lcom/inveno/se/adapi/model/adresp/EventTrack;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/se/adapi/model/adresp/EventTrack;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2956cf00b1245ec3L


# instance fields
.field private event_type:I

.field private max_retry:I

.field private notify_url:Ljava/lang/String;

.field private retry:I

.field private tm:J

.field private uTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adresp/EventTrack$1;

    invoke-direct {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack$1;-><init>()V

    sput-object v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->uTime:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->uTime:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->event_type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->notify_url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->max_retry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->tm:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->retry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->uTime:Ljava/lang/String;

    return-void
.end method

.method public static final parse(Lorg/json/JSONObject;)Lcom/inveno/se/adapi/model/adresp/EventTrack;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-direct {v1}, Lcom/inveno/se/adapi/model/adresp/EventTrack;-><init>()V

    const-string v2, "event_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "event_type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setEvent_type(I)V

    :cond_1
    const-string v2, "notify_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "notify_url"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setNotify_url(Ljava/lang/String;)V

    :cond_2
    const-string v2, "max_retry"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "max_retry"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setMax_retry(I)V

    :cond_3
    const-string v2, "tm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "tm"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->setTm(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-class v2, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEvent_type()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->event_type:I

    return v0
.end method

.method public getMax_retry()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->max_retry:I

    return v0
.end method

.method public getNotify_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->notify_url:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()I
    .locals 1

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->retry:I

    return v0
.end method

.method public getTm()J
    .locals 2

    iget-wide v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->tm:J

    return-wide v0
.end method

.method public getuTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->uTime:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent_type(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->event_type:I

    return-void
.end method

.method public setMax_retry(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->max_retry:I

    return-void
.end method

.method public setNotify_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->notify_url:Ljava/lang/String;

    return-void
.end method

.method public setRetry(I)V
    .locals 0

    iput p1, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->retry:I

    return-void
.end method

.method public setTm(J)V
    .locals 1

    iput-wide p1, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->tm:J

    return-void
.end method

.method public setuTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->uTime:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->event_type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->notify_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->max_retry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->tm:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->retry:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/inveno/se/adapi/model/adresp/EventTrack;->uTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
