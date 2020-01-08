.class public Lcom/meizu/flyme/media/news/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 42
    if-eqz p0, :cond_0

    .line 43
    const-string v0, "connectivity"

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 45
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 67
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 78
    invoke-static {p0}, Lcom/meizu/flyme/media/news/a/h;->b(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$style;->Base_Theme_Flyme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 93
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 94
    const-string v0, "NewsNetworkUtils"

    const-string v1, "showOfflineDialogNotice: context is not activity or application!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :goto_1
    return-void

    .line 90
    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 91
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 97
    :cond_2
    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->mz_wif_setting_dialog_message:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 99
    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->mz_wif_setting_dialog_set:I

    new-instance v2, Lcom/meizu/flyme/media/news/a/h$1;

    invoke-direct {v2, p0}, Lcom/meizu/flyme/media/news/a/h$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 106
    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_cancel:I

    new-instance v2, Lcom/meizu/flyme/media/news/a/h$2;

    invoke-direct {v2}, Lcom/meizu/flyme/media/news/a/h$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    .line 113
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/f;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 116
    :cond_3
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 122
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/f;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    sget v1, Lcom/meizu/flyme/media/news/lite/R$style;->Base_Theme_Flyme_AppCompat_Light_Dialog_Alert:I

    invoke-direct {v0, p0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 127
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 128
    const-string v0, "NewsNetworkUtils"

    const-string v1, "showNetworkErrorDialog: context is not activity or application!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/meizu/flyme/media/news/helper/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :goto_1
    return-void

    .line 124
    :cond_1
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 125
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :cond_2
    sget v1, Lcom/meizu/flyme/media/news/lite/R$string;->news_network_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/meizu/flyme/media/news/lite/R$string;->news_confirm:I

    new-instance v3, Lcom/meizu/flyme/media/news/a/h$3;

    invoke-direct {v3}, Lcom/meizu/flyme/media/news/a/h$3;-><init>()V

    .line 133
    invoke-virtual {v1, v2, v3}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    .line 140
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/flyme/media/news/lite/f;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 143
    :cond_3
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    const-string v0, "connectivity"

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    const-string v0, "unknown"

    .line 165
    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    const-string v0, "wifi"

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-static {p0}, Lcom/meizu/flyme/media/news/a/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_0
    const-string v0, "none"

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "phone"

    .line 170
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 171
    if-nez v0, :cond_0

    .line 172
    const-string v0, "none"

    .line 198
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    const-string v0, "unknown"

    goto :goto_0

    .line 180
    :pswitch_0
    const-string v0, "2g"

    goto :goto_0

    .line 191
    :pswitch_1
    const-string v0, "3g"

    goto :goto_0

    .line 194
    :pswitch_2
    const-string v0, "4g"

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
