.class final Lcom/meizu/flyme/media/news/widget/a$a;
.super Landroid/webkit/WebView$VisualStateCallback;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/meizu/flyme/media/news/protocol/e;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/protocol/e;)V
    .locals 0
    .param p1    # Lcom/meizu/flyme/media/news/protocol/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/webkit/WebView$VisualStateCallback;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/a$a;->a:Lcom/meizu/flyme/media/news/protocol/e;

    .line 187
    return-void
.end method


# virtual methods
.method public onComplete(J)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/a$a;->a:Lcom/meizu/flyme/media/news/protocol/e;

    invoke-interface {v0, p1, p2}, Lcom/meizu/flyme/media/news/protocol/e;->a(J)V

    .line 192
    return-void
.end method
