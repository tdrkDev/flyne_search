.class public Lcom/inveno/transcode/presenter/DefaultTranscodeConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeLog()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->b:Z

    .line 20
    return-void
.end method

.method public static isLogOpen()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->b:Z

    return v0
.end method

.method public static setHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ht_template_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inveno/transcode/presenter/DefaultTranscodeConfig$a;->a:Ljava/lang/String;

    .line 12
    return-void
.end method
