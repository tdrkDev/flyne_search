.class La/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/h;->b(La/f;Ljava/util/concurrent/Executor;La/c;)La/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/f",
        "<TTResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La/i;

.field final synthetic b:La/f;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:La/c;

.field final synthetic e:La/h;


# direct methods
.method constructor <init>(La/h;La/i;La/f;Ljava/util/concurrent/Executor;La/c;)V
    .locals 0

    .prologue
    .line 705
    iput-object p1, p0, La/h$2;->e:La/h;

    iput-object p2, p0, La/h$2;->a:La/i;

    iput-object p3, p0, La/h$2;->b:La/f;

    iput-object p4, p0, La/h$2;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, La/h$2;->d:La/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/h;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/h",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, La/h$2;->a:La/i;

    iget-object v1, p0, La/h$2;->b:La/f;

    iget-object v2, p0, La/h$2;->c:Ljava/util/concurrent/Executor;

    iget-object v3, p0, La/h$2;->d:La/c;

    invoke-static {v0, v1, p1, v2, v3}, La/h;->b(La/i;La/f;La/h;Ljava/util/concurrent/Executor;La/c;)V

    .line 709
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(La/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 705
    invoke-virtual {p0, p1}, La/h$2;->a(La/h;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
