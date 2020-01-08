.class Lcom/inveno/transcode/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inveno/transcode/presenter/c;


# instance fields
.field final synthetic a:Lcom/inveno/transcode/view/TranscodeObject;


# direct methods
.method constructor <init>(Lcom/inveno/transcode/view/TranscodeObject;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/inveno/transcode/view/a;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/transcode/view/a;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/transcode/view/a;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$000(Lcom/inveno/transcode/view/TranscodeObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/inveno/transcode/view/a;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v0}, Lcom/inveno/transcode/view/TranscodeObject;->access$100(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/view/TranscodeObject$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 94
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 95
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 96
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/inveno/transcode/view/a;->a:Lcom/inveno/transcode/view/TranscodeObject;

    invoke-static {v1}, Lcom/inveno/transcode/view/TranscodeObject;->access$100(Lcom/inveno/transcode/view/TranscodeObject;)Lcom/inveno/transcode/view/TranscodeObject$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inveno/transcode/view/TranscodeObject$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
