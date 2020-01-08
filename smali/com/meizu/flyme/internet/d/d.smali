.class public Lcom/meizu/flyme/internet/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/internet/d/d$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/flyme/internet/d/d;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/meizu/flyme/internet/d/d$a;
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/flyme/internet/d/d;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/meizu/flyme/internet/d/d$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lcom/meizu/flyme/internet/d/d$a;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/meizu/flyme/internet/d/d$a;

    invoke-direct {v0}, Lcom/meizu/flyme/internet/d/d$a;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 37
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, v0, Lcom/meizu/flyme/internet/d/d$a;->a:Ljava/lang/String;

    .line 38
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, v0, Lcom/meizu/flyme/internet/d/d$a;->b:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method
