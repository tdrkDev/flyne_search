.class Lcom/google/gson/a/g$b$1;
.super Lcom/google/gson/a/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/a/g$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/a/g",
        "<TK;TV;>.c<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/a/g$b;


# direct methods
.method constructor <init>(Lcom/google/gson/a/g$b;)V
    .locals 1

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/gson/a/g$b$1;->a:Lcom/google/gson/a/g$b;

    iget-object v0, p1, Lcom/google/gson/a/g$b;->a:Lcom/google/gson/a/g;

    invoke-direct {p0, v0}, Lcom/google/gson/a/g$c;-><init>(Lcom/google/gson/a/g;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/google/gson/a/g$b$1;->b()Lcom/google/gson/a/g$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/a/g$d;->f:Ljava/lang/Object;

    return-object v0
.end method
