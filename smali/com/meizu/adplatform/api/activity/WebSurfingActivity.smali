.class public Lcom/meizu/adplatform/api/activity/WebSurfingActivity;
.super Lflyme/support/v7/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/advertise/api/h;
.implements Lcom/meizu/advertise/api/j;
.implements Lcom/meizu/advertise/api/p;


# instance fields
.field private a:Lcom/meizu/advertise/api/o;

.field private b:Lcom/meizu/advertise/api/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    .line 80
    invoke-virtual {v0, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setIconAttribute(I)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p2, p4}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p3, p4}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->b:Lcom/meizu/advertise/api/k;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->b:Lcom/meizu/advertise/api/k;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/k;->a()V

    .line 178
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lflyme/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 99
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->b:Lcom/meizu/advertise/api/k;

    if-nez v0, :cond_0

    .line 168
    invoke-static {p0}, Lcom/meizu/advertise/api/k;->a(Landroid/content/Context;)Lcom/meizu/advertise/api/k;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->b:Lcom/meizu/advertise/api/k;

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->b:Lcom/meizu/advertise/api/k;

    invoke-virtual {v0, p1}, Lcom/meizu/advertise/api/k;->b(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->d()V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 41
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 44
    const/high16 v1, 0xc000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2700

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 54
    :cond_0
    sget v0, Lcom/meizu/advertise/R$layout;->mz_ad_webview_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    const-string v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/advertise/api/AdManager;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebSurfingActivity init: appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/advertise/b/a;->a(Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    const-string v1, ""

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 69
    :cond_1
    sget v0, Lcom/meizu/advertise/R$id;->webView:I

    invoke-virtual {p0, v0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 70
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->isLocationEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    invoke-static {}, Lcom/meizu/advertise/api/AdManager;->isLocationEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 73
    :cond_2
    new-instance v1, Lcom/meizu/advertise/api/o;

    invoke-direct {v1, p0, v0, p0, p0}, Lcom/meizu/advertise/api/o;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/meizu/advertise/api/h;Lcom/meizu/advertise/api/p;)V

    iput-object v1, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    .line 74
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0, p1}, Lcom/meizu/advertise/api/o;->a(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/meizu/advertise/R$menu;->mz_ad_web_menus:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->j()V

    .line 163
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 104
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 105
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 113
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 106
    :cond_1
    sget v1, Lcom/meizu/advertise/R$id;->menuRefresh:I

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->a()V

    goto :goto_0

    .line 108
    :cond_2
    sget v1, Lcom/meizu/advertise/R$id;->menuCopyUrl:I

    if-ne v0, v1, :cond_3

    .line 109
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->b()V

    goto :goto_0

    .line 110
    :cond_3
    sget v1, Lcom/meizu/advertise/R$id;->menuOpenWithBrowser:I

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->c()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onPause()V

    .line 149
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->h()V

    .line 150
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/advertise/api/AdManager;->setOfflineNoticeFactory(Lcom/meizu/advertise/api/j;)V

    .line 151
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onRestart()V

    .line 143
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->g()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->e()V

    .line 131
    invoke-static {p0}, Lcom/meizu/advertise/api/AdManager;->setOfflineNoticeFactory(Lcom/meizu/advertise/api/j;)V

    .line 132
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0, p1}, Lcom/meizu/advertise/api/o;->b(Landroid/os/Bundle;)V

    .line 125
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStart()V

    .line 137
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->f()V

    .line 138
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onStop()V

    .line 156
    iget-object v0, p0, Lcom/meizu/adplatform/api/activity/WebSurfingActivity;->a:Lcom/meizu/advertise/api/o;

    invoke-virtual {v0}, Lcom/meizu/advertise/api/o;->i()V

    .line 157
    return-void
.end method
