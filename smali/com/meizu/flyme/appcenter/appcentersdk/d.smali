.class public Lcom/meizu/flyme/appcenter/appcentersdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    :goto_0
    return v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 24
    :pswitch_0
    const/16 v0, 0x168

    goto :goto_0

    .line 22
    :pswitch_1
    const-string v1, "search_360"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x2a54b8ea
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
