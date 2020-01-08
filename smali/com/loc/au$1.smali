.class final Lcom/loc/au$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/au;->a(Lcom/loc/at;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/loc/at;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/loc/at;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/au$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/au$1;->b:Lcom/loc/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/loc/au$1;->a:Landroid/content/Context;

    sget-object v1, Lcom/loc/dd;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/au$1;->b:Lcom/loc/at;

    invoke-virtual {v2}, Lcom/loc/at;->a()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/av;->a(Landroid/content/Context;Ljava/lang/String;[B)V

    return-void
.end method
