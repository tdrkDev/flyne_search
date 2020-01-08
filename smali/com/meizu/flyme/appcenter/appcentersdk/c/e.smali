.class public Lcom/meizu/flyme/appcenter/appcentersdk/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    if-nez p0, :cond_0

    .line 15
    const-string v0, ""

    .line 17
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
