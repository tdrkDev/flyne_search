.class Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/protocol/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;I)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$1;->b:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    iput p2, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 157
    iget v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$1;->a:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$1;->b:Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;I)V

    .line 160
    :cond_0
    return-void
.end method
