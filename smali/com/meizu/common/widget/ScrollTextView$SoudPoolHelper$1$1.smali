.class Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;)V
    .locals 0

    .prologue
    .line 1875
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    .line 1882
    return-void
.end method
