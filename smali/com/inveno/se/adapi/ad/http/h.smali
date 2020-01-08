.class Lcom/inveno/se/adapi/ad/http/h;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/inveno/se/adapi/ad/http/g;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/ad/http/g;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/http/g;->a(Lcom/inveno/se/adapi/ad/http/g;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/http/g;->b(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/http/g;->c(Lcom/inveno/se/adapi/ad/http/g;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v3}, Lcom/inveno/se/adapi/ad/http/g;->d(Lcom/inveno/se/adapi/ad/http/g;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "kb/s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v2}, Lcom/inveno/se/adapi/ad/http/g;->e(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v4}, Lcom/inveno/se/adapi/ad/http/g;->f(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v4}, Lcom/inveno/se/adapi/ad/http/g;->b(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/inveno/se/adapi/ad/http/g;->a(Ljava/lang/String;JI)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/h;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/http/g;->c(Lcom/inveno/se/adapi/ad/http/g;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
