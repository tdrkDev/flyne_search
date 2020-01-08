.class Lcom/meizu/gslb2/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/gslb2/p$a;
    }
.end annotation


# direct methods
.method static a(Ljava/lang/String;I)Lcom/meizu/gslb2/p$a;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/meizu/gslb2/p$a;->ERROR:Lcom/meizu/gslb2/p$a;

    .line 17
    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/16 v1, 0x130

    if-eq p1, v1, :cond_0

    .line 18
    invoke-static {}, Lcom/meizu/gslb2/c;->a()Lcom/meizu/gslb2/c;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/meizu/gslb2/c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    :cond_0
    sget-object v0, Lcom/meizu/gslb2/p$a;->SUCCESS:Lcom/meizu/gslb2/p$a;

    .line 34
    :cond_1
    :goto_0
    return-object v0

    .line 20
    :cond_2
    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1

    .line 21
    div-int/lit8 v1, p1, 0x64

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 25
    :pswitch_0
    sget-object v0, Lcom/meizu/gslb2/p$a;->SUCCESS_WEAK:Lcom/meizu/gslb2/p$a;

    goto :goto_0

    .line 28
    :pswitch_1
    const/16 v1, 0x191

    if-eq p1, v1, :cond_3

    const/16 v1, 0x197

    if-ne p1, v1, :cond_1

    .line 29
    :cond_3
    sget-object v0, Lcom/meizu/gslb2/p$a;->ERROR_WEAK:Lcom/meizu/gslb2/p$a;

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
