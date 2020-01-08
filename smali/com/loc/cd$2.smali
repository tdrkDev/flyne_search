.class final Lcom/loc/cd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/cd;


# direct methods
.method constructor <init>(Lcom/loc/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cd$2;->a:Lcom/loc/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/loc/cd$2;->a:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->b(Lcom/loc/cd;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
