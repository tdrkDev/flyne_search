.class Landroid/arch/persistence/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/persistence/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/a/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/arch/persistence/a/a/b$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/a/c$a;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/arch/persistence/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/a/c$a;)Landroid/arch/persistence/a/a/b$a;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/a/a/b;->a:Landroid/arch/persistence/a/a/b$a;

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/a/c$a;)Landroid/arch/persistence/a/a/b$a;
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/arch/persistence/a/a/a;

    .line 38
    new-instance v1, Landroid/arch/persistence/a/a/b$a;

    invoke-direct {v1, p1, p2, v0, p3}, Landroid/arch/persistence/a/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/persistence/a/a/a;Landroid/arch/persistence/a/c$a;)V

    return-object v1
.end method


# virtual methods
.method public a()Landroid/arch/persistence/a/b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Landroid/arch/persistence/a/a/b;->a:Landroid/arch/persistence/a/a/b$a;

    invoke-virtual {v0}, Landroid/arch/persistence/a/a/b$a;->a()Landroid/arch/persistence/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Landroid/arch/persistence/a/a/b;->a:Landroid/arch/persistence/a/a/b$a;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/a/a/b$a;->setWriteAheadLoggingEnabled(Z)V

    .line 50
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/arch/persistence/a/a/b;->a:Landroid/arch/persistence/a/a/b$a;

    invoke-virtual {v0}, Landroid/arch/persistence/a/a/b$a;->close()V

    .line 65
    return-void
.end method
