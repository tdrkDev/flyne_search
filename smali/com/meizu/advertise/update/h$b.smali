.class Lcom/meizu/advertise/update/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/update/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/meizu/advertise/update/e;

.field private c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p1, p0, Lcom/meizu/advertise/update/h$b;->a:Landroid/content/Context;

    .line 365
    iput-object p2, p0, Lcom/meizu/advertise/update/h$b;->b:Lcom/meizu/advertise/update/e;

    .line 366
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/meizu/advertise/update/e;I)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/meizu/advertise/update/h$b;->a:Landroid/content/Context;

    .line 356
    iput-object p2, p0, Lcom/meizu/advertise/update/h$b;->b:Lcom/meizu/advertise/update/e;

    .line 357
    iput p3, p0, Lcom/meizu/advertise/update/h$b;->c:I

    .line 358
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 370
    iget v0, p0, Lcom/meizu/advertise/update/h$b;->c:I

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/meizu/advertise/update/h$b;->b:Lcom/meizu/advertise/update/e;

    invoke-virtual {v0}, Lcom/meizu/advertise/update/e;->b()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/meizu/advertise/update/h$b;->b:Lcom/meizu/advertise/update/e;

    invoke-virtual {v1}, Lcom/meizu/advertise/update/e;->e()Ljava/lang/String;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/meizu/advertise/update/h$b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 374
    if-nez v2, :cond_0

    .line 385
    :goto_0
    return-void

    .line 377
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/install/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "plugin.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/meizu/advertise/update/h$b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_1

    .line 381
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/meizu/advertise/update/h$b;->c:I

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/meizu/advertise/update/h$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/advertise/update/h$b;->b:Lcom/meizu/advertise/update/e;

    iget v2, p0, Lcom/meizu/advertise/update/h$b;->c:I

    invoke-static {v0, v1, v2}, Lcom/meizu/advertise/update/h;->a(Landroid/content/Context;Lcom/meizu/advertise/update/e;I)V

    goto :goto_0
.end method
