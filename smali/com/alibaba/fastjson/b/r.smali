.class public abstract Lcom/alibaba/fastjson/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/b/r;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/alibaba/fastjson/c/c;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/c/c;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/alibaba/fastjson/b/r;->e:Z

    .line 38
    iput-object p1, p0, Lcom/alibaba/fastjson/b/r;->a:Lcom/alibaba/fastjson/c/c;

    .line 39
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/c/c;->a(Z)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/b/r;->b:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\':"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/b/r;->c:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/b/r;->d:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/c/c;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 48
    if-eqz v0, :cond_1

    .line 49
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/b/ap;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v1, v2, v0

    .line 50
    sget-object v4, Lcom/alibaba/fastjson/b/ap;->WriteMapNullValue:Lcom/alibaba/fastjson/b/ap;

    if-ne v1, v4, :cond_0

    .line 51
    iput-boolean v5, p0, Lcom/alibaba/fastjson/b/r;->e:Z

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/r;)I
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/r;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alibaba/fastjson/b/r;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/c/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alibaba/fastjson/b/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/alibaba/fastjson/b/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/b/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/b/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/alibaba/fastjson/b/r;->e:Z

    return v0
.end method

.method public b()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson/b/r;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson/b/r;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/alibaba/fastjson/b/r;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/r;->a(Lcom/alibaba/fastjson/b/r;)I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/fastjson/b/r;->a:Lcom/alibaba/fastjson/c/c;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/c/c;->d()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
