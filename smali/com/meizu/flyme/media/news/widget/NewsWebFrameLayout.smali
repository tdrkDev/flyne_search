.class public Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;,
        Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;,
        Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/meizu/flyme/media/news/protocol/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->d:I

    .line 48
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->e:Ljava/util/Set;

    .line 63
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {p1}, Lcom/meizu/flyme/media/news/lite/f;->a(Landroid/content/Context;)Lcom/meizu/flyme/media/news/lite/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/f$a;->a()V

    .line 66
    :cond_0
    invoke-static {}, Lcom/meizu/flyme/media/news/lite/f;->h()Lcom/meizu/flyme/media/news/lite/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/lite/f;->b()Lcom/meizu/flyme/media/news/protocol/d;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/meizu/flyme/media/news/widget/a;->a:Lcom/meizu/flyme/media/news/protocol/d;

    .line 70
    :cond_1
    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->f:Lcom/meizu/flyme/media/news/protocol/d;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsWebFrameLayout:[I

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    sget v1, Lcom/meizu/flyme/media/news/lite/R$styleable;->NewsWebFrameLayout_newsLoadingView:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->c:I

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    return-void
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 134
    iget v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->d:I

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 135
    iput p1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->d:I

    .line 136
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->getLoadingView()Landroid/view/View;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    if-nez p1, :cond_1

    .line 140
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->removeView(Landroid/view/View;)V

    .line 145
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->e:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;

    .line 146
    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    invoke-interface {v0, v2, p1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;->a(Landroid/view/View;I)V

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 149
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a(I)V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    .line 152
    sget-object v0, Lcom/meizu/flyme/media/news/helper/g;->a:Lcom/meizu/flyme/media/news/helper/g;

    invoke-virtual {v0}, Lcom/meizu/flyme/media/news/helper/g;->a()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->f:Lcom/meizu/flyme/media/news/protocol/d;

    iget-object v2, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    int-to-long v4, v0

    new-instance v3, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$1;

    invoke-direct {v3, p0, v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$1;-><init>(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;I)V

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/meizu/flyme/media/news/protocol/d;->a(Landroid/view/View;JLcom/meizu/flyme/media/news/protocol/e;)V

    .line 162
    return-void
.end method

.method private getLoadingView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b:Landroid/view/View;

    .line 173
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->c:I

    if-lez v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->c:I

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b:Landroid/view/View;

    .line 171
    iput v3, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->c:I

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->removeAllViews()V

    .line 95
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->f:Lcom/meizu/flyme/media/news/protocol/d;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/protocol/d;->onDestroyView(Landroid/view/View;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    .line 97
    return-void
.end method

.method public final a(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->f:Lcom/meizu/flyme/media/news/protocol/d;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/meizu/flyme/media/news/protocol/d;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public final b(Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$c;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->f:Lcom/meizu/flyme/media/news/protocol/d;

    invoke-virtual {p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/meizu/flyme/media/news/protocol/d;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->setWebChromeClient(Lcom/meizu/flyme/media/news/widget/b;)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->setWebViewClient(Lcom/meizu/flyme/media/news/widget/c;)V

    .line 87
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public setLoadingView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 118
    iput-object p1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->b:Landroid/view/View;

    .line 119
    return-void
.end method

.method public setLoadingViewResId(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 122
    iput p1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->c:I

    .line 123
    return-void
.end method

.method public final setWebChromeClient(Lcom/meizu/flyme/media/news/widget/b;)V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->f:Lcom/meizu/flyme/media/news/protocol/d;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    new-instance v2, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;

    invoke-direct {v2, p1, p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$a;-><init>(Lcom/meizu/flyme/media/news/widget/b;Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/media/news/protocol/d;->a(Landroid/view/View;Lcom/meizu/flyme/media/news/widget/b;)V

    .line 115
    return-void
.end method

.method public final setWebViewClient(Lcom/meizu/flyme/media/news/widget/c;)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->f:Lcom/meizu/flyme/media/news/protocol/d;

    iget-object v1, p0, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;->a:Landroid/view/View;

    new-instance v2, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;

    invoke-direct {v2, p1, p0}, Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout$b;-><init>(Lcom/meizu/flyme/media/news/widget/c;Lcom/meizu/flyme/media/news/widget/NewsWebFrameLayout;)V

    invoke-interface {v0, v1, v2}, Lcom/meizu/flyme/media/news/protocol/d;->a(Landroid/view/View;Lcom/meizu/flyme/media/news/widget/c;)V

    .line 110
    return-void
.end method
