.class final Lcom/loc/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/a;


# direct methods
.method public constructor <init>(Lcom/loc/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->e(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->d(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->f(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    iget-object v1, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    iget-object v1, v1, Lcom/loc/a;->q:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {v0, v1}, Lcom/loc/a;->a(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->c()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->b()V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->h(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/a;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/loc/a$a;->a:Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
