.class public Lcom/meizu/gslb2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/meizu/gslb2/DomainIpInfo;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcom/meizu/gslb2/DomainIpInfo;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/meizu/gslb2/o;-><init>(Lcom/meizu/gslb2/DomainIpInfo;Ljava/lang/String;III)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/meizu/gslb2/DomainIpInfo;Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gslb2/o;->c:Z

    .line 28
    iput-object p1, p0, Lcom/meizu/gslb2/o;->a:Lcom/meizu/gslb2/DomainIpInfo;

    .line 29
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/meizu/gslb2/o;->b:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/meizu/gslb2/o;->d:I

    .line 31
    iput p5, p0, Lcom/meizu/gslb2/o;->f:I

    .line 32
    iput p4, p0, Lcom/meizu/gslb2/o;->e:I

    .line 33
    invoke-virtual {p0}, Lcom/meizu/gslb2/o;->c()V

    .line 34
    return-void

    .line 29
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/gslb2/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    iget-object v2, p0, Lcom/meizu/gslb2/o;->a:Lcom/meizu/gslb2/DomainIpInfo;

    .line 55
    invoke-virtual {v2}, Lcom/meizu/gslb2/DomainIpInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/meizu/gslb2/p;->a(Ljava/lang/String;I)Lcom/meizu/gslb2/p$a;

    move-result-object v2

    .line 56
    sget-object v3, Lcom/meizu/gslb2/o$1;->a:[I

    invoke-virtual {v2}, Lcom/meizu/gslb2/p$a;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 76
    :goto_0
    sget-object v3, Lcom/meizu/gslb2/p$a;->SUCCESS:Lcom/meizu/gslb2/p$a;

    if-ne v2, v3, :cond_0

    .line 86
    :goto_1
    return v0

    .line 58
    :pswitch_0
    iput v1, p0, Lcom/meizu/gslb2/o;->d:I

    .line 59
    iput v1, p0, Lcom/meizu/gslb2/o;->e:I

    .line 60
    iput v1, p0, Lcom/meizu/gslb2/o;->f:I

    .line 61
    iput-boolean v0, p0, Lcom/meizu/gslb2/o;->c:Z

    goto :goto_0

    .line 64
    :pswitch_1
    iget v3, p0, Lcom/meizu/gslb2/o;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/gslb2/o;->f:I

    .line 65
    invoke-virtual {p0}, Lcom/meizu/gslb2/o;->c()V

    goto :goto_0

    .line 68
    :pswitch_2
    iget v3, p0, Lcom/meizu/gslb2/o;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/gslb2/o;->d:I

    .line 69
    invoke-virtual {p0}, Lcom/meizu/gslb2/o;->c()V

    goto :goto_0

    .line 72
    :pswitch_3
    iget v3, p0, Lcom/meizu/gslb2/o;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/meizu/gslb2/o;->e:I

    .line 73
    invoke-virtual {p0}, Lcom/meizu/gslb2/o;->c()V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/meizu/gslb2/o;->a:Lcom/meizu/gslb2/DomainIpInfo;

    iget-object v2, v0, Lcom/meizu/gslb2/DomainIpInfo;->mIpInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/meizu/gslb2/o;->a:Lcom/meizu/gslb2/DomainIpInfo;

    iget-object v0, v0, Lcom/meizu/gslb2/DomainIpInfo;->mIpInfos:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0}, Lcom/meizu/gslb2/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/meizu/gslb2/o;->a:Lcom/meizu/gslb2/DomainIpInfo;

    iget-object v0, v0, Lcom/meizu/gslb2/DomainIpInfo;->mIpInfos:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 84
    :cond_1
    monitor-exit v2

    move v0, v1

    .line 86
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method b()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/meizu/gslb2/o;->c:Z

    return v0
.end method

.method c()V
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/meizu/gslb2/o;->d:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/gslb2/o;->e:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/meizu/gslb2/o;->f:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gslb2/o;->c:Z

    .line 50
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gslb2/o;->c:Z

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpInfo{mIp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gslb2/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/meizu/gslb2/o;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/gslb2/o;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWeakErrorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/gslb2/o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWeakSuccessCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/gslb2/o;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
