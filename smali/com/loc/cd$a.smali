.class public final Lcom/loc/cd$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/cd;


# direct methods
.method public constructor <init>(Lcom/loc/cd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/loc/cd;->a(Lcom/loc/cd;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManage$MHandlerr"

    const-string v2, "handleMessage SET_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v1, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;

    invoke-static {v1, v0}, Lcom/loc/cd;->b(Lcom/loc/cd;Lcom/amap/api/location/AMapLocationListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->c(Lcom/loc/cd;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage START_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    :try_start_3
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->d(Lcom/loc/cd;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage STOP_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    :try_start_4
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-virtual {v0}, Lcom/loc/cd;->a()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_4
    move-exception v0

    const-string v1, "AMapLocationManager$MHandler"

    const-string v2, "handleMessage DESTROY"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    :try_start_5
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, v0, Lcom/loc/cd;->i:Lcom/loc/cn;

    invoke-virtual {v0}, Lcom/loc/cn;->c()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage ACTION_SAVE_LAST_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    :try_start_6
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, v0, Lcom/loc/cd;->c:Lcom/loc/cm;

    iget-object v1, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v1, v1, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v1, v0, Lcom/loc/cm;->c:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, v0, Lcom/loc/cm;->c:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v1, :cond_1

    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v1}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v1, v0, Lcom/loc/cm;->c:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_1
    invoke-virtual {v0}, Lcom/loc/cm;->b()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_0

    :catch_6
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    :try_start_7
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, v0, Lcom/loc/cd;->c:Lcom/loc/cm;

    invoke-virtual {v0}, Lcom/loc/cm;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->e(Lcom/loc/cd;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_LBS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    :try_start_8
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->f(Lcom/loc/cd;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    :pswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, v0, Lcom/loc/cd;->c:Lcom/loc/cm;

    invoke-virtual {v0}, Lcom/loc/cm;->a()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage STOP_GPS_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    :try_start_a
    iget-object v1, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption;

    iput-object v0, v1, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    iget-object v0, v0, Lcom/loc/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->g(Lcom/loc/cd;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_0

    :catch_9
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage SET_OPTION"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    :try_start_b
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->h(Lcom/loc/cd;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    :catch_a
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    :try_start_c
    iget-object v0, p0, Lcom/loc/cd$a;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->i(Lcom/loc/cd;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_0

    :catch_b
    move-exception v0

    const-string v1, "AMapLocationManager$ActionHandler"

    const-string v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
