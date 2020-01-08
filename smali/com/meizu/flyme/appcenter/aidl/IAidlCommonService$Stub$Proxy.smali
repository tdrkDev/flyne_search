.class Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public doAction(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 109
    :try_start_0
    const-string v0, "com.meizu.flyme.appcenter.aidl.IAidlCommonService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 118
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 117
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getData(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 132
    :try_start_0
    const-string v1, "com.meizu.flyme.appcenter.aidl.IAidlCommonService"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_1

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 141
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 142
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 143
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    sget-object v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 154
    return-object v0

    .line 138
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0

    :cond_2
    move-object v1, v0

    .line 140
    goto :goto_1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "com.meizu.flyme.appcenter.aidl.IAidlCommonService"

    return-object v0
.end method
