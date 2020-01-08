.class public Lcom/alibaba/fastjson/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static final a:Lcom/alibaba/fastjson/b/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/b/o;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/o;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/o;->a:Lcom/alibaba/fastjson/b/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 30
    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 42
    :goto_0
    return-void

    .line 35
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteEnumUsingToString:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    check-cast p2, Ljava/lang/Enum;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    check-cast p2, Ljava/lang/Enum;

    .line 40
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->b(I)V

    goto :goto_0
.end method
