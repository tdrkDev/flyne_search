.class Lcom/inveno/se/adapi/ad/http/g$a;
.super Ljava/io/RandomAccessFile;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/se/adapi/ad/http/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/se/adapi/ad/http/g;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/inveno/se/adapi/ad/http/g;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-direct {p0, p2, p3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->b:I

    return-void
.end method


# virtual methods
.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->b:I

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/http/g;->g(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/inveno/se/adapi/ad/http/g;->a(Lcom/inveno/se/adapi/ad/http/g;J)J

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/inveno/se/adapi/ad/http/g;->b(Lcom/inveno/se/adapi/ad/http/g;J)J

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    iget v1, p0, Lcom/inveno/se/adapi/ad/http/g$a;->b:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/inveno/se/adapi/ad/http/g;->c(Lcom/inveno/se/adapi/ad/http/g;J)J

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/http/g;->e(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/http/g;->f(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/http/g;->h(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v4

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/inveno/se/adapi/ad/http/g;->d(Lcom/inveno/se/adapi/ad/http/g;J)J

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    int-to-double v2, p3

    iget-object v1, p0, Lcom/inveno/se/adapi/ad/http/g$a;->a:Lcom/inveno/se/adapi/ad/http/g;

    invoke-static {v1}, Lcom/inveno/se/adapi/ad/http/g;->i(Lcom/inveno/se/adapi/ad/http/g;)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/inveno/se/adapi/ad/http/g;->a(Lcom/inveno/se/adapi/ad/http/g;D)D

    return-void
.end method
