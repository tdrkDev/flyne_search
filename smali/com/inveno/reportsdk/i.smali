.class Lcom/inveno/reportsdk/i;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/inveno/reportsdk/i;


# instance fields
.field private a:Lcom/inveno/reportsdk/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/inveno/reportsdk/w",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/inveno/reportsdk/w;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/inveno/reportsdk/w;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    return-void
.end method

.method static declared-synchronized a()Lcom/inveno/reportsdk/i;
    .locals 2

    const-class v1, Lcom/inveno/reportsdk/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inveno/reportsdk/i;->c:Lcom/inveno/reportsdk/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/reportsdk/i;

    invoke-direct {v0}, Lcom/inveno/reportsdk/i;-><init>()V

    sput-object v0, Lcom/inveno/reportsdk/i;->c:Lcom/inveno/reportsdk/i;

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/i;->c:Lcom/inveno/reportsdk/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a(Lcom/inveno/reportsdk/l$d;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/inveno/reportsdk/l$d;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/w;->b()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u590d\u4e8b\u4ef6 eventId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/inveno/reportsdk/l$d;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scenario = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/inveno/reportsdk/l$d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contentId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/inveno/reportsdk/l$d;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    invoke-virtual {v1, v2}, Lcom/inveno/reportsdk/w;->b(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    invoke-virtual {v1, v2}, Lcom/inveno/reportsdk/w;->a(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/inveno/reportsdk/d;->c:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    invoke-virtual {v1}, Lcom/inveno/reportsdk/w;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/inveno/reportsdk/i;->d()V

    :cond_3
    instance-of v1, p1, Lcom/inveno/reportsdk/l$h;

    if-eqz v1, :cond_4

    const-string v1, "DataSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5165\u53bb\u91cd\u7f13\u5b58 eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/inveno/reportsdk/l$d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scenario = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/inveno/reportsdk/l$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/inveno/reportsdk/l$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serverTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p1, Lcom/inveno/reportsdk/l$h;

    iget-wide v4, p1, Lcom/inveno/reportsdk/l$h;->h:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "DataSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u52a0\u5165\u53bb\u91cd\u7f13\u5b58 eventId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/inveno/reportsdk/l$d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scenario = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/inveno/reportsdk/l$d;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/inveno/reportsdk/l$d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    invoke-virtual {v0}, Lcom/inveno/reportsdk/w;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/inveno/reportsdk/i;->c:Lcom/inveno/reportsdk/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c()V
    .locals 5

    sget-boolean v0, Lcom/inveno/reportsdk/d;->c:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    const-string v1, "data_sdk"

    const-string v2, "de_duplication"

    invoke-static {v0, v1, v2}, Ld/f;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    invoke-virtual {v4, v3}, Lcom/inveno/reportsdk/w;->a(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "de_duplication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53bb\u91cd\u7f13\u5b58\u6062\u590d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method d()V
    .locals 4

    iget-object v0, p0, Lcom/inveno/reportsdk/i;->a:Lcom/inveno/reportsdk/w;

    invoke-virtual {v0}, Lcom/inveno/reportsdk/w;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    sget-boolean v0, Lcom/inveno/reportsdk/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    sget-object v1, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "de_duplication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/inveno/reportsdk/XZSDKManager;->context:Landroid/content/Context;

    const-string v1, "data_sdk"

    const-string v2, "de_duplication"

    iget-object v3, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Ld/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DataSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53bb\u91cd\u7f13\u5b58\u6301\u4e45\u5316\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/reportsdk/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
