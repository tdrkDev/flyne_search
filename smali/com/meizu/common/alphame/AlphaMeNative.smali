.class public abstract Lcom/meizu/common/alphame/AlphaMeNative;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/alphame/IAlphaMe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 14
    const-string v0, "com.meizu.common.alphame.IAlphaMe"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/common/alphame/AlphaMeNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/common/alphame/IAlphaMe;
    .locals 1

    .prologue
    .line 18
    if-nez p0, :cond_1

    .line 19
    const/4 v0, 0x0

    .line 25
    :cond_0
    :goto_0
    return-object v0

    .line 21
    :cond_1
    const-string v0, "com.meizu.common.alphame.IAlphaMe"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/IAlphaMe;

    .line 22
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/meizu/common/alphame/AlphaMeProxy;

    invoke-direct {v0, p0}, Lcom/meizu/common/alphame/AlphaMeProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 30
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 38
    :sswitch_0
    const-string v0, "com.meizu.common.alphame.IAlphaMe"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 39
    goto :goto_0

    .line 44
    :sswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/alphame/AlphaMeNative;->addClient(Landroid/os/IBinder;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 46
    goto :goto_0

    .line 51
    :sswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/alphame/AlphaMeNative;->removeClient(Landroid/os/IBinder;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 53
    goto :goto_0

    .line 58
    :sswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/alphame/AlphaMeNative;->registerActionReceiver(Landroid/os/IBinder;Ljava/util/ArrayList;I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 64
    goto :goto_0

    .line 68
    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/alphame/AlphaMeNative;->unregisterActionReceiver(Landroid/os/IBinder;I)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 72
    goto :goto_0

    .line 76
    :sswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    sget-object v0, Lcom/meizu/common/alphame/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/alphame/Args;

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/alphame/AlphaMeNative;->exec(Landroid/os/IBinder;Ljava/lang/String;Lcom/meizu/common/alphame/Args;II)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 83
    goto :goto_0

    .line 87
    :sswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    sget-object v0, Lcom/meizu/common/alphame/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/alphame/Args;

    .line 89
    invoke-virtual {p0, v1, v0}, Lcom/meizu/common/alphame/AlphaMeNative;->collect(Ljava/lang/String;Lcom/meizu/common/alphame/Args;)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    .line 91
    goto :goto_0

    .line 36
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
