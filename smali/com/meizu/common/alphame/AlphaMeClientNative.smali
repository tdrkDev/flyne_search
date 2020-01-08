.class public abstract Lcom/meizu/common/alphame/AlphaMeClientNative;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/alphame/IAlphaMeClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 13
    const-string v0, "com.meizu.common.alphame.IAlphaMeClient"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/common/alphame/AlphaMeClientNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/common/alphame/IAlphaMeClient;
    .locals 1

    .prologue
    .line 17
    if-nez p0, :cond_1

    .line 18
    const/4 v0, 0x0

    .line 24
    :cond_0
    :goto_0
    return-object v0

    .line 20
    :cond_1
    const-string v0, "com.meizu.common.alphame.IAlphaMeClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/IAlphaMeClient;

    .line 21
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/meizu/common/alphame/AlphaMeClientProxy;

    invoke-direct {v0, p0}, Lcom/meizu/common/alphame/AlphaMeClientProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 29
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 35
    sparse-switch p1, :sswitch_data_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 37
    :sswitch_0
    const-string v0, "com.meizu.common.alphame.IAlphaMeClient"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 38
    goto :goto_0

    .line 43
    :sswitch_1
    sget-object v0, Lcom/meizu/common/alphame/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/Args;

    .line 44
    invoke-virtual {p0, v0}, Lcom/meizu/common/alphame/AlphaMeClientNative;->onResult(Lcom/meizu/common/alphame/Args;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 46
    goto :goto_0

    .line 50
    :sswitch_2
    sget-object v0, Lcom/meizu/common/alphame/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/Args;

    .line 51
    invoke-virtual {p0, v0}, Lcom/meizu/common/alphame/AlphaMeClientNative;->onReceiver(Lcom/meizu/common/alphame/Args;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 53
    goto :goto_0

    .line 35
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
