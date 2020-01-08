.class final Lcom/inveno/nxadsdk/model/InvenoModel$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/nxadsdk/model/InvenoModel;
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
        "Lcom/inveno/nxadsdk/model/InvenoModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/inveno/nxadsdk/model/InvenoModel;
    .locals 1

    new-instance v0, Lcom/inveno/nxadsdk/model/InvenoModel;

    invoke-direct {v0, p1}, Lcom/inveno/nxadsdk/model/InvenoModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/inveno/nxadsdk/model/InvenoModel;
    .locals 1

    new-array v0, p1, [Lcom/inveno/nxadsdk/model/InvenoModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/inveno/nxadsdk/model/InvenoModel$2;->a(Landroid/os/Parcel;)Lcom/inveno/nxadsdk/model/InvenoModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/inveno/nxadsdk/model/InvenoModel$2;->a(I)[Lcom/inveno/nxadsdk/model/InvenoModel;

    move-result-object v0

    return-object v0
.end method
