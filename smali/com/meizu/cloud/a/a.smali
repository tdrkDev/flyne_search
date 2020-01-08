.class public Lcom/meizu/cloud/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/meizu/cloud/a/a;->a:Z

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/base/Logger;->flush(Z)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/base/Logger;->init(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/pushSdk/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/base/Logger;->setFilePath(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/base/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/base/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/base/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/meizu/cloud/pushsdk/base/Logger;->get()Lcom/meizu/cloud/pushsdk/base/Logger;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/base/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method
