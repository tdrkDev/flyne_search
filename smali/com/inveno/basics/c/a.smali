.class public Lcom/inveno/basics/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/inveno/nxadsdk/model/NativeAd;

.field private b:Landroid/content/Context;

.field private c:Lcom/inveno/basics/main/a;


# direct methods
.method public constructor <init>(Lcom/inveno/nxadsdk/model/NativeAd;Landroid/content/Context;Lcom/inveno/basics/main/a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    .line 40
    iput-object p3, p0, Lcom/inveno/basics/c/a;->c:Lcom/inveno/basics/main/a;

    .line 41
    return-void
.end method

.method private a(Lcom/inveno/basics/b/a;)V
    .locals 3

    .prologue
    .line 154
    sget-object v0, Lcom/inveno/basics/b/a;->NOT_DOWNLOADED:Lcom/inveno/basics/b/a;

    if-ne p1, v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/inveno/se/tools/NetWorkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    sget v2, Lcom/inveno/basics/R$string;->download_downloading:I

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lcom/inveno/basics/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    .line 160
    invoke-virtual {v2}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-direct {p0, v0, v1, v2}, Lcom/inveno/basics/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Landroid/content/Context;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    sget v2, Lcom/inveno/basics/R$string;->download_no_network:I

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1}, Lcom/inveno/basics/c/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    sget-object v0, Lcom/inveno/basics/b/a;->FINISH_DOWNLOAD:Lcom/inveno/basics/b/a;

    if-ne p1, v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/inveno/basics/c/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 169
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 170
    :cond_3
    sget-object v0, Lcom/inveno/basics/b/a;->HAS_INSTALL:Lcom/inveno/basics/b/a;

    if-ne p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/inveno/basics/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->c(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Landroid/content/Context;)V

    .line 292
    const-string v0, "wf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " makePhoneCall num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 294
    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 228
    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appCache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 238
    const-string v2, "com.inveno.meizusearch.downloadservice.fileprovider"

    invoke-static {p2, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void

    .line 243
    :cond_0
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 260
    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    const-class v1, Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    const-string v0, "download_task"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string v0, "hardAdUrl"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v0, "appName"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v0, "id"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->l()Ljava/util/List;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_2

    .line 268
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 269
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/model/adresp/EventTrack;

    .line 271
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getEvent_type()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 272
    const-string v4, "download_url"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getEvent_type()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 276
    const-string v4, "install_url"

    invoke-virtual {v0}, Lcom/inveno/se/adapi/model/adresp/EventTrack;->getNotify_url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 283
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/inveno/basics/b/a;
    .locals 5

    .prologue
    .line 124
    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/inveno/basics/b/a;->NOT_DOWNLOADED:Lcom/inveno/basics/b/a;

    .line 145
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 130
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/inveno/basics/b/a;->HAS_INSTALL:Lcom/inveno/basics/b/a;

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p2}, Lcom/inveno/se/tools/StringTools;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    sget-object v0, Lcom/inveno/basics/b/a;->FINISH_DOWNLOAD:Lcom/inveno/basics/b/a;

    goto :goto_0

    .line 145
    :cond_3
    sget-object v0, Lcom/inveno/basics/b/a;->NOT_DOWNLOADED:Lcom/inveno/basics/b/a;

    goto :goto_0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 183
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 184
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 189
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 191
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    .line 192
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 199
    :goto_1
    if-eqz v0, :cond_0

    .line 201
    invoke-static {p2}, Lcom/inveno/se/tools/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 202
    const-string v0, "wf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544a\u5305\u540d\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  act\u540d:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v0, "wf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5e7f\u544alinkUrl\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v2}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 208
    const-string v1, "url"

    iget-object v2, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v2}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 219
    :cond_0
    :goto_2
    return-void

    .line 191
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 213
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 45
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->d()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 46
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->c()I

    move-result v0

    if-ne v1, v0, :cond_2

    .line 52
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/inveno/basics/c/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    const-string v0, "\u4e0a\u4f20\u70b9\u51fb\u4fe1\u606f"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Landroid/content/Context;)V

    .line 94
    const-string v0, "\u70b9\u51fb\u4e0a\u4f20\u6210\u529f"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogR(Ljava/lang/String;)V

    .line 106
    :cond_1
    :goto_1
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8df3\u8f6c\u6d4f\u89c8\u5668\u62a5\u9519\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/inveno/basics/c/a;->c:Lcom/inveno/basics/main/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v2}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v3}, Lcom/inveno/nxadsdk/model/NativeAd;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AD"

    const-string v6, ""

    invoke-interface/range {v0 .. v7}, Lcom/inveno/basics/main/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->c()I

    move-result v0

    if-ne v5, v0, :cond_3

    .line 80
    iget-object v0, p0, Lcom/inveno/basics/c/a;->c:Lcom/inveno/basics/main/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v2}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v3}, Lcom/inveno/nxadsdk/model/NativeAd;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AD"

    const-string v6, ""

    invoke-interface/range {v0 .. v7}, Lcom/inveno/basics/main/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/inveno/basics/c/a;->c:Lcom/inveno/basics/main/a;

    const-string v1, ""

    iget-object v2, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v2}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v3}, Lcom/inveno/nxadsdk/model/NativeAd;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AD"

    const-string v6, ""

    invoke-interface/range {v0 .. v7}, Lcom/inveno/basics/main/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 96
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/inveno/basics/c/a;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/inveno/basics/b/a;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/inveno/basics/c/a;->a(Lcom/inveno/basics/b/a;)V

    goto/16 :goto_1

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 99
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/basics/c/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 101
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inveno/basics/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->d()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v0}, Lcom/inveno/nxadsdk/model/NativeAd;->j()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    invoke-virtual {v1}, Lcom/inveno/nxadsdk/model/NativeAd;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inveno/basics/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 304
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Landroid/content/Context;)V

    .line 305
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 310
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 111
    const/high16 v1, 0x10000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 112
    const-string v1, "android"

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/inveno/basics/c/a;->a:Lcom/inveno/nxadsdk/model/NativeAd;

    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/inveno/nxadsdk/model/NativeAd;->a(Landroid/content/Context;)V

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 322
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/inveno/basics/c/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 324
    return-void
.end method
