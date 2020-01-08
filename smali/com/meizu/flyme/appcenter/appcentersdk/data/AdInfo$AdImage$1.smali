.class final Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;
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
        "Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    invoke-direct {v0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;
    .locals 1

    .prologue
    .line 80
    new-array v0, p1, [Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage$1;->newArray(I)[Lcom/meizu/flyme/appcenter/appcentersdk/data/AdInfo$AdImage;

    move-result-object v0

    return-object v0
.end method
