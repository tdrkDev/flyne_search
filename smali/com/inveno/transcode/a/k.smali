.class Lcom/inveno/transcode/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/transcode/config/IResponseListener;


# instance fields
.field final synthetic a:Lcom/inveno/transcode/a/j;


# direct methods
.method constructor <init>(Lcom/inveno/transcode/a/j;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/inveno/transcode/a/k;->a:Lcom/inveno/transcode/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "transcode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------onErrorResponse-----error.getMessage()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/inveno/transcode/a/k;->a:Lcom/inveno/transcode/a/j;

    iget-object v0, v0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v0}, Lcom/inveno/transcode/a/h;->e(Lcom/inveno/transcode/a/h;)Lcom/inveno/transcode/config/IInvenoTransUpdate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/inveno/transcode/a/k;->a:Lcom/inveno/transcode/a/j;

    iget-object v0, v0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v0}, Lcom/inveno/transcode/a/h;->e(Lcom/inveno/transcode/a/h;)Lcom/inveno/transcode/config/IInvenoTransUpdate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/inveno/transcode/config/IInvenoTransUpdate;->onResut(Z)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/inveno/transcode/a/k;->a:Lcom/inveno/transcode/a/j;

    iget-object v0, v0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v0, p1}, Lcom/inveno/transcode/a/h;->a(Lcom/inveno/transcode/a/h;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
