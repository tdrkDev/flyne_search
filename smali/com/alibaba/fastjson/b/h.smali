.class public Lcom/alibaba/fastjson/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/alibaba/fastjson/b/h;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/h;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/h;->a:Lcom/alibaba/fastjson/b/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 14
    if-nez p2, :cond_1

    .line 15
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    const-string v1, "[]"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 23
    :cond_1
    check-cast p2, [C

    check-cast p2, [C

    .line 24
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
