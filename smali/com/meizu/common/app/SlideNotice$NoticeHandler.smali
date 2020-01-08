.class final Lcom/meizu/common/app/SlideNotice$NoticeHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/app/SlideNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoticeHandler"
.end annotation


# instance fields
.field private mNotice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/app/SlideNotice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/common/app/SlideNotice;)V
    .locals 1

    .prologue
    .line 1217
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1218
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/common/app/SlideNotice$NoticeHandler;->mNotice:Ljava/lang/ref/WeakReference;

    .line 1219
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 1223
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1231
    :goto_0
    return-void

    .line 1225
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;

    iget-object v1, p0, Lcom/meizu/common/app/SlideNotice$NoticeHandler;->mNotice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/app/SlideNotice;

    invoke-interface {v0, v1}, Lcom/meizu/common/app/SlideNotice$OnClickNoticeListener;->onClick(Lcom/meizu/common/app/SlideNotice;)V

    goto :goto_0

    .line 1223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
