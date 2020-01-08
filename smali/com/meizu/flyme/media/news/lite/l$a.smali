.class final Lcom/meizu/flyme/media/news/lite/l$a;
.super Lcom/meizu/flyme/media/news/widget/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/flyme/media/news/lite/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/l;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/widget/b;-><init>()V

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/lite/l$a;->a:Ljava/lang/ref/WeakReference;

    .line 159
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/meizu/flyme/media/news/widget/b;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 164
    return-void
.end method
