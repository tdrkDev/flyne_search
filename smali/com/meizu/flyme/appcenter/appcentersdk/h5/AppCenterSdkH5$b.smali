.class Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/appcenter/appcentersdk/AppCenterSdk$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 705
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;-><init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 706
    return-void
.end method

.method public constructor <init>(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 708
    iput-object p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->f:Z

    .line 709
    iput-object p2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->b:Ljava/lang/String;

    .line 710
    iput-object p3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->c:Ljava/lang/String;

    .line 711
    iput-object p4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->d:Ljava/lang/String;

    .line 712
    iput-boolean p5, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->f:Z

    .line 713
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 716
    invoke-static {p1}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/e;

    move-result-object v1

    .line 717
    const-string v2, "source_apkname"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/e;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const-string v2, "source_apkname"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 719
    const-string v3, "source_info"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/e;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v3}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->d(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 722
    :cond_0
    return v0
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x3

    .line 727
    iget-boolean v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    const-string v0, "AppCenterSdkH5"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "AppCenterSdkH5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it is false when judge and dont stats | data is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget v0, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->e:I

    if-eq v0, p1, :cond_0

    .line 737
    iput p1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->e:I

    .line 738
    const-string v0, "AppCenterSdkH5"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    const-string v0, "AppCenterSdkH5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatsDownloadCallback: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_2
    const/4 v0, 0x0

    .line 742
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 744
    :sswitch_0
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    :goto_1
    if-eqz v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->c(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    .line 770
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->e(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->a(Landroid/content/Context;)Lcom/meizu/flyme/appcenter/appcentersdk/b/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->a()Lcom/meizu/flyme/appcenter/appcentersdk/b/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/meizu/flyme/appcenter/appcentersdk/b/b;->onEvent(Lcom/meizu/flyme/appcenter/appcentersdk/b/a;)V

    goto :goto_0

    .line 747
    :sswitch_1
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->b(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 750
    :sswitch_2
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 751
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->c:Ljava/lang/String;

    .line 752
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->b:Ljava/lang/String;

    .line 753
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    const-string v2, "install"

    .line 754
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    const-string v2, "1"

    .line 755
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->f(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    goto :goto_1

    .line 758
    :sswitch_3
    invoke-static {}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a;->b()Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v0

    .line 759
    iget-object v1, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->a:Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;->a(Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->b(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->c:Ljava/lang/String;

    .line 760
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->d(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/flyme/appcenter/appcentersdk/h5/AppCenterSdkH5$b;->b:Ljava/lang/String;

    .line 761
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->e(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    const-string v2, "install"

    .line 762
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->g(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    move-result-object v1

    const-string v2, "2"

    .line 763
    invoke-virtual {v1, v2}, Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;->f(Ljava/lang/String;)Lcom/meizu/flyme/appcenter/appcentersdk/b/a$a;

    goto :goto_1

    .line 742
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_1
    .end sparse-switch
.end method
