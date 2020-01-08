.class public Lcom/meizu/common/widget/GroupAlphabetIndexer;
.super Landroid/widget/AlphabetIndexer;
.source "SourceFile"


# static fields
.field private static final DEFAULT_GROUP_LETTERS:Ljava/lang/String; = "1234567890"


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mFirstGroupLetters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    .line 16
    const-string v0, "1234567890"

    iput-object v0, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mFirstGroupLetters:Ljava/lang/String;

    .line 21
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 22
    iget-object v0, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mFirstGroupLetters:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/GroupAlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected compare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    const-string v0, " "

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 51
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 63
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 57
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    const/4 v0, -0x1

    goto :goto_0

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setFirstGroupLetters(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/meizu/common/widget/GroupAlphabetIndexer;->mFirstGroupLetters:Ljava/lang/String;

    .line 33
    return-void
.end method
