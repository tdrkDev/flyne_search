.class public Lcom/meizu/advertise/update/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/pm/PackageInfo;

.field private b:Landroid/content/pm/ApplicationInfo;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/ClassLoader;

.field private g:Landroid/content/res/AssetManager;

.field private h:Landroid/content/res/Resources;

.field private i:Landroid/content/res/Resources$Theme;

.field private j:Landroid/app/Application;


# direct methods
.method private constructor <init>(Landroid/content/pm/PackageInfo;Ljava/lang/ClassLoader;Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/app/Application;)V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/meizu/advertise/update/g;->a:Landroid/content/pm/PackageInfo;

    .line 137
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/meizu/advertise/update/g;->b:Landroid/content/pm/ApplicationInfo;

    .line 138
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/advertise/update/g;->c:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/advertise/update/g;->d:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->a:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/meizu/advertise/update/g;->e:I

    .line 141
    iput-object p2, p0, Lcom/meizu/advertise/update/g;->f:Ljava/lang/ClassLoader;

    .line 142
    iput-object p3, p0, Lcom/meizu/advertise/update/g;->g:Landroid/content/res/AssetManager;

    .line 143
    iput-object p4, p0, Lcom/meizu/advertise/update/g;->h:Landroid/content/res/Resources;

    .line 144
    iput-object p5, p0, Lcom/meizu/advertise/update/g;->i:Landroid/content/res/Resources$Theme;

    .line 145
    iput-object p6, p0, Lcom/meizu/advertise/update/g;->j:Landroid/app/Application;

    .line 146
    return-void
.end method

.method private static a(II)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 92
    const-string v0, "com.android.internal.R$style"

    invoke-static {v0}, Lcom/meizu/b/b;->a(Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    .line 93
    const-string v1, "Theme"

    invoke-interface {v0, v1}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;)Lcom/meizu/b/a$c;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/meizu/b/a$c;->a(Ljava/lang/Object;)I

    move-result v2

    .line 94
    const-string v1, "Theme_Holo"

    invoke-interface {v0, v1}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;)Lcom/meizu/b/a$c;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/meizu/b/a$c;->a(Ljava/lang/Object;)I

    move-result v3

    .line 95
    const-string v1, "Theme_DeviceDefault"

    invoke-interface {v0, v1}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;)Lcom/meizu/b/a$c;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/meizu/b/a$c;->a(Ljava/lang/Object;)I

    move-result v4

    .line 96
    const-string v1, "Theme_DeviceDefault_Light_DarkActionBar"

    invoke-interface {v0, v1}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;)Lcom/meizu/b/a$c;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/meizu/b/a$c;->a(Ljava/lang/Object;)I

    move-result v5

    move v0, p0

    move v1, p1

    .line 97
    invoke-static/range {v0 .. v5}, Lcom/meizu/advertise/update/g;->a(IIIIII)I

    move-result v0

    return v0
.end method

.method public static a(IIIIII)I
    .locals 1

    .prologue
    .line 101
    if-eqz p0, :cond_0

    .line 113
    :goto_0
    return p0

    .line 104
    :cond_0
    const/16 v0, 0xb

    if-ge p1, v0, :cond_1

    move p0, p2

    .line 105
    goto :goto_0

    .line 107
    :cond_1
    const/16 v0, 0xe

    if-ge p1, v0, :cond_2

    move p0, p3

    .line 108
    goto :goto_0

    .line 110
    :cond_2
    const/16 v0, 0x2710

    if-ge p1, v0, :cond_3

    move p0, p4

    .line 111
    goto :goto_0

    :cond_3
    move p0, p5

    .line 113
    goto :goto_0
.end method

.method static synthetic a(Lcom/meizu/advertise/update/g;)Landroid/app/Application;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->j:Landroid/app/Application;

    return-object v0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)Landroid/content/res/Resources$Theme;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 82
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 83
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 84
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 86
    :goto_0
    invoke-static {v1, v0}, Lcom/meizu/advertise/update/g;->a(II)I

    move-result v0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 88
    return-object v2

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 5

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 69
    :try_start_0
    const-string v0, "android.support.v7.widget.TintResources"

    invoke-static {v0}, Lcom/meizu/b/b;->a(Ljava/lang/String;)Lcom/meizu/b/a$a;

    move-result-object v0

    .line 70
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/res/Resources;

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/meizu/b/a$a;->a([Ljava/lang/Class;)Lcom/meizu/b/a$b;

    move-result-object v0

    .line 71
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-interface {v0, v2}, Lcom/meizu/b/a$b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instance TintResources exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/a/d;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/advertise/update/g;
    .locals 8

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 40
    invoke-static {p0}, Lcom/meizu/advertise/update/g;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 41
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-direct {v2, p1, p2, p2, v0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 43
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetManager;

    .line 44
    const-class v0, Landroid/content/res/AssetManager;

    invoke-static {v0}, Lcom/meizu/b/b;->a(Ljava/lang/Class;)Lcom/meizu/b/a$a;

    move-result-object v0

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-interface {v0, v4, v5}, Lcom/meizu/b/a$a;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/meizu/b/a$d;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v0, v3, v4}, Lcom/meizu/b/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {p0, v3}, Lcom/meizu/advertise/update/g;->a(Landroid/content/Context;Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v4

    .line 47
    invoke-static {v4, v1}, Lcom/meizu/advertise/update/g;->a(Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 49
    invoke-static {v1}, Lcom/meizu/advertise/update/g;->a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    new-instance v7, Lcom/meizu/advertise/update/PluginContext;

    invoke-direct {v7, p0}, Lcom/meizu/advertise/update/PluginContext;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {v0, v7}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v6

    .line 55
    new-instance v0, Lcom/meizu/advertise/update/g;

    invoke-direct/range {v0 .. v6}, Lcom/meizu/advertise/update/g;-><init>(Landroid/content/pm/PackageInfo;Ljava/lang/ClassLoader;Landroid/content/res/AssetManager;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/app/Application;)V

    .line 56
    invoke-virtual {v7, v0}, Lcom/meizu/advertise/update/PluginContext;->a(Lcom/meizu/advertise/update/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "new instance exception"

    invoke-static {v1, v0}, Lcom/meizu/a/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 118
    :goto_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 121
    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    const-string v1, "android.app.Application"

    .line 126
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->b:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/meizu/advertise/update/PluginContext;

    invoke-direct {v0, p1, p0}, Lcom/meizu/advertise/update/PluginContext;-><init>(Landroid/content/Context;Lcom/meizu/advertise/update/g;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/meizu/advertise/update/g;->e:I

    return v0
.end method

.method public d()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->f:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public e()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->g:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public f()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->h:Landroid/content/res/Resources;

    return-object v0
.end method

.method public g()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->i:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public h()Landroid/app/Application;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/meizu/advertise/update/g;->j:Landroid/app/Application;

    return-object v0
.end method

.method i()V
    .locals 3

    .prologue
    .line 189
    new-instance v0, Lcom/meizu/advertise/update/g$1;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/update/g$1;-><init>(Lcom/meizu/advertise/update/g;)V

    .line 195
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 199
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PluginInfo{mPackageInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->a:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApplicationInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->b:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/advertise/update/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->f:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAssetManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->g:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->h:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->i:Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApplication="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/advertise/update/g;->j:Landroid/app/Application;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
