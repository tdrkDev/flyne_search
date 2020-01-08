.class Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;->b(Landroid/view/View;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout$1;->a:Lcom/meizu/flyme/media/news/lite/NewsNgFeedBackLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 483
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 484
    return-void
.end method
