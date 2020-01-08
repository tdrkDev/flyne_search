.class public final Lcom/loc/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/aj$a;
    }
.end annotation


# static fields
.field private static a:Lcom/loc/aj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/loc/aj;
    .locals 1

    sget-object v0, Lcom/loc/aj;->a:Lcom/loc/aj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/aj;

    invoke-direct {v0}, Lcom/loc/aj;-><init>()V

    sput-object v0, Lcom/loc/aj;->a:Lcom/loc/aj;

    :cond_0
    sget-object v0, Lcom/loc/aj;->a:Lcom/loc/aj;

    return-object v0
.end method

.method public static a(Lcom/loc/ap;Z)Lcom/loc/aq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/cp;
        }
    .end annotation

    if-nez p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/loc/cp;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/cp;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/loc/cp; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/loc/ap;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p0}, Lcom/loc/ap;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/loc/cp;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/cp;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/loc/cp; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/cp;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/cp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/loc/ap;->e:Ljava/net/Proxy;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/loc/an;

    iget v1, p0, Lcom/loc/ap;->c:I

    iget v3, p0, Lcom/loc/ap;->d:I

    invoke-direct {v2, v1, v3, v0, p1}, Lcom/loc/an;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p0}, Lcom/loc/ap;->e()[B

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/loc/ap;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/loc/ap;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p0}, Lcom/loc/ap;->e()[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v4, v0

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/loc/ap;->a()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/an;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lcom/loc/cz;->a(Ljava/lang/String;)[B

    move-result-object v0

    :cond_5
    invoke-virtual {v2, v1, v3, v0}, Lcom/loc/an;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/aq;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/loc/ap;->e:Ljava/net/Proxy;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/loc/ap;->a()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/loc/ap;->c()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_8
    invoke-static {v0}, Lcom/loc/an;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/loc/ap;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lcom/loc/cp; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public static a(Lcom/loc/ap;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/cp;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/loc/aj;->a(Lcom/loc/ap;Z)Lcom/loc/aq;
    :try_end_0
    .catch Lcom/loc/cp; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/loc/aq;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "BaseNetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/cp;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/cp;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
