.class Lcom/inveno/transcode/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/inveno/transcode/a/h;


# direct methods
.method constructor <init>(Lcom/inveno/transcode/a/h;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    iput-object p2, p0, Lcom/inveno/transcode/a/l;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 209
    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v2}, Lcom/inveno/transcode/a/h;->d(Lcom/inveno/transcode/a/h;)I

    move-result v2

    .line 212
    iget-object v3, p0, Lcom/inveno/transcode/a/l;->a:Lorg/json/JSONObject;

    const-string v4, "hash"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 213
    if-eq v2, v3, :cond_0

    .line 214
    new-instance v4, Lcom/inveno/transcode/a/d;

    iget-object v2, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v2}, Lcom/inveno/transcode/a/h;->g(Lcom/inveno/transcode/a/h;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/inveno/transcode/a/d;-><init>(Landroid/content/Context;)V

    .line 215
    iget-object v2, p0, Lcom/inveno/transcode/a/l;->a:Lorg/json/JSONObject;

    const-string v5, "url_template"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 221
    iget-object v5, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v5}, Lcom/inveno/transcode/a/h;->g(Lcom/inveno/transcode/a/h;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/inveno/transcode/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    move v1, v0

    .line 227
    :goto_0
    iget-object v5, p0, Lcom/inveno/transcode/a/l;->a:Lorg/json/JSONObject;

    const-string v6, "url_config"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 230
    invoke-virtual {v4, v5}, Lcom/inveno/transcode/a/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v2, v3}, Lcom/inveno/transcode/a/h;->a(Lcom/inveno/transcode/a/h;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 247
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v0}, Lcom/inveno/transcode/a/h;->a(Lcom/inveno/transcode/a/h;)V

    .line 251
    :cond_1
    :goto_2
    return-void

    .line 236
    :cond_2
    if-eqz v2, :cond_0

    .line 238
    :try_start_1
    iget-object v0, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v0, v3}, Lcom/inveno/transcode/a/h;->a(Lcom/inveno/transcode/a/h;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_2
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :cond_3
    if-eqz v1, :cond_1

    .line 248
    iget-object v0, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v0}, Lcom/inveno/transcode/a/h;->a(Lcom/inveno/transcode/a/h;)V

    goto :goto_2

    .line 247
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lcom/inveno/transcode/a/l;->b:Lcom/inveno/transcode/a/h;

    invoke-static {v1}, Lcom/inveno/transcode/a/h;->a(Lcom/inveno/transcode/a/h;)V

    :cond_4
    throw v0

    :cond_5
    move v2, v1

    goto :goto_0
.end method
