.class public Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->a:Ljava/lang/String;

    .line 154
    iput p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->b:I

    .line 155
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$b;->c:Ljava/lang/String;

    .line 167
    return-object p0
.end method
