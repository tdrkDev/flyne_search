.class Lcom/inveno/reportsdk/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/inveno/reportsdk/ad;


# direct methods
.method constructor <init>(Lcom/inveno/reportsdk/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/reportsdk/ae;->a:Lcom/inveno/reportsdk/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/inveno/reportsdk/y;->a()Lcom/inveno/reportsdk/y;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/inveno/reportsdk/y;->a(I)V

    iget-object v0, p0, Lcom/inveno/reportsdk/ae;->a:Lcom/inveno/reportsdk/ad;

    invoke-virtual {v0}, Lcom/inveno/reportsdk/ad;->b()V

    return-void
.end method
