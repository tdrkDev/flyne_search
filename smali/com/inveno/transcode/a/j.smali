.class Lcom/inveno/transcode/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inveno/transcode/a/h;


# direct methods
.method constructor <init>(Lcom/inveno/transcode/a/h;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 52
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    invoke-static {}, Lcom/inveno/transcode/a/g;->a()Lcom/inveno/transcode/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v2}, Lcom/inveno/transcode/a/h;->b(Lcom/inveno/transcode/a/h;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v3}, Lcom/inveno/transcode/a/h;->c(Lcom/inveno/transcode/a/h;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v4}, Lcom/inveno/transcode/a/h;->d(Lcom/inveno/transcode/a/h;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/inveno/transcode/a/g;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Lcom/inveno/transcode/a/k;

    invoke-direct {v2, p0}, Lcom/inveno/transcode/a/k;-><init>(Lcom/inveno/transcode/a/j;)V

    .line 79
    iget-object v3, p0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v3}, Lcom/inveno/transcode/a/h;->f(Lcom/inveno/transcode/a/h;)Lcom/inveno/transcode/config/IRequestTool;

    move-result-object v3

    if-nez v3, :cond_1

    .line 80
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "transcode"

    const-string v1, "InvenoTranscode.initTranscodeConfig requestTools is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v3, p0, Lcom/inveno/transcode/a/j;->a:Lcom/inveno/transcode/a/h;

    invoke-static {v3}, Lcom/inveno/transcode/a/h;->f(Lcom/inveno/transcode/a/h;)Lcom/inveno/transcode/config/IRequestTool;

    move-result-object v3

    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0, v1, v2}, Lcom/inveno/transcode/config/IRequestTool;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/inveno/transcode/config/IResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
