.class public Lcom/meizu/flyme/internet/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-object v1, Lcom/meizu/flyme/internet/d/a;->a:Ljava/lang/String;

    .line 18
    sput-object v1, Lcom/meizu/flyme/internet/d/a;->b:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/meizu/flyme/internet/d/a;->c:I

    .line 20
    sput-object v1, Lcom/meizu/flyme/internet/d/a;->d:Ljava/lang/Boolean;

    .line 21
    sput-object v1, Lcom/meizu/flyme/internet/d/a;->e:Ljava/lang/Boolean;

    .line 22
    sput-object v1, Lcom/meizu/flyme/internet/d/a;->f:Ljava/lang/String;

    .line 23
    sput-object v1, Lcom/meizu/flyme/internet/d/a;->g:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/meizu/flyme/internet/d/a;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 43
    sget-object v0, Lcom/meizu/flyme/internet/d/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    const-string v0, "ro.serialno"

    invoke-static {v0}, Lcom/meizu/flyme/internet/d/e;->a(Ljava/lang/String;)Lcom/meizu/flyme/internet/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 51
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Lcom/meizu/flyme/internet/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/meizu/flyme/internet/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/flyme/internet/d/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    iget-object v0, v1, Lcom/meizu/flyme/internet/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/internet/d/a;->b:Ljava/lang/String;

    .line 56
    :goto_1
    const-string v0, "0123456789ABCDEF"

    sget-object v1, Lcom/meizu/flyme/internet/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/meizu/flyme/internet/d/a;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 57
    sput-object v2, Lcom/meizu/flyme/internet/d/a;->b:Ljava/lang/String;

    .line 58
    sget v0, Lcom/meizu/flyme/internet/d/a;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/meizu/flyme/internet/d/a;->c:I

    .line 61
    :cond_0
    sget-object v0, Lcom/meizu/flyme/internet/d/a;->b:Ljava/lang/String;

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "Device"

    const-string v3, "sn"

    invoke-static {v1, v3, v0}, Lcom/meizu/flyme/internet/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_0

    .line 54
    :cond_1
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/internet/d/a;->b:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/meizu/flyme/internet/d/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {}, Lcom/meizu/flyme/internet/d/c;->a()Lcom/meizu/flyme/internet/a;

    move-result-object v0

    .line 29
    iget-boolean v1, v0, Lcom/meizu/flyme/internet/a;->b:Z

    if-eqz v1, :cond_1

    .line 30
    iget-object v0, v0, Lcom/meizu/flyme/internet/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/meizu/flyme/internet/d/a;->a:Ljava/lang/String;

    .line 39
    :cond_0
    :goto_0
    sget-object v0, Lcom/meizu/flyme/internet/d/a;->a:Ljava/lang/String;

    return-object v0

    .line 32
    :cond_1
    const-string v0, "phone"

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/flyme/internet/d/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 99
    const-string v0, "unknown"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
