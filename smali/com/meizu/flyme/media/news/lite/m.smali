.class public Lcom/meizu/flyme/media/news/lite/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NewsLitePreferences cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 85
    invoke-static {p0}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    :goto_0
    return p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0
.end method

.method public static a()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 47
    const-string v0, "news-lite-dcb56b6a-6cc8-4427-8bb9-0784ee905d27"

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/c;->a(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/m;->b()V

    .line 43
    sget-object v0, Lcom/meizu/flyme/media/news/lite/m;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "news-lite-dcb56b6a-6cc8-4427-8bb9-0784ee905d27"

    invoke-static {v0}, Lcom/meizu/flyme/media/news/helper/c;->a(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    invoke-static {p0, p1, v0}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences$Editor;)Z
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/m;->b()V

    .line 52
    if-nez p1, :cond_0

    const-string v0, ""

    move-object v1, v0

    .line 53
    :goto_0
    sget-object v0, Lcom/meizu/flyme/media/news/lite/m;->a:Ljava/util/Map;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_1
    return v0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 57
    :cond_1
    invoke-interface {p2, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 69
    invoke-static {p0}, Lcom/meizu/flyme/media/news/lite/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return p1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/meizu/flyme/media/news/lite/m;->a:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 118
    const-class v1, Lcom/meizu/flyme/media/news/lite/m;

    monitor-enter v1

    .line 119
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/media/news/lite/m;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "news-lite-dcb56b6a-6cc8-4427-8bb9-0784ee905d27"

    .line 121
    invoke-static {v2}, Lcom/meizu/flyme/media/news/helper/c;->b(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/meizu/flyme/media/news/helper/c;->b(Landroid/content/SharedPreferences;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/meizu/flyme/media/news/lite/m;->a:Ljava/util/Map;

    .line 123
    :cond_0
    monitor-exit v1

    .line 125
    :cond_1
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
