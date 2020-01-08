.class public abstract Landroid/arch/persistence/room/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final version:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Landroid/arch/persistence/room/h$a;->version:I

    .line 170
    return-void
.end method


# virtual methods
.method protected abstract createAllTables(Landroid/arch/persistence/a/b;)V
.end method

.method protected abstract dropAllTables(Landroid/arch/persistence/a/b;)V
.end method

.method protected abstract onCreate(Landroid/arch/persistence/a/b;)V
.end method

.method protected abstract onOpen(Landroid/arch/persistence/a/b;)V
.end method

.method protected abstract validateMigration(Landroid/arch/persistence/a/b;)V
.end method
