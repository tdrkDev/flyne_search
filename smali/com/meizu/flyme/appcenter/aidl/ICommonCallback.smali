.class public interface abstract Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/aidl/ICommonCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallback(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
