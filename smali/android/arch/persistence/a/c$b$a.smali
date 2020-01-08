.class public Landroid/arch/persistence/a/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Ljava/lang/String;

.field c:Landroid/arch/persistence/a/c$a;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Landroid/arch/persistence/a/c$b$a;->a:Landroid/content/Context;

    .line 355
    return-void
.end method


# virtual methods
.method public a(Landroid/arch/persistence/a/c$a;)Landroid/arch/persistence/a/c$b$a;
    .locals 0
    .param p1    # Landroid/arch/persistence/a/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 371
    iput-object p1, p0, Landroid/arch/persistence/a/c$b$a;->c:Landroid/arch/persistence/a/c$a;

    .line 372
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/arch/persistence/a/c$b$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 362
    iput-object p1, p0, Landroid/arch/persistence/a/c$b$a;->b:Ljava/lang/String;

    .line 363
    return-object p0
.end method

.method public a()Landroid/arch/persistence/a/c$b;
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Landroid/arch/persistence/a/c$b$a;->c:Landroid/arch/persistence/a/c$a;

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a callback to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/a/c$b$a;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must set a non-null context to create the configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_1
    new-instance v0, Landroid/arch/persistence/a/c$b;

    iget-object v1, p0, Landroid/arch/persistence/a/c$b$a;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/arch/persistence/a/c$b$a;->b:Ljava/lang/String;

    iget-object v3, p0, Landroid/arch/persistence/a/c$b$a;->c:Landroid/arch/persistence/a/c$a;

    invoke-direct {v0, v1, v2, v3}, Landroid/arch/persistence/a/c$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/a/c$a;)V

    return-object v0
.end method
