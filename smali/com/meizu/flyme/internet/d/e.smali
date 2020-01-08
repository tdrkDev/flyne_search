.class public Lcom/meizu/flyme/internet/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/meizu/flyme/internet/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/meizu/flyme/internet/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/String;)Lcom/meizu/flyme/internet/b/a;

    move-result-object v0

    const-string v1, "get"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/meizu/flyme/internet/b/a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/flyme/internet/b/b;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 17
    invoke-virtual {v0, v1}, Lcom/meizu/flyme/internet/b/b;->a([Ljava/lang/Object;)Lcom/meizu/flyme/internet/a;

    move-result-object v0

    .line 15
    return-object v0
.end method
