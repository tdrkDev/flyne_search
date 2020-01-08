.class public Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final NOTIFY_ID:Ljava/lang/String; = "notifyId"

.field private static final TAG:Ljava/lang/String; = "WithDrawMessage"


# instance fields
.field private controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

.field private notifyId:I

.field private revokePackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->revokePackageName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->notifyId:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->revokePackageName:Ljava/lang/String;

    .line 25
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    const-string v1, "notifyId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    const-string v1, "notifyId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->notifyId:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-direct {v0, p3, p4, p5}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    .line 33
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "WithDrawMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse WithDrawMessage error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getControlMessage()Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    return-object v0
.end method

.method public getNotifyId()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->notifyId:I

    return v0
.end method

.method public getRevokePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->revokePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public setControlMessage(Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    .line 71
    return-void
.end method

.method public setNotifyId(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->notifyId:I

    .line 79
    return-void
.end method

.method public setRevokePackageName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->revokePackageName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WithDrawMessage{controlMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", revokePackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->revokePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notifyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->notifyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->controlMessage:Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->revokePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/WithDrawMessage;->notifyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
