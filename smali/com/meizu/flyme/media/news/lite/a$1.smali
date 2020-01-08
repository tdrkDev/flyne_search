.class Lcom/meizu/flyme/media/news/lite/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/a;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/a$1;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/flyme/media/news/lite/a$1;->a:Lcom/meizu/flyme/media/news/lite/a;

    invoke-static {v0}, Lcom/meizu/flyme/media/news/lite/a;->a(Lcom/meizu/flyme/media/news/lite/a;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
