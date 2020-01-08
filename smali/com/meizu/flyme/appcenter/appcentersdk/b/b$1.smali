.class Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->onEvent(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

.field final synthetic b:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/b/b;Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;->b:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 79
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;->a:Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->a()Ljava/util/Map;

    move-result-object v2

    .line 81
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;->b:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    invoke-static {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a(Lcom/meizu/flyme/appcenter/appcentersdk/b/b;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 82
    new-instance v3, Lokhttp3/q$a;

    invoke-direct {v3}, Lokhttp3/q$a;-><init>()V

    .line 83
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lokhttp3/q$a;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/q$a;

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Lokhttp3/z$a;

    invoke-direct {v0}, Lokhttp3/z$a;-><init>()V

    const-string v1, "https://t-u.flyme.cn/track/public/unbidding"

    .line 89
    invoke-virtual {v0, v1}, Lokhttp3/z$a;->a(Ljava/lang/String;)Lokhttp3/z$a;

    move-result-object v0

    .line 90
    invoke-virtual {v3}, Lokhttp3/q$a;->a()Lokhttp3/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/z$a;->a(Lokhttp3/aa;)Lokhttp3/z$a;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lokhttp3/z$a;->a()Lokhttp3/z;

    move-result-object v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;->b:Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->b(Lcom/meizu/flyme/appcenter/appcentersdk/b/b;)Lokhttp3/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/w;->a(Lokhttp3/z;)Lokhttp3/e;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/e;->a()Lokhttp3/ab;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1$1;

    invoke-direct {v1, p0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1$1;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/b/b$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/ab;->h()Lokhttp3/ac;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ac;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/a/d;

    invoke-static {v0, v1, v4}, Lcom/alibaba/fastjson/e;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/g;[Lcom/alibaba/fastjson/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/appcenter/appcentersdk/data/ResultValue;

    .line 97
    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/data/ResultValue;->getCode()I

    move-result v1

    const/16 v4, 0xc8

    if-ne v1, v4, :cond_2

    .line 98
    const-string v0, "ad-stats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "ad-stats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload stats success : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/alibaba/fastjson/a;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    :goto_1
    return-void

    .line 102
    :cond_2
    const-string v1, "ad-stats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload stats fail , response = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/data/ResultValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | data = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/alibaba/fastjson/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_2
    const-string v1, "ad-stats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload stats result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/fastjson/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    const-string v1, "ad-stats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload stats result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
