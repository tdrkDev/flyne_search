.class Landroid/arch/persistence/a/a/b$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/arch/persistence/a/a/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Landroid/arch/persistence/a/a/a;Landroid/arch/persistence/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/arch/persistence/a/a/a;

.field final synthetic b:Landroid/arch/persistence/a/c$a;


# direct methods
.method constructor <init>([Landroid/arch/persistence/a/a/a;Landroid/arch/persistence/a/c$a;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Landroid/arch/persistence/a/a/b$a$1;->a:[Landroid/arch/persistence/a/a/a;

    iput-object p2, p0, Landroid/arch/persistence/a/a/b$a$1;->b:Landroid/arch/persistence/a/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/arch/persistence/a/a/b$a$1;->a:[Landroid/arch/persistence/a/a/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 85
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Landroid/arch/persistence/a/a/b$a$1;->b:Landroid/arch/persistence/a/c$a;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/a/c$a;->d(Landroid/arch/persistence/a/b;)V

    .line 88
    :cond_0
    return-void
.end method
