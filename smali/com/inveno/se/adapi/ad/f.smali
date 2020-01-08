.class Lcom/inveno/se/adapi/ad/f;
.super Lcom/inveno/se/adapi/ad/a;


# instance fields
.field final synthetic a:Lcom/inveno/se/adapi/ad/DownloadService;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/ad/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/f;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-direct {p0}, Lcom/inveno/se/adapi/ad/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/inveno/se/tools/StringTools;->getFileNameFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/f;->a:Lcom/inveno/se/adapi/ad/DownloadService;

    invoke-static {v2}, Lcom/inveno/se/adapi/ad/DownloadService;->access$600(Lcom/inveno/se/adapi/ad/DownloadService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/inveno/se/adapi/ad/c;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/inveno/se/tools/SdcardUtil;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "install.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inveno/se/tools/StringTools;->saveJsonStrToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "silentInstall"

    const-string v1, "\u9759\u9ed8\u4e0b\u8f7d\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/inveno/se/tools/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogA(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/inveno/se/adapi/ad/a;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/inveno/se/adapi/ad/a;->b(Ljava/lang/String;)V

    return-void
.end method
