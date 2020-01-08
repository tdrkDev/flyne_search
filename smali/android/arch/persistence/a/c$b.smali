.class public Landroid/arch/persistence/a/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/a/c$b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/arch/persistence/a/c$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/a/c$a;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/arch/persistence/a/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Landroid/arch/persistence/a/c$b;->a:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Landroid/arch/persistence/a/c$b;->b:Ljava/lang/String;

    .line 321
    iput-object p3, p0, Landroid/arch/persistence/a/c$b;->c:Landroid/arch/persistence/a/c$a;

    .line 322
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/arch/persistence/a/c$b$a;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Landroid/arch/persistence/a/c$b$a;

    invoke-direct {v0, p0}, Landroid/arch/persistence/a/c$b$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
