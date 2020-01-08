.class Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)V
    .locals 0

    .prologue
    .line 1910
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1913
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    iget-boolean v0, v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->access$2200(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;->this$0:Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;

    iget v1, v1, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mVoiceID:I

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1916
    :cond_0
    return-void
.end method
