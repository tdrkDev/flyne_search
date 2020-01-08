.class final Lcom/loc/bs$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/loc/bv;

.field final synthetic b:Lcom/loc/bs;


# direct methods
.method constructor <init>(Lcom/loc/bs;Lcom/loc/bv;)V
    .locals 1

    iput-object p1, p0, Lcom/loc/bs$a;->b:Lcom/loc/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bs$a;->a:Lcom/loc/bv;

    iput-object p2, p0, Lcom/loc/bs$a;->a:Lcom/loc/bv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/loc/bs$a;->b:Lcom/loc/bs;

    iget v1, v0, Lcom/loc/bs;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/bs;->b:I

    iget-object v0, p0, Lcom/loc/bs$a;->b:Lcom/loc/bs;

    iget-object v1, p0, Lcom/loc/bs$a;->a:Lcom/loc/bv;

    invoke-virtual {v0, v1}, Lcom/loc/bs;->b(Lcom/loc/bv;)V

    iget-object v0, p0, Lcom/loc/bs$a;->b:Lcom/loc/bs;

    iget v1, v0, Lcom/loc/bs;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/loc/bs;->b:I

    return-void
.end method
