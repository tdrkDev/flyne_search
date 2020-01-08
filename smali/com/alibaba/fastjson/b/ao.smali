.class public final Lcom/alibaba/fastjson/b/ao;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:[C

.field protected b:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/ao;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 51
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    .line 53
    sget-object v0, Lcom/alibaba/fastjson/b/ao;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    .line 57
    sget-object v0, Lcom/alibaba/fastjson/b/ao;->c:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    if-nez v0, :cond_1

    .line 61
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    .line 63
    :cond_1
    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/b/ap;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 69
    sget-object v0, Lcom/alibaba/fastjson/b/ao;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    .line 73
    sget-object v0, Lcom/alibaba/fastjson/b/ao;->c:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    if-nez v0, :cond_1

    .line 77
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    .line 81
    :cond_1
    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 82
    invoke-virtual {v3}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v3

    or-int/2addr v1, v3

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    .line 85
    return-void
.end method

.method private a(CLjava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 798
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 801
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 803
    if-nez p3, :cond_1

    .line 804
    const/4 v1, 0x4

    .line 805
    add-int/lit8 v3, v2, 0x8

    add-int/2addr v0, v3

    .line 811
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v3, v3

    if-le v0, v3, :cond_0

    .line 812
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 815
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v4, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    aput-char p1, v3, v4

    .line 817
    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v3, v3, 0x2

    .line 818
    add-int v4, v3, v2

    .line 820
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v6, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x22

    aput-char v7, v5, v6

    .line 821
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p2, v5, v2, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 823
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 825
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v3, 0x22

    aput-char v3, v2, v4

    .line 827
    add-int/lit8 v2, v4, 0x1

    .line 828
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x3a

    aput-char v5, v3, v2

    .line 830
    if-nez p3, :cond_2

    .line 831
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v1, v4, 0x1

    const/16 v2, 0x6e

    aput-char v2, v0, v4

    .line 832
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x75

    aput-char v3, v0, v1

    .line 833
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    .line 834
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    .line 898
    :goto_1
    return-void

    .line 807
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 808
    add-int v3, v2, v1

    add-int/lit8 v3, v3, 0x6

    add-int/2addr v0, v3

    goto :goto_0

    .line 838
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v6, v4, 0x1

    const/16 v3, 0x22

    aput-char v3, v2, v4

    .line 841
    add-int v7, v6, v1

    .line 843
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p3, v2, v1, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 845
    if-eqz p4, :cond_7

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 846
    const/4 v5, 0x0

    .line 847
    const/4 v3, -0x1

    .line 848
    const/4 v1, 0x0

    move v4, v6

    .line 850
    :goto_2
    if-ge v4, v7, :cond_4

    .line 851
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v2, v2, v4

    .line 853
    const/16 v8, 0x5d

    if-lt v2, v8, :cond_3

    move v2, v3

    move v3, v5

    .line 850
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    goto :goto_2

    .line 857
    :cond_3
    iget v8, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    invoke-static {v2, v8}, Lcom/alibaba/fastjson/b/ao;->a(CI)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 858
    add-int/lit8 v1, v5, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    .line 860
    goto :goto_3

    .line 864
    :cond_4
    if-lez v5, :cond_6

    .line 865
    add-int/2addr v0, v5

    .line 866
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v0, v2, :cond_5

    .line 867
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 869
    :cond_5
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 872
    :cond_6
    const/4 v0, 0x1

    if-ne v5, v0, :cond_8

    .line 873
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v5, v3, 0x2

    sub-int v6, v7, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 874
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v3

    .line 875
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v3, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    .line 897
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_1

    .line 876
    :cond_8
    const/4 v0, 0x1

    if-le v5, v0, :cond_7

    .line 877
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v5, v3, 0x2

    sub-int v8, v7, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v2, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 878
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v3

    .line 879
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v3, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    .line 880
    add-int/lit8 v1, v7, 0x1

    .line 881
    add-int/lit8 v0, v2, -0x2

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_4
    if-lt v1, v6, :cond_7

    .line 882
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v2, v2, v1

    .line 884
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_a

    const/16 v3, 0x22

    if-eq v2, v3, :cond_a

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_b

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 888
    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 890
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 891
    add-int/lit8 v0, v0, 0x1

    .line 881
    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_c
    move v2, v3

    move v3, v5

    goto/16 :goto_3
.end method

.method private a(Ljava/lang/String;C)V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/String;CZ)V

    .line 496
    return-void
.end method

.method private a(Ljava/lang/String;CZ)V
    .locals 10

    .prologue
    .line 503
    if-nez p1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 680
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 509
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 510
    if-eqz p2, :cond_1

    .line 511
    add-int/lit8 v0, v0, 0x1

    .line 514
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v0, v2, :cond_2

    .line 515
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 518
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v6, v2, 0x1

    .line 519
    add-int v7, v6, v1

    .line 521
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    const/16 v4, 0x22

    aput-char v4, v2, v3

    .line 522
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p1, v2, v1, v3, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 524
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 526
    sget-object v1, Lcom/alibaba/fastjson/b/ap;->BrowserCompatible:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 527
    const/4 v1, -0x1

    move v2, v0

    move v0, v1

    move v1, v6

    .line 529
    :goto_1
    if-ge v1, v7, :cond_9

    .line 530
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v3, v3, v1

    .line 532
    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_5

    .line 534
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 529
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 538
    :cond_5
    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    const/16 v4, 0xc

    if-eq v3, v4, :cond_6

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    const/16 v4, 0x9

    if-ne v3, v4, :cond_7

    .line 540
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    .line 541
    goto :goto_2

    .line 544
    :cond_7
    const/16 v4, 0x20

    if-ge v3, v4, :cond_8

    .line 546
    add-int/lit8 v0, v2, 0x5

    move v2, v0

    move v0, v1

    .line 547
    goto :goto_2

    .line 550
    :cond_8
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_4

    .line 552
    add-int/lit8 v0, v2, 0x5

    move v2, v0

    move v0, v1

    .line 553
    goto :goto_2

    .line 557
    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v2, v1, :cond_a

    .line 558
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 560
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    move v1, v0

    move v0, v7

    .line 562
    :goto_3
    if-lt v1, v6, :cond_11

    .line 563
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v2, v2, v1

    .line 565
    const/16 v3, 0x8

    if-eq v2, v3, :cond_b

    const/16 v3, 0xc

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-eq v2, v3, :cond_b

    const/16 v3, 0xd

    if-eq v2, v3, :cond_b

    const/16 v3, 0x9

    if-ne v2, v3, :cond_d

    .line 566
    :cond_b
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 568
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 569
    add-int/lit8 v0, v0, 0x1

    .line 562
    :cond_c
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 573
    :cond_d
    const/16 v3, 0x22

    if-eq v2, v3, :cond_e

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_e

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_f

    .line 574
    :cond_e
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 576
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    aput-char v2, v3, v4

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 578
    goto :goto_4

    .line 581
    :cond_f
    const/16 v3, 0x20

    if-ge v2, v3, :cond_10

    .line 582
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v1, 0x6

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 584
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    .line 585
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x2

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 586
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x3

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 587
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/a/b;->g:[C

    mul-int/lit8 v7, v2, 0x2

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    .line 588
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/a/b;->g:[C

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 589
    add-int/lit8 v0, v0, 0x5

    .line 590
    goto :goto_4

    .line 593
    :cond_10
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_c

    .line 594
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v1, 0x6

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 595
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 596
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    const/16 v5, 0x75

    aput-char v5, v3, v4

    .line 597
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x2

    sget-object v5, Lcom/alibaba/fastjson/a/b;->a:[C

    ushr-int/lit8 v7, v2, 0xc

    and-int/lit8 v7, v7, 0xf

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    .line 598
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x3

    sget-object v5, Lcom/alibaba/fastjson/a/b;->a:[C

    ushr-int/lit8 v7, v2, 0x8

    and-int/lit8 v7, v7, 0xf

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    .line 599
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x4

    sget-object v5, Lcom/alibaba/fastjson/a/b;->a:[C

    ushr-int/lit8 v7, v2, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v5, v5, v7

    aput-char v5, v3, v4

    .line 600
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x5

    sget-object v5, Lcom/alibaba/fastjson/a/b;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 601
    add-int/lit8 v0, v0, 0x5

    goto/16 :goto_4

    .line 605
    :cond_11
    if-eqz p2, :cond_12

    .line 606
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 607
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    .line 609
    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    .line 615
    :cond_13
    const/4 v5, 0x0

    .line 616
    const/4 v3, -0x1

    .line 617
    const/4 v1, 0x0

    .line 618
    if-eqz p3, :cond_1a

    move v4, v6

    .line 619
    :goto_5
    if-ge v4, v7, :cond_1a

    .line 620
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v2, v2, v4

    .line 621
    const/16 v8, 0x5d

    if-lt v2, v8, :cond_14

    move v2, v3

    move v3, v5

    .line 619
    :goto_6
    add-int/lit8 v4, v4, 0x1

    move v5, v3

    move v3, v2

    goto :goto_5

    .line 625
    :cond_14
    const/16 v8, 0x20

    if-ne v2, v8, :cond_15

    move v2, v3

    move v3, v5

    .line 626
    goto :goto_6

    .line 629
    :cond_15
    const/16 v8, 0x30

    if-lt v2, v8, :cond_16

    const/16 v8, 0x5c

    if-eq v2, v8, :cond_16

    move v2, v3

    move v3, v5

    .line 630
    goto :goto_6

    .line 633
    :cond_16
    sget-object v8, Lcom/alibaba/fastjson/a/b;->d:[Z

    array-length v8, v8

    if-ge v2, v8, :cond_17

    sget-object v8, Lcom/alibaba/fastjson/a/b;->d:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_19

    :cond_17
    const/16 v8, 0x9

    if-ne v2, v8, :cond_18

    sget-object v8, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v8

    if-nez v8, :cond_19

    :cond_18
    const/16 v8, 0x2f

    if-ne v2, v8, :cond_23

    sget-object v8, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 637
    :cond_19
    add-int/lit8 v1, v5, 0x1

    move v3, v1

    move v1, v2

    move v2, v4

    .line 639
    goto :goto_6

    .line 644
    :cond_1a
    add-int/2addr v0, v5

    .line 645
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v0, v2, :cond_1b

    .line 646
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 648
    :cond_1b
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 650
    const/4 v0, 0x1

    if-ne v5, v0, :cond_1d

    .line 651
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v5, v3, 0x2

    sub-int v6, v7, v3

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v3

    .line 653
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v3, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    .line 674
    :cond_1c
    if-eqz p2, :cond_22

    .line 675
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x22

    aput-char v2, v0, v1

    .line 676
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    aput-char p2, v0, v1

    goto/16 :goto_0

    .line 654
    :cond_1d
    const/4 v0, 0x1

    if-le v5, v0, :cond_1c

    .line 655
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v5, v3, 0x2

    sub-int v8, v7, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v0, v2, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v2, 0x5c

    aput-char v2, v0, v3

    .line 657
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    sget-object v3, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    .line 658
    add-int/lit8 v1, v7, 0x1

    .line 659
    add-int/lit8 v0, v2, -0x2

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_7
    if-lt v1, v6, :cond_1c

    .line 660
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v2, v2, v1

    .line 662
    sget-object v3, Lcom/alibaba/fastjson/a/b;->d:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    sget-object v3, Lcom/alibaba/fastjson/a/b;->d:[Z

    aget-boolean v3, v3, v2

    if-nez v3, :cond_20

    :cond_1e
    const/16 v3, 0x9

    if-ne v2, v3, :cond_1f

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_1f
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_21

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 666
    :cond_20
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v4, 0x5c

    aput-char v4, v3, v1

    .line 668
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v2, v5, v2

    aput-char v2, v3, v4

    .line 669
    add-int/lit8 v0, v0, 0x1

    .line 659
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 678
    :cond_22
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x22

    aput-char v2, v0, v1

    goto/16 :goto_0

    :cond_23
    move v2, v3

    move v3, v5

    goto/16 :goto_6
.end method

.method static final a(CI)Z
    .locals 3

    .prologue
    const/16 v2, 0x5c

    const/4 v0, 0x0

    .line 905
    const/16 v1, 0x20

    if-ne p0, v1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return v0

    .line 909
    :cond_1
    const/16 v1, 0x23

    if-le p0, v1, :cond_2

    if-ne p0, v2, :cond_0

    .line 913
    :cond_2
    const/16 v1, 0x8

    if-eq p0, v1, :cond_4

    const/16 v1, 0xa

    if-eq p0, v1, :cond_4

    const/16 v1, 0xd

    if-eq p0, v1, :cond_4

    const/16 v1, 0xc

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_4

    const/16 v1, 0x22

    if-eq p0, v1, :cond_4

    const/16 v1, 0x9

    if-ne p0, v1, :cond_3

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/b/ap;->a(ILcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const/16 v1, 0x2f

    if-ne p0, v1, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-static {p1, v1}, Lcom/alibaba/fastjson/b/ap;->a(ILcom/alibaba/fastjson/b/ap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 14

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/16 v10, 0x27

    const/4 v0, 0x0

    const/16 v9, 0x5c

    .line 932
    if-nez p1, :cond_1

    .line 933
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, 0x4

    .line 934
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 935
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 937
    :cond_0
    const-string v2, "null"

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v5, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    invoke-virtual {v2, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 938
    iput v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1001
    :goto_0
    return-void

    .line 942
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 943
    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v2, v1

    add-int/lit8 v6, v2, 0x2

    .line 944
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v6, v2, :cond_2

    .line 945
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 948
    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v5, v2, 0x1

    .line 949
    add-int v7, v5, v1

    .line 951
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    aput-char v10, v2, v3

    .line 952
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p1, v0, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 953
    iput v6, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 956
    const/4 v2, -0x1

    move v3, v5

    move v4, v0

    .line 958
    :goto_1
    if-ge v3, v7, :cond_5

    .line 959
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v1, v1, v3

    .line 960
    if-eq v1, v12, :cond_4

    const/16 v8, 0xa

    if-eq v1, v8, :cond_4

    const/16 v8, 0xd

    if-eq v1, v8, :cond_4

    const/16 v8, 0xc

    if-eq v1, v8, :cond_4

    if-eq v1, v9, :cond_4

    if-eq v1, v10, :cond_4

    const/16 v8, 0x9

    if-ne v1, v8, :cond_3

    sget-object v8, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    const/16 v8, 0x2f

    if-ne v1, v8, :cond_c

    sget-object v8, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 964
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v2, v0

    move v0, v1

    move v1, v3

    .line 958
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move v2, v1

    goto :goto_1

    .line 970
    :cond_5
    add-int v1, v6, v4

    .line 971
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v3, v3

    if-le v1, v3, :cond_6

    .line 972
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 974
    :cond_6
    iput v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 976
    if-ne v4, v11, :cond_8

    .line 977
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v5, v2, 0x2

    sub-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 978
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aput-char v9, v1, v2

    .line 979
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    .line 1000
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    aput-char v10, v0, v1

    goto/16 :goto_0

    .line 980
    :cond_8
    if-le v4, v11, :cond_7

    .line 981
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v6, v2, 0x2

    sub-int v8, v7, v2

    add-int/lit8 v8, v8, -0x1

    invoke-static {v1, v3, v4, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aput-char v9, v1, v2

    .line 983
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v0, v3, v0

    aput-char v0, v1, v2

    .line 984
    add-int/lit8 v1, v7, 0x1

    .line 985
    add-int/lit8 v0, v2, -0x2

    move v13, v0

    move v0, v1

    move v1, v13

    :goto_3
    if-lt v1, v5, :cond_7

    .line 986
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v2, v2, v1

    .line 988
    if-eq v2, v12, :cond_a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    const/16 v3, 0xd

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-eq v2, v3, :cond_a

    if-eq v2, v9, :cond_a

    if-eq v2, v10, :cond_a

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_b

    sget-object v3, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 992
    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v1, 0x2

    sub-int v8, v0, v1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 993
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aput-char v9, v3, v1

    .line 994
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v1, 0x1

    sget-object v6, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v2, v6, v2

    aput-char v2, v3, v4

    .line 995
    add-int/lit8 v0, v0, 0x1

    .line 985
    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_c
    move v1, v2

    move v2, v4

    goto/16 :goto_2
.end method

.method private e(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/16 v10, 0x27

    .line 1029
    sget-object v3, Lcom/alibaba/fastjson/a/b;->e:[Z

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 1032
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, v4

    add-int/lit8 v2, v0, 0x3

    .line 1033
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v0, v0

    if-le v2, v0, :cond_0

    .line 1034
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1037
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1038
    add-int v1, v0, v4

    .line 1040
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v6, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    aput-char v10, v5, v6

    .line 1041
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p1, v5, v4, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 1042
    iput v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1044
    :goto_0
    if-ge v0, v1, :cond_6

    .line 1045
    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v4, v4, v0

    .line 1046
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-boolean v5, v3, v4

    if-nez v5, :cond_3

    :cond_1
    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    sget-object v5, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_5

    sget-object v5, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1050
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1051
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v5, v5

    if-le v2, v5, :cond_4

    .line 1052
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1054
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1056
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v8, v0, 0x2

    sub-int v9, v1, v0

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1057
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v0

    .line 1058
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v4, v6, v4

    aput-char v4, v5, v0

    .line 1059
    add-int/lit8 v1, v1, 0x1

    .line 1044
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x2

    aput-char v10, v0, v1

    .line 1064
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    .line 1065
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1068
    sget-object v5, Lcom/alibaba/fastjson/a/b;->d:[Z

    .line 1070
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1071
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 1072
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_0

    .line 1073
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1076
    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1077
    add-int v2, v4, v0

    .line 1079
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p1, v1, v0, v6, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1080
    iput v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1082
    const/4 v1, 0x0

    move v0, v4

    .line 1084
    :goto_0
    if-ge v0, v2, :cond_5

    .line 1085
    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v6, v6, v0

    .line 1086
    array-length v7, v5

    if-ge v6, v7, :cond_2

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_2

    .line 1087
    if-nez v1, :cond_3

    .line 1088
    add-int/lit8 v3, v3, 0x3

    .line 1089
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_1

    .line 1090
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1092
    :cond_1
    iput v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1094
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v9, v0, 0x3

    sub-int v10, v2, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1096
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v7, 0x22

    aput-char v7, v1, v4

    .line 1097
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v0

    .line 1098
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v6, v7, v6

    aput-char v6, v1, v0

    .line 1099
    add-int/lit8 v2, v2, 0x2

    .line 1100
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v6, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x22

    aput-char v7, v1, v6

    .line 1102
    const/4 v1, 0x1

    .line 1084
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1104
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1105
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v7, v7

    if-le v3, v7, :cond_4

    .line 1106
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1108
    :cond_4
    iput v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1110
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v10, v0, 0x2

    sub-int v11, v2, v0

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1111
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v0

    .line 1112
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v0

    .line 1113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1118
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    .line 1119
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1122
    sget-object v5, Lcom/alibaba/fastjson/a/b;->e:[Z

    .line 1124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1125
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 1126
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_0

    .line 1127
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1130
    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1131
    add-int v2, v4, v0

    .line 1133
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p1, v1, v0, v6, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1134
    iput v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1136
    const/4 v1, 0x0

    move v0, v4

    .line 1138
    :goto_0
    if-ge v0, v2, :cond_5

    .line 1139
    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v6, v6, v0

    .line 1140
    array-length v7, v5

    if-ge v6, v7, :cond_2

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_2

    .line 1141
    if-nez v1, :cond_3

    .line 1142
    add-int/lit8 v3, v3, 0x3

    .line 1143
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v3, v1, :cond_1

    .line 1144
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1146
    :cond_1
    iput v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1148
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v7, v0, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v9, v0, 0x3

    sub-int v10, v2, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1149
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/4 v9, 0x1

    invoke-static {v1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1150
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v7, 0x27

    aput-char v7, v1, v4

    .line 1151
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    const/16 v7, 0x5c

    aput-char v7, v1, v0

    .line 1152
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v7, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v6, v7, v6

    aput-char v6, v1, v0

    .line 1153
    add-int/lit8 v2, v2, 0x2

    .line 1154
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v6, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v6, v6, -0x2

    const/16 v7, 0x27

    aput-char v7, v1, v6

    .line 1156
    const/4 v1, 0x1

    .line 1138
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1158
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1159
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v7, v7

    if-le v3, v7, :cond_4

    .line 1160
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 1162
    :cond_4
    iput v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 1164
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v8, v0, 0x1

    iget-object v9, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v10, v0, 0x2

    sub-int v11, v2, v0

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1165
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v8, 0x5c

    aput-char v8, v7, v0

    .line 1166
    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v8, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v6, v8, v6

    aput-char v6, v7, v0

    .line 1167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1172
    :cond_5
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v1, v3, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    .line 1173
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;
    .locals 3

    .prologue
    .line 199
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 200
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;II)V

    .line 201
    return-object p0

    .line 199
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/b/ao;
    .locals 3

    .prologue
    .line 205
    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;II)V

    .line 207
    return-object p0
.end method

.method public a()V
    .locals 5

    .prologue
    const/16 v4, 0x6c

    .line 483
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v0, v0, 0x4

    .line 484
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 485
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    const/16 v3, 0x6e

    aput-char v3, v1, v2

    .line 488
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x75

    aput-char v3, v1, v2

    .line 489
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v2, v2, 0x2

    aput-char v4, v1, v2

    .line 490
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v2, v2, 0x3

    aput-char v4, v1, v2

    .line 491
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 492
    return-void
.end method

.method public a(C)V
    .locals 3

    .prologue
    .line 125
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 126
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    aput-char p1, v1, v2

    .line 130
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 131
    return-void
.end method

.method public a(CLjava/lang/String;J)V
    .locals 7

    .prologue
    .line 729
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 730
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/b/ao;->b(CLjava/lang/String;J)V

    .line 759
    :goto_0
    return-void

    .line 734
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x27

    move v1, v0

    .line 736
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_4

    neg-long v2, p3

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 738
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 739
    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    .line 740
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v3, v3

    if-le v0, v3, :cond_2

    .line 741
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 744
    :cond_2
    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 745
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 747
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aput-char p1, v0, v3

    .line 749
    add-int v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    .line 751
    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v5, v3, 0x1

    aput-char v1, v4, v5

    .line 753
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p2, v4, v2, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 755
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v3, v0, 0x1

    aput-char v1, v2, v3

    .line 756
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    .line 758
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-static {p3, p4, v0, v1}, Lcom/alibaba/fastjson/c/d;->a(JI[C)V

    goto :goto_0

    .line 734
    :cond_3
    const/16 v0, 0x22

    move v1, v0

    goto :goto_1

    .line 736
    :cond_4
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    goto :goto_2
.end method

.method public a(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 768
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 769
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 771
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 772
    if-nez p3, :cond_0

    .line 773
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 795
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->BrowserCompatible:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 780
    const/16 v0, 0x3a

    invoke-direct {p0, p2, v0}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/String;C)V

    .line 781
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/String;C)V

    goto :goto_0

    .line 783
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/b/ao;->a(CLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 787
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 788
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 789
    if-nez p3, :cond_4

    .line 790
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 792
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 159
    if-ge v0, p1, :cond_0

    .line 162
    :goto_0
    new-array v0, p1, [C

    .line 163
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iput-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    .line 165
    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public a(IC)V
    .locals 3

    .prologue
    .line 421
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 422
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 440
    :goto_0
    return-void

    .line 427
    :cond_0
    if-gez p1, :cond_2

    neg-int v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 429
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, v1

    .line 430
    add-int/lit8 v1, v0, 0x1

    .line 432
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 433
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-static {p1, v0, v2}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 437
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aput-char p2, v2, v0

    .line 439
    iput v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    goto :goto_0

    .line 427
    :cond_2
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    goto :goto_1
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 465
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 466
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 470
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 472
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, v1

    .line 473
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 474
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/c/d;->a(JI[C)V

    .line 479
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    goto :goto_0

    .line 470
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    goto :goto_1
.end method

.method public a(JC)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 444
    const-string v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 462
    :goto_0
    return-void

    .line 449
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    neg-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 451
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, v1

    .line 452
    add-int/lit8 v1, v0, 0x1

    .line 454
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 455
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 458
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-static {p1, p2, v0, v2}, Lcom/alibaba/fastjson/c/d;->a(JI[C)V

    .line 459
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aput-char p3, v2, v0

    .line 461
    iput v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    goto :goto_0

    .line 449
    :cond_2
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    goto :goto_1
.end method

.method public a(Lcom/alibaba/fastjson/b/ap;Z)V
    .locals 2

    .prologue
    .line 101
    if-eqz p2, :cond_0

    .line 102
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/ap;->a()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 11

    .prologue
    const/16 v10, 0x22

    .line 687
    sget-object v3, Lcom/alibaba/fastjson/a/b;->d:[Z

    .line 689
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 690
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, v4

    add-int/lit8 v2, v0, 0x3

    .line 691
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v0, v0

    if-le v2, v0, :cond_0

    .line 692
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 695
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 696
    add-int v1, v0, v4

    .line 698
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v6, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    aput-char v10, v5, v6

    .line 699
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-virtual {p1, v5, v4, v6, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 701
    iput v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 703
    if-eqz p2, :cond_6

    .line 704
    :goto_0
    if-ge v0, v1, :cond_6

    .line 705
    iget-object v4, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    aget-char v4, v4, v0

    .line 706
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-boolean v5, v3, v4

    if-nez v5, :cond_3

    :cond_1
    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    sget-object v5, Lcom/alibaba/fastjson/b/ap;->WriteTabAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    const/16 v5, 0x2f

    if-ne v4, v5, :cond_5

    sget-object v5, Lcom/alibaba/fastjson/b/ap;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 710
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 711
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v5, v5

    if-le v2, v5, :cond_4

    .line 712
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 714
    :cond_4
    iput v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 716
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v8, v0, 0x2

    sub-int v9, v1, v0

    add-int/lit8 v9, v9, -0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 717
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/16 v6, 0x5c

    aput-char v6, v5, v0

    .line 718
    iget-object v5, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v0, v0, 0x1

    sget-object v6, Lcom/alibaba/fastjson/a/b;->f:[C

    aget-char v4, v6, v4

    aput-char v4, v5, v0

    .line 719
    add-int/lit8 v1, v1, 0x1

    .line 704
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x2

    aput-char v10, v0, v1

    .line 725
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x3a

    aput-char v2, v0, v1

    .line 726
    return-void
.end method

.method public a([B)V
    .locals 14

    .prologue
    const/16 v1, 0x3d

    const/16 v13, 0x22

    const/4 v12, 0x2

    const/4 v0, 0x0

    .line 374
    array-length v4, p1

    .line 375
    if-nez v4, :cond_0

    .line 376
    const-string v0, "\"\""

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 380
    :cond_0
    sget-object v5, Lcom/alibaba/fastjson/c/a;->a:[C

    .line 382
    div-int/lit8 v2, v4, 0x3

    mul-int/lit8 v6, v2, 0x3

    .line 383
    add-int/lit8 v2, v4, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    .line 385
    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 386
    iget v7, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v2, v7

    add-int/lit8 v7, v2, 0x2

    .line 387
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v7, v2, :cond_1

    .line 388
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 390
    :cond_1
    iput v7, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 391
    iget-object v8, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v3, 0x1

    aput-char v13, v8, v3

    move v3, v0

    .line 394
    :goto_1
    if-ge v3, v6, :cond_2

    .line 396
    add-int/lit8 v8, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v8, v3

    add-int/lit8 v3, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    .line 399
    iget-object v9, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v10, v2, 0x1

    ushr-int/lit8 v11, v8, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v5, v11

    aput-char v11, v9, v2

    .line 400
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v9, v10, 0x1

    ushr-int/lit8 v11, v8, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v5, v11

    aput-char v11, v2, v10

    .line 401
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v10, v9, 0x1

    ushr-int/lit8 v11, v8, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v5, v11

    aput-char v11, v2, v9

    .line 402
    iget-object v9, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v10, 0x1

    and-int/lit8 v8, v8, 0x3f

    aget-char v8, v5, v8

    aput-char v8, v9, v10

    goto :goto_1

    .line 406
    :cond_2
    sub-int v2, v4, v6

    .line 407
    if-lez v2, :cond_4

    .line 409
    aget-byte v3, p1, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    if-ne v2, v12, :cond_3

    add-int/lit8 v0, v4, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_3
    or-int/2addr v0, v3

    .line 412
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v7, -0x5

    shr-int/lit8 v6, v0, 0xc

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    .line 413
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v7, -0x4

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v6, v5, v6

    aput-char v6, v3, v4

    .line 414
    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v4, v7, -0x3

    if-ne v2, v12, :cond_5

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v5, v0

    :goto_2
    aput-char v0, v3, v4

    .line 415
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v2, v7, -0x2

    aput-char v1, v0, v2

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    add-int/lit8 v1, v7, -0x1

    aput-char v13, v0, v1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 414
    goto :goto_2
.end method

.method public a(Lcom/alibaba/fastjson/b/ap;)Z
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->d:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/b/ap;->a(ILcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 4

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const-string p1, "UTF-8"

    .line 244
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 245
    new-instance v1, Lcom/alibaba/fastjson/b/am;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/b/am;-><init>(Ljava/nio/charset/Charset;)V

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/fastjson/b/am;->a([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(C)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->b(C)Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    return-object v0
.end method

.method public synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/b/ao;

    move-result-object v0

    return-object v0
.end method

.method public b(C)Lcom/alibaba/fastjson/b/ao;
    .locals 0

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 225
    return-object p0
.end method

.method public b(CLjava/lang/String;J)V
    .locals 1

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 763
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/b/ao;->c(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/b/ao;->a(J)V

    .line 765
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 356
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 357
    const-string v0, "-2147483648"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 371
    :goto_0
    return-void

    .line 361
    :cond_0
    if-gez p1, :cond_2

    neg-int v0, p1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 363
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, v1

    .line 364
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_1

    .line 365
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/c/d;->a(II[C)V

    .line 370
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    goto :goto_0

    .line 361
    :cond_2
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/c/d;->a(J)I

    move-result v0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 924
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/b/ao;->d(Ljava/lang/String;)V

    .line 929
    :goto_0
    return-void

    .line 927
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/String;C)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 1008
    if-nez p1, :cond_0

    .line 1009
    const-string v0, "null:"

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 1026
    :goto_0
    return-void

    .line 1013
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->UseSingleQuotes:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/b/ao;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1017
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/b/ao;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->QuoteFieldNames:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1021
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/b/ao;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1023
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/b/ao;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/b/ao;->b(Ljava/lang/String;Z)V

    .line 1005
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 280
    sget-object v0, Lcom/alibaba/fastjson/b/ao;->c:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 283
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    .line 284
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 4

    .prologue
    .line 116
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 117
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    int-to-char v3, p1

    aput-char v3, v1, v2

    .line 121
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 122
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/alibaba/fastjson/b/ao;->a()V

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 345
    iget v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v1, v0

    .line 346
    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 347
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 349
    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v4, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 350
    iput v1, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    goto :goto_0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    .prologue
    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, p3

    .line 176
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 179
    :cond_0
    add-int v1, p2, p3

    iget-object v2, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v3, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 180
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    .line 181
    return-void
.end method

.method public write([CII)V
    .locals 3

    .prologue
    .line 141
    if-ltz p2, :cond_0

    array-length v0, p1

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    add-int v0, p2, p3

    if-gez v0, :cond_1

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 143
    :cond_1
    if-nez p3, :cond_2

    .line 154
    :goto_0
    return-void

    .line 147
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    add-int/2addr v0, p3

    .line 148
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_3

    .line 149
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/b/ao;->a(I)V

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/b/ao;->a:[C

    iget v2, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    iput v0, p0, Lcom/alibaba/fastjson/b/ao;->b:I

    goto :goto_0
.end method
