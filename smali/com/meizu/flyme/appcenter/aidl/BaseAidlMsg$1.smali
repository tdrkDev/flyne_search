.class final Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0, p1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;
    .locals 1

    .prologue
    .line 145
    new-array v0, p1, [Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg$1;->newArray(I)[Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    move-result-object v0

    return-object v0
.end method
