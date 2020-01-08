.class public final Lcom/loc/am;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/am$a;
    }
.end annotation


# instance fields
.field private a:Lcom/loc/an;

.field private b:Lcom/loc/ap;


# direct methods
.method public constructor <init>(Lcom/loc/ap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/loc/am;-><init>(Lcom/loc/ap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/loc/ap;B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/am;->b:Lcom/loc/ap;

    iget-object v0, p1, Lcom/loc/ap;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/loc/an;

    iget-object v2, p0, Lcom/loc/am;->b:Lcom/loc/ap;

    iget v2, v2, Lcom/loc/ap;->c:I

    iget-object v3, p0, Lcom/loc/am;->b:Lcom/loc/ap;

    iget v3, v3, Lcom/loc/ap;->d:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/an;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/am;->a:Lcom/loc/an;

    iget-object v0, p0, Lcom/loc/am;->a:Lcom/loc/an;

    invoke-virtual {v0}, Lcom/loc/an;->b()V

    iget-object v0, p0, Lcom/loc/am;->a:Lcom/loc/an;

    invoke-virtual {v0}, Lcom/loc/an;->a()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/loc/ap;->e:Ljava/net/Proxy;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/loc/am$a;)V
    .locals 4

    iget-object v0, p0, Lcom/loc/am;->a:Lcom/loc/an;

    iget-object v1, p0, Lcom/loc/am;->b:Lcom/loc/ap;

    invoke-virtual {v1}, Lcom/loc/ap;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/am;->b:Lcom/loc/ap;

    invoke-virtual {v2}, Lcom/loc/ap;->b()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/am;->b:Lcom/loc/ap;

    invoke-virtual {v3}, Lcom/loc/ap;->a()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/an;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/am$a;)V

    return-void
.end method
