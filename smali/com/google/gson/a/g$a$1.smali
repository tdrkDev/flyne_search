.class Lcom/google/gson/a/g$a$1;
.super Lcom/google/gson/a/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/a/g$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/a/g",
        "<TK;TV;>.c<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/a/g$a;


# direct methods
.method constructor <init>(Lcom/google/gson/a/g$a;)V
    .locals 1

    .prologue
    .line 566
    iput-object p1, p0, Lcom/google/gson/a/g$a$1;->a:Lcom/google/gson/a/g$a;

    iget-object v0, p1, Lcom/google/gson/a/g$a;->a:Lcom/google/gson/a/g;

    invoke-direct {p0, v0}, Lcom/google/gson/a/g$c;-><init>(Lcom/google/gson/a/g;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/google/gson/a/g$a$1;->b()Lcom/google/gson/a/g$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/google/gson/a/g$a$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
