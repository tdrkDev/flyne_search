.class public Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;
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
            "Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ControlMessage"


# instance fields
.field private control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

.field private controlMessage:Ljava/lang/String;

.field private statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage$1;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage$1;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->controlMessage:Ljava/lang/String;

    .line 64
    const-class v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    .line 65
    const-class v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->controlMessage:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const-string v1, "ctl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    .line 45
    const-string v1, "statics"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    .line 46
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-virtual {v0, p2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->setDeviceId(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-virtual {v0, p3}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->setSeqId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;-><init>()V

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    .line 51
    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;-><init>()V

    iput-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    .line 52
    const-string v1, "ControlMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse control message error "

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

    .line 55
    :cond_1
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    .line 56
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;-><init>()V

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;
    .locals 5

    .prologue
    .line 118
    new-instance v1, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;

    invoke-direct {v1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;-><init>()V

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    if-eqz v0, :cond_0

    .line 122
    const-string v2, "ctl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->setControl(Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;)V

    .line 123
    const-string v2, "statics"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;->parse(Lorg/json/JSONObject;)Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->setStatics(Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v2, "ControlMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse control message error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/cloud/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;-><init>()V

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->setStatics(Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;)V

    .line 128
    new-instance v0, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;-><init>()V

    invoke-virtual {v1, v0}, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->setControl(Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getControl()Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    return-object v0
.end method

.method public getControlMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->controlMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatics()Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    return-object v0
.end method

.method public setControl(Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    .line 106
    return-void
.end method

.method public setControlMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->controlMessage:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setStatics(Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ControlMessage{controlMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->controlMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", control="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 87
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->controlMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->control:Lcom/meizu/cloud/pushsdk/handler/impl/model/Control;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/handler/impl/model/ControlMessage;->statics:Lcom/meizu/cloud/pushsdk/handler/impl/model/Statics;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    return-void
.end method
