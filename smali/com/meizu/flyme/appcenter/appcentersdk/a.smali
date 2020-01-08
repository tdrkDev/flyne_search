.class public Lcom/meizu/flyme/appcenter/appcentersdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/appcenter/appcentersdk/a$a;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/meizu/flyme/appcenter/appcentersdk/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

.field private d:Ljava/lang/String;

.field private e:I

.field private volatile g:Z

.field private h:Z

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;",
            "Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Landroid/content/ServiceConnection;

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/flyme/appcenter/appcentersdk/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "AppCenterAidlClient"

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b:Ljava/lang/Object;

    .line 38
    const-string v0, "com.meizu.mstore"

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d:Ljava/lang/String;

    .line 41
    const v0, 0x5bb0a8

    iput v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->e:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->g:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->h:Z

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->j:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->k:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->l:Ljava/util/List;

    .line 110
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;

    invoke-direct {v0, p0}, Lcom/meizu/flyme/appcenter/appcentersdk/a$1;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/a;)V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->m:Landroid/content/ServiceConnection;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->n:Ljava/util/List;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/a;Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;)Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    return-object p1
.end method

.method public static a()Lcom/meizu/flyme/appcenter/appcentersdk/a;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->f:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    if-nez v0, :cond_1

    .line 65
    const-class v1, Lcom/meizu/flyme/appcenter/appcentersdk/a;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->f:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/meizu/flyme/appcenter/appcentersdk/a;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;-><init>()V

    sput-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->f:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    .line 69
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->f:Lcom/meizu/flyme/appcenter/appcentersdk/a;

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V
    .locals 2

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    invoke-direct {v0}, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;-><init>()V

    .line 248
    const/4 v1, -0x1

    iput v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->code:I

    .line 249
    const-string v1, "appcenter\'s version is too lower,so it can not support this function"

    iput-object v1, v0, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->data:Ljava/lang/String;

    .line 251
    :try_start_0
    invoke-interface {p1, v0}, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;->onCallback(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/meizu/flyme/appcenter/appcentersdk/a;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->f()V

    return-void
.end method

.method static synthetic c(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->n:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/meizu/flyme/appcenter/appcentersdk/a;)Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 261
    const-string v0, "AppCenterAidlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCachedRequest: mRequestCache\'size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 264
    :try_start_0
    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;

    invoke-interface {v3, v1, v0}, Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;->doAction(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 270
    return-void
.end method


# virtual methods
.method public a(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->j:Ljava/lang/String;

    iput-object v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApk:Ljava/lang/String;

    .line 183
    iget-object v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->k:Ljava/lang/String;

    iput-object v0, p1, Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;->sourceApkInfo:Ljava/lang/String;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    invoke-interface {v0, p1, p2}, Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;->doAction(Lcom/meizu/flyme/appcenter/aidl/BaseAidlMsg;Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 208
    :goto_1
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 193
    :cond_1
    :try_start_3
    const-string v0, "AppCenterAidlClient"

    const-string v2, "doAction: aidl service is not connected and try reconnect and cached current msg "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 195
    invoke-direct {p0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 196
    monitor-exit v1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->i:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    invoke-direct {p0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Lcom/meizu/flyme/appcenter/aidl/ICommonCallback;)V

    .line 201
    monitor-exit v1

    goto :goto_1

    .line 204
    :cond_3
    const-string v0, "AppCenterAidlClient"

    const-string v2, "doAction: add msg to mRequestCache"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->l:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/meizu/flyme/appcenter/appcentersdk/a$a;)V
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    if-nez p1, :cond_0

    .line 293
    :try_start_0
    monitor-exit v1

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->k:Ljava/lang/String;

    .line 322
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->g:Z

    .line 278
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    if-nez p1, :cond_0

    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->i:Landroid/content/Context;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    monitor-exit v3

    .line 106
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->i:Landroid/content/Context;

    .line 83
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 84
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->j:Ljava/lang/String;

    .line 85
    const-string v2, "AppCenterAidlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init: packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/c;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 89
    iget v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->e:I

    if-lt v4, v2, :cond_3

    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d()Z

    move-result v2

    if-nez v2, :cond_4

    .line 91
    const-string v0, "AppCenterAidlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mstore is not support sdk function | mstore\'s versionCode = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit v3

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    .line 89
    goto :goto_1

    .line 94
    :cond_4
    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    :cond_5
    monitor-exit v3

    goto :goto_0

    .line 97
    :cond_6
    invoke-virtual {p0, p1}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_7

    .line 100
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->m:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 101
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->a(Z)V

    .line 106
    :goto_2
    monitor-exit v3

    goto/16 :goto_0

    .line 104
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/a;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_2
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 149
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 150
    const-string v0, "com.meizu.flyme.appcenter.AidlCommonService"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 171
    :goto_0
    return-object v0

    .line 159
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 160
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 161
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 162
    iget-object v5, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->d:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 163
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 171
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->c:Lcom/meizu/flyme/appcenter/aidl/IAidlCommonService;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 146
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->h:Z

    .line 286
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->g:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->h:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/a;->k:Ljava/lang/String;

    return-object v0
.end method
