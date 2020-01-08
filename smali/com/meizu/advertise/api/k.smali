.class public Lcom/meizu/advertise/api/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/advertise/api/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lflyme/support/v7/app/AlertDialog;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/meizu/advertise/api/k;->a:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/meizu/advertise/api/k;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/advertise/api/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/meizu/advertise/api/k;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/meizu/advertise/api/k;

    invoke-direct {v0, p0}, Lcom/meizu/advertise/api/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/advertise/api/k;->b:Lflyme/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/advertise/api/k;->b:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/meizu/advertise/api/k;->b:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->dismiss()V

    .line 63
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->isNightMode()Z

    move-result v0

    .line 34
    iget-boolean v1, p0, Lcom/meizu/advertise/api/k;->c:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/meizu/advertise/api/k;->b:Lflyme/support/v7/app/AlertDialog;

    if-nez v1, :cond_1

    .line 35
    :cond_0
    iput-boolean v0, p0, Lcom/meizu/advertise/api/k;->c:Z

    .line 37
    if-eqz v0, :cond_3

    .line 38
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/advertise/api/k;->a:Landroid/content/Context;

    sget v2, Lcom/meizu/advertise/R$style;->MzAdOfflineDialogNightTheme:I

    invoke-direct {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 42
    :goto_0
    const v1, 0x1010355

    .line 43
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setIconAttribute(I)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6e\u7f51\u7edc"

    new-instance v2, Lcom/meizu/advertise/api/k$1;

    invoke-direct {v2, p0}, Lcom/meizu/advertise/api/k$1;-><init>(Lcom/meizu/advertise/api/k;)V

    .line 45
    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v1, v2}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/advertise/api/k;->b:Lflyme/support/v7/app/AlertDialog;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/meizu/advertise/api/k;->b:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/meizu/advertise/api/k;->b:Lflyme/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog;->show()V

    .line 56
    :cond_2
    return-void

    .line 40
    :cond_3
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/meizu/advertise/api/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
