.class public Lcom/meizu/advertise/api/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/advertise/update/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/advertise/api/f$b;,
        Lcom/meizu/advertise/api/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/advertise/d/a;->a(Landroid/content/Context;)I

    move-result v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 75
    packed-switch v0, :pswitch_data_0

    .line 84
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 77
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/advertise/api/f;->c()Z

    move-result v0

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/advertise/api/f;->b()Z

    move-result v0

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    const-string v1, "MZ_AD_CONFIG"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    const-string v1, "WEAK_NETWORK_UPDATE"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    const-string v1, "MZ_AD_CONFIG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 101
    const-string v1, "STRONG_NETWORK_UPDATE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d()J
    .locals 6

    .prologue
    const-wide/32 v0, 0x5265c00

    .line 108
    iget-object v2, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    const-string v3, "MZ_AD_CONFIG"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 109
    const-string v3, "UPDATE_CHECK_INTERVAL"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 110
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 113
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update check interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 114
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/meizu/advertise/api/f;->a()Z

    move-result v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 38
    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    const-string v1, "update start..."

    invoke-static {v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 43
    new-instance v1, Lcom/meizu/update/util/i;

    invoke-direct {v1}, Lcom/meizu/update/util/i;-><init>()V

    .line 44
    invoke-direct {p0}, Lcom/meizu/advertise/api/f;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meizu/update/util/i;->a(J)V

    .line 46
    new-instance v2, Lcom/meizu/update/util/h;

    iget-object v3, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/meizu/update/util/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/meizu/update/util/i;->a(Lcom/meizu/update/util/h;)V

    .line 48
    invoke-static {}, Lcom/meizu/advertise/api/f$a;->a()Lcom/meizu/advertise/api/f$a;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/meizu/update/component/d;->a(Landroid/content/Context;Lcom/meizu/update/component/e;Lcom/meizu/update/util/i;)V

    .line 51
    :try_start_0
    invoke-virtual {v2}, Lcom/meizu/advertise/api/f$a;->b()Lcom/meizu/update/util/PluginUpdateInfo;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/meizu/advertise/api/f$b;->a()Lcom/meizu/advertise/api/f$b;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/meizu/advertise/api/f;->a:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/meizu/update/component/d;->a(Landroid/content/Context;Lcom/meizu/update/util/PluginUpdateInfo;Lcom/meizu/update/component/b;)V

    .line 57
    invoke-virtual {v2}, Lcom/meizu/advertise/api/f$b;->b()Ljava/io/File;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    const-string v2, "update fail"

    invoke-static {v2, v1}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
