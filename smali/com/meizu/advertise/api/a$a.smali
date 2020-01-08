.class public Lcom/meizu/advertise/api/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/advertise/api/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/advertise/api/a$a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/meizu/advertise/api/a$a;
    .locals 1

    .prologue
    .line 188
    if-nez p0, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/meizu/advertise/api/a$a;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/api/a$a;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    const-string v0, "com.meizu.advertise.plugin.data.AdData"

    invoke-static {p0, v0}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/b/a$a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/meizu/advertise/api/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 184
    :goto_0
    return-object v0

    .line 183
    :cond_0
    check-cast p0, Lcom/meizu/advertise/api/a$a;

    .line 184
    invoke-virtual {p0}, Lcom/meizu/advertise/api/a$a;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 196
    iget-object v0, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 207
    :goto_0
    return-object v0

    .line 200
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 201
    const-string v2, "com.meizu.advertise.plugin.data.AdData"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v2, "getTitle"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 202
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 203
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 207
    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 222
    :goto_0
    return-object v0

    .line 215
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 216
    const-string v2, "com.meizu.advertise.plugin.data.AdData"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v2, "getMzid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 217
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 218
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move-object v0, v1

    .line 222
    goto :goto_0
.end method

.method public c()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    .line 365
    :goto_0
    return v0

    .line 358
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 359
    const-string v2, "com.meizu.advertise.plugin.data.AdData"

    invoke-static {v0, v2}, Lcom/meizu/b/b;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v2, "getStyleType"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 360
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 361
    invoke-interface {v0, v2, v3}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->handleException(Ljava/lang/Exception;)V

    move v0, v1

    .line 365
    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/meizu/advertise/api/a$a;->b:Ljava/lang/Object;

    return-object v0
.end method
