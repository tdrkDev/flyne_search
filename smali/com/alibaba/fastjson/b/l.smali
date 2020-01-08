.class public Lcom/alibaba/fastjson/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/b/l;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/l;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/l;->a:Lcom/alibaba/fastjson/b/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v1

    .line 32
    if-nez p2, :cond_0

    .line 33
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 51
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 37
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v2, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p4, :cond_1

    .line 41
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 42
    const-string v2, "@type"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/b/z;->b(Ljava/lang/String;)V

    .line 44
    const/16 v2, 0x2c

    const-string v3, "val"

    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/fastjson/b/ao;->a(CLjava/lang/String;Ljava/lang/String;)V

    .line 45
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
