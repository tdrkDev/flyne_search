.class public Lcom/inveno/basics/main/ui/a;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lflyme/support/v7/widget/RecyclerView$Adapter;",
        ">",
        "Lflyme/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lflyme/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    .line 58
    return-void
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 157
    const/16 v0, -0x3e8

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit16 v0, v0, -0x3e8

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Z
    .locals 1

    .prologue
    .line 161
    const/16 v0, -0x7d0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t have a null footer!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t have a null header!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 204
    add-int/lit16 v0, p1, -0x3e8

    .line 210
    :goto_0
    return v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 210
    :cond_1
    add-int/lit16 v0, p1, -0x7d0

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0, p2}, Lcom/inveno/basics/main/ui/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    add-int/lit16 v0, p2, 0x3e8

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 168
    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 169
    new-instance v1, Lcom/inveno/basics/main/ui/a$1;

    invoke-direct {v1, p0, v0}, Lcom/inveno/basics/main/ui/a$1;-><init>(Lcom/inveno/basics/main/ui/a;Landroid/view/View;)V

    move-object v0, v1

    .line 178
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-direct {p0, p2}, Lcom/inveno/basics/main/ui/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    add-int/lit16 v0, p2, 0x7d0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/inveno/basics/main/ui/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 174
    new-instance v1, Lcom/inveno/basics/main/ui/a$2;

    invoke-direct {v1, p0, v0}, Lcom/inveno/basics/main/ui/a$2;-><init>(Lcom/inveno/basics/main/ui/a;Landroid/view/View;)V

    move-object v0, v1

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/inveno/basics/main/ui/a;->a:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method
