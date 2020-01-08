.class final Lcom/meizu/flyme/media/news/helper/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/helper/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Lcom/meizu/flyme/media/news/protocol/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/meizu/flyme/media/news/protocol/c;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/meizu/flyme/media/news/protocol/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/meizu/flyme/media/news/protocol/c",
            "<TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/meizu/flyme/media/news/helper/a$a;->a:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lcom/meizu/flyme/media/news/helper/a$a;->b:Lcom/meizu/flyme/media/news/protocol/c;

    .line 89
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/flyme/media/news/helper/a$a;->b:Lcom/meizu/flyme/media/news/protocol/c;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/helper/a$a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/protocol/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
