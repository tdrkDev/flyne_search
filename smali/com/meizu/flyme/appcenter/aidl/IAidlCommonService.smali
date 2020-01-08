.class public interface abstract Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService$Stub;
    }
.end annotation


# virtual methods
.method public abstract doAction(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getData(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
