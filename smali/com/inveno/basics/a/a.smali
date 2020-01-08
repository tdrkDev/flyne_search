.class public Lcom/inveno/basics/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 13
    sget v1, Lcom/inveno/basics/R$dimen;->info_text_title_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/inveno/basics/a/a;->a:I

    .line 14
    return-void
.end method
