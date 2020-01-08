.class La/h$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/f",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/h$4;


# direct methods
.method constructor <init>(La/h$4;)V
    .locals 0

    .prologue
    .line 921
    iput-object p1, p0, La/h$4$1;->a:La/h$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/h;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/h",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 924
    iget-object v0, p0, La/h$4$1;->a:La/h$4;

    iget-object v0, v0, La/h$4;->a:La/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/h$4$1;->a:La/h$4;

    iget-object v0, v0, La/h$4;->a:La/c;

    invoke-virtual {v0}, La/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, La/h$4$1;->a:La/h$4;

    iget-object v0, v0, La/h$4;->b:La/i;

    invoke-virtual {v0}, La/i;->c()V

    .line 936
    :goto_0
    return-object v2

    .line 929
    :cond_0
    invoke-virtual {p1}, La/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, La/h$4$1;->a:La/h$4;

    iget-object v0, v0, La/h$4;->b:La/i;

    invoke-virtual {v0}, La/i;->c()V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p1}, La/h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 932
    iget-object v0, p0, La/h$4$1;->a:La/h$4;

    iget-object v0, v0, La/h$4;->b:La/i;

    invoke-virtual {p1}, La/h;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/i;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 934
    :cond_2
    iget-object v0, p0, La/h$4$1;->a:La/h$4;

    iget-object v0, v0, La/h$4;->b:La/i;

    invoke-virtual {p1}, La/h;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/i;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(La/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 921
    invoke-virtual {p0, p1}, La/h$4$1;->a(La/h;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
