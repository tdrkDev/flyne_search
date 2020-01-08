.class Lcom/meizu/advertise/widget/ProgressWebView$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/advertise/widget/ProgressWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/advertise/widget/ProgressWebView;


# direct methods
.method private constructor <init>(Lcom/meizu/advertise/widget/ProgressWebView;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/advertise/widget/ProgressWebView$a;->a:Lcom/meizu/advertise/widget/ProgressWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/advertise/widget/ProgressWebView;Lcom/meizu/advertise/widget/ProgressWebView$1;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/advertise/widget/ProgressWebView$a;-><init>(Lcom/meizu/advertise/widget/ProgressWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    return v0
.end method
