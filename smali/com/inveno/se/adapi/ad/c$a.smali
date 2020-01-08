.class Lcom/inveno/se/adapi/ad/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/se/adapi/ad/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/se/adapi/ad/c;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/inveno/se/adapi/ad/http/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inveno/se/adapi/ad/c;)V
    .locals 1

    iput-object p1, p0, Lcom/inveno/se/adapi/ad/c$a;->a:Lcom/inveno/se/adapi/ad/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inveno/se/adapi/ad/c$a;->b:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public a()Lcom/inveno/se/adapi/ad/http/e;
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c$a;->a:Lcom/inveno/se/adapi/ad/c;

    invoke-static {v0}, Lcom/inveno/se/adapi/ad/c;->a(Lcom/inveno/se/adapi/ad/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/ad/http/e;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "\u4e0b\u8f7dapp\u7ebf\u7a0b\u5f02\u5e38\uff01"

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(I)Lcom/inveno/se/adapi/ad/http/e;
    .locals 1

    invoke-virtual {p0}, Lcom/inveno/se/adapi/ad/c$a;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c$a;->b:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/adapi/ad/http/e;

    goto :goto_0
.end method

.method public a(Lcom/inveno/se/adapi/ad/http/e;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/ad/c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
