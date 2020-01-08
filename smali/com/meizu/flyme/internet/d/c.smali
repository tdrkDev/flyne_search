.class public Lcom/meizu/flyme/internet/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/meizu/flyme/internet/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/meizu/flyme/internet/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 13
    const-string v0, "android.telephony.MzTelephonyManager"

    invoke-static {v0}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/String;)Lcom/meizu/flyme/internet/b/a;

    move-result-object v0

    const-string v1, "getDeviceId"

    new-array v2, v3, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/flyme/internet/b/b;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/internet/b/b;->a([Ljava/lang/Object;)Lcom/meizu/flyme/internet/a;

    move-result-object v0

    .line 13
    return-object v0
.end method
