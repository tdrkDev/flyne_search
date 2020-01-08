.class public final Lcom/meizu/common/widget/MzContactsContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MzContactsContract$MzNetContacts;,
        Lcom/meizu/common/widget/MzContactsContract$MzAccounts;,
        Lcom/meizu/common/widget/MzContactsContract$MzIntents;,
        Lcom/meizu/common/widget/MzContactsContract$MzDisplayPhoto;,
        Lcom/meizu/common/widget/MzContactsContract$MzGroups;,
        Lcom/meizu/common/widget/MzContactsContract$MzQuickContact;,
        Lcom/meizu/common/widget/MzContactsContract$MzSettings;,
        Lcom/meizu/common/widget/MzContactsContract$MzSettingsColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzGroupsColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds;,
        Lcom/meizu/common/widget/MzContactsContract$MzSearchSnippetColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzPhoneLookup;,
        Lcom/meizu/common/widget/MzContactsContract$MzData;,
        Lcom/meizu/common/widget/MzContactsContract$MzRawContactColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzContacts;,
        Lcom/meizu/common/widget/MzContactsContract$MzContactColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzContactOptionsColumns;,
        Lcom/meizu/common/widget/MzContactsContract$MzDirectory;
    }
.end annotation


# static fields
.field public static final ALLOW_CALLLOGS_PARAM_KEY:Ljava/lang/String; = "allow_calllogs"

.field public static final AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

.field public static final HAS_MORE_KEY:Ljava/lang/String; = "has_more"

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field public static final START_PARAM_KEY:Ljava/lang/String; = "start"

.field public static final USE_WEIGHT_ORDER:Ljava/lang/String; = "use_weight_order"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://com.android.contacts.notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract;->AUTHORITY_URI_NOTIFY:Landroid/net/Uri;

    .line 874
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    .line 875
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/widget/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 874
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 888
    sget-object v0, Lcom/meizu/common/widget/MzContactsContract;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 889
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 893
    :cond_0
    return-void
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 18

    .prologue
    .line 778
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 779
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 780
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 781
    :cond_0
    const/4 v2, 0x0

    .line 865
    :goto_1
    return-object v2

    .line 778
    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    goto :goto_0

    .line 787
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 788
    :goto_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 789
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 790
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lcom/meizu/common/widget/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 791
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 792
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 793
    const/4 v2, 0x0

    goto :goto_1

    .line 787
    :cond_4
    const-string v2, ""

    goto :goto_2

    .line 797
    :cond_5
    const-string v2, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 800
    array-length v9, v8

    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v9, :cond_e

    aget-object v10, v8, v7

    .line 801
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 805
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 806
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-static {v10, v11, v12}, Lcom/meizu/common/widget/MzContactsContract;->MzSplit(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 812
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 814
    const/4 v5, -0x1

    .line 815
    const/4 v4, -0x1

    .line 816
    const/4 v2, 0x0

    move v6, v5

    move v5, v4

    move v4, v2

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_8

    .line 817
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 818
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 819
    invoke-virtual {v14, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 823
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    const/4 v2, -0x1

    if-ne v6, v2, :cond_6

    .line 829
    const/4 v2, 0x0

    .line 831
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v14, v5

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    .line 830
    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v5, v14

    sub-int v5, v4, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 834
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    .line 835
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v5, v6

    .line 834
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 816
    :cond_6
    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    .line 838
    :cond_7
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 843
    :cond_8
    const/4 v2, -0x1

    if-le v6, v2, :cond_d

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 845
    if-lez v6, :cond_9

    .line 846
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    :cond_9
    :goto_6
    if-ge v6, v5, :cond_b

    .line 849
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 850
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 851
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    add-int/lit8 v2, v5, -0x1

    if-ge v6, v2, :cond_a

    .line 855
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v2, v6, 0x1

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v4, v10, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 848
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 858
    :cond_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_c

    .line 859
    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 800
    :cond_d
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_3

    .line 865
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_1
.end method
