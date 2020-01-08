.class public Lcom/inveno/se/adapi/ad/c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/adapi/ad/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static h:Lcom/inveno/se/adapi/ad/c;


# instance fields
.field private b:Lcom/inveno/se/adapi/ad/c$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/ad/http/e;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/se/adapi/ad/http/e;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/inveno/se/adapi/ad/http/a;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/String;

.field private i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/se/adapi/ad/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->f:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->g:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/inveno/se/adapi/ad/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/inveno/se/adapi/ad/c;->i:Landroid/content/Context;

    new-instance v0, Lcom/inveno/se/adapi/ad/c$a;

    invoke-direct {v0, p0}, Lcom/inveno/se/adapi/ad/c$a;-><init>(Lcom/inveno/se/adapi/ad/c;)V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->b:Lcom/inveno/se/adapi/ad/c$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->d:Ljava/util/List;

    new-instance v0, Lcom/inveno/se/adapi/ad/http/a;

    invoke-direct {v0}, Lcom/inveno/se/adapi/ad/http/a;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->e:Lcom/inveno/se/adapi/ad/http/a;

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/inveno/se/adapi/ad/c;
    .locals 2

    sget-object v0, Lcom/inveno/se/adapi/ad/c;->h:Lcom/inveno/se/adapi/ad/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/adapi/ad/c;

    sget-object v1, Lcom/inveno/se/adapi/ad/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/inveno/se/adapi/ad/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Lcom/inveno/se/adapi/ad/c;->h:Lcom/inveno/se/adapi/ad/c;

    sget-object v0, Lcom/inveno/se/adapi/ad/c;->h:Lcom/inveno/se/adapi/ad/c;

    const-string v1, "downloadManager"

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/c;->setName(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/inveno/se/adapi/ad/c;->h:Lcom/inveno/se/adapi/ad/c;

    return-object v0
.end method

.method static synthetic a(Lcom/inveno/se/adapi/ad/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/inveno/se/adapi/ad/http/e;Lcom/inveno/se/adapi/ad/a;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/inveno/se/adapi/ad/http/g;

    invoke-direct {p0, v0, p2}, Lcom/inveno/se/adapi/ad/c;->a(Lcom/inveno/se/adapi/ad/http/g;Lcom/inveno/se/adapi/ad/a;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->b:Lcom/inveno/se/adapi/ad/c$a;

    invoke-virtual {v0, p1}, Lcom/inveno/se/adapi/ad/c$a;->a(Lcom/inveno/se/adapi/ad/http/e;)V

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c;->a()V

    :cond_0
    return-void
.end method

.method private a(Lcom/inveno/se/adapi/ad/http/g;Lcom/inveno/se/adapi/ad/a;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/inveno/se/adapi/ad/http/g;->a(Lcom/inveno/se/adapi/ad/a;)V

    invoke-virtual {p1}, Lcom/inveno/se/adapi/ad/http/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inveno/se/adapi/ad/http/g;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/inveno/se/adapi/ad/a;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/inveno/se/adapi/ad/http/g;->e()Lcom/inveno/se/adapi/ad/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/inveno/se/adapi/ad/http/g;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inveno/se/adapi/ad/http/g;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inveno/se/adapi/ad/a;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/inveno/se/adapi/ad/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->i:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;)Lcom/inveno/se/adapi/ad/http/e;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    new-instance v0, Lcom/inveno/se/adapi/ad/d;

    iget-object v3, p0, Lcom/inveno/se/adapi/ad/c;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/inveno/se/adapi/ad/d;-><init>(Lcom/inveno/se/adapi/ad/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/inveno/se/adapi/ad/http/g;->a(Lcom/inveno/se/adapi/ad/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c;->f:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c;->start()V

    return-void
.end method

.method public declared-synchronized a(Lcom/inveno/se/adapi/ad/http/e;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/inveno/se/adapi/ad/http/g;

    move-object v1, v0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/ad/http/g;->a(Z)V

    invoke-virtual {v1}, Lcom/inveno/se/adapi/ad/http/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/inveno/se/adapi/ad/http/g;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/inveno/se/adapi/ad/http/g;->g()I

    move-result v4

    invoke-virtual {v1}, Lcom/inveno/se/adapi/ad/http/g;->e()Lcom/inveno/se/adapi/ad/a;

    move-result-object v5

    invoke-virtual {v1, v2}, Lcom/inveno/se/adapi/ad/http/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/inveno/se/adapi/ad/c;->b(Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;)Lcom/inveno/se/adapi/ad/http/e;

    move-result-object v1

    const-string v2, "wf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--pausehandler mPausinghandlers.size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/inveno/se/adapi/ad/c;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " title:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " appId:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "\u6682\u505c\u4efb\u52a1url\u51fa\u9519"

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6dfb\u52a0\u4e86\u4e00\u4e2a\u4e0b\u8f7d\u4efb\u52a1url\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c;->e()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/ad/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inveno/se/adapi/ad/c;->b(Ljava/lang/String;Ljava/lang/String;ILcom/inveno/se/adapi/ad/a;)Lcom/inveno/se/adapi/ad/http/e;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/inveno/se/adapi/ad/c;->a(Lcom/inveno/se/adapi/ad/http/e;Lcom/inveno/se/adapi/ad/a;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u6dfb\u52a0url\u5f02\u5e38"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/ad/http/g;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/http/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->b:Lcom/inveno/se/adapi/ad/c$a;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/c$a;->b()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->b:Lcom/inveno/se/adapi/ad/c$a;

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/c$a;->a(I)Lcom/inveno/se/adapi/ad/http/e;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/ad/http/g;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/http/g;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->b:Lcom/inveno/se/adapi/ad/c$a;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/c$a;->b()I

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Lcom/inveno/se/adapi/ad/http/e;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/c;->i:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/inveno/se/adapi/ad/b;->a(ILandroid/content/Context;)V

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/ad/http/e;

    check-cast v0, Lcom/inveno/se/adapi/ad/http/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/http/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/inveno/se/adapi/ad/c;->a(Lcom/inveno/se/adapi/ad/http/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c;->c()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c;->d()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c;->b:Lcom/inveno/se/adapi/ad/c$a;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/c$a;->a()Lcom/inveno/se/adapi/ad/http/e;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/ad/http/g;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/c;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inveno/se/adapi/ad/http/g;->a(Z)V

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/c;->e:Lcom/inveno/se/adapi/ad/http/a;

    invoke-virtual {v0}, Lcom/inveno/se/adapi/ad/http/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/inveno/se/adapi/ad/http/a;->a(Ljava/lang/String;Lcom/inveno/se/adapi/ad/http/e;)V

    goto :goto_0

    :cond_1
    return-void
.end method
