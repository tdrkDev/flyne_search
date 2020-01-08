.class public Lcom/meizu/advertise/update/PluginContext;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field private a:Lcom/meizu/advertise/update/g;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/update/g;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 25
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    invoke-virtual {v2}, Lcom/meizu/advertise/update/g;->f()Landroid/content/res/Resources;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 28
    return-void
.end method


# virtual methods
.method a(Lcom/meizu/advertise/update/g;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    .line 36
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->h()Landroid/app/Application;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    if-nez v0, :cond_0

    .line 60
    invoke-super {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->e()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    if-nez v0, :cond_0

    .line 97
    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->d()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    if-nez v0, :cond_0

    .line 52
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->f()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/meizu/advertise/update/PluginContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->b:Landroid/view/LayoutInflater;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->b:Landroid/view/LayoutInflater;

    .line 46
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    if-nez v0, :cond_0

    .line 68
    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/advertise/update/PluginContext;->a:Lcom/meizu/advertise/update/g;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/g;->g()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method
