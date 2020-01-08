.class public Lcom/inveno/transcode/config/InvenoTranscode;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelUpdateConfigFromServer()V
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/inveno/transcode/a/h;->a()Lcom/inveno/transcode/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/a/h;->c()V

    .line 176
    return-void
.end method

.method public static exit()V
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/inveno/transcode/a/b;->a()Lcom/inveno/transcode/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/a/b;->b()V

    .line 224
    invoke-static {}, Lcom/inveno/transcode/a/h;->a()Lcom/inveno/transcode/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/a/h;->d()V

    .line 225
    invoke-static {}, Lcom/inveno/transcode/presenter/d;->a()Lcom/inveno/transcode/presenter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/presenter/d;->b()V

    .line 226
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/presenter/f;->a()V

    .line 227
    return-void
.end method

.method public static initLocalConfig(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/inveno/transcode/presenter/f;->a(Landroid/content/Context;ZI)V

    .line 156
    invoke-static {}, Lcom/inveno/transcode/a/h;->a()Lcom/inveno/transcode/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/transcode/a/h;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/inveno/transcode/config/InvenoTranscode;->initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/inveno/transcode/config/InvenoTranscode;->initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;Z)V

    .line 53
    return-void
.end method

.method public static initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 70
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/inveno/transcode/config/InvenoTranscode;->initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;ZI)V

    .line 71
    return-void
.end method

.method public static initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;ZI)V
    .locals 7

    .prologue
    .line 92
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/inveno/transcode/config/InvenoTranscode;->initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;ZILcom/inveno/transcode/config/IInvenoTransUpdate;)V

    .line 93
    return-void
.end method

.method public static initTranscodeConfig(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Ljava/lang/String;ZILcom/inveno/transcode/config/IInvenoTransUpdate;)V
    .locals 6

    .prologue
    .line 116
    if-nez p0, :cond_1

    .line 118
    :try_start_0
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "InvenoTranscode.initTranscodeConfig context is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-static {}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "inveno_ver_eye"

    const-string v1, "inveno_transcode 20181023152803"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v0

    invoke-virtual {v0, p0, p4, p5}, Lcom/inveno/transcode/presenter/f;->a(Landroid/content/Context;ZI)V

    .line 131
    invoke-static {}, Lcom/inveno/transcode/a/g;->a()Lcom/inveno/transcode/a/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inveno/transcode/a/g;->b(Ljava/lang/String;)V

    .line 132
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    invoke-static {}, Lcom/inveno/transcode/a/g;->a()Lcom/inveno/transcode/a/g;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/inveno/transcode/a/g;->a(Ljava/lang/String;)V

    .line 136
    :cond_2
    invoke-static {p1}, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/inveno/transcode/a/h;->a()Lcom/inveno/transcode/a/h;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/inveno/transcode/a/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/inveno/transcode/config/IRequestTool;Lcom/inveno/transcode/config/IInvenoTransUpdate;)V

    .line 140
    invoke-static {}, Lcom/inveno/transcode/config/InvenoTranscode;->updateConfigFromServer()V

    goto :goto_0
.end method

.method public static isExistCache(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/inveno/transcode/presenter/f;->b()Lcom/inveno/transcode/presenter/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/transcode/presenter/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInvenoInfoFlow(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 185
    const-string v1, "h5chn.hotoday.cn/detail.html"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    const-string v1, "invenoapp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "invenouid"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUrlCanTranscode(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lcom/inveno/transcode/a/b;->a()Lcom/inveno/transcode/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inveno/transcode/a/b;->a(Ljava/lang/String;)Lcom/inveno/transcode/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateConfigFromServer()V
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/inveno/transcode/a/h;->a()Lcom/inveno/transcode/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/transcode/a/h;->b()V

    .line 167
    return-void
.end method
