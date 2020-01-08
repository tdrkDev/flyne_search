.class Lcom/meizu/cloud/pushsdk/base/EncryptionWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;->checkFileCount(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter$1;->this$0:Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter$1;->this$0:Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;->access$000(Lcom/meizu/cloud/pushsdk/base/EncryptionWriter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
