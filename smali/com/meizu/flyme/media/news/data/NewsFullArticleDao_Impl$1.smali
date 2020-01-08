.class Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$1;
.super Landroid/arch/persistence/room/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/c",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$1;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/c;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 45
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 46
    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 50
    :goto_0
    const/4 v1, 0x2

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->type:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 51
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 52
    invoke-interface {p1, v4}, Landroid/arch/persistence/a/f;->a(I)V

    .line 56
    :goto_1
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 57
    invoke-interface {p1, v5}, Landroid/arch/persistence/a/f;->a(I)V

    .line 61
    :goto_2
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 62
    invoke-interface {p1, v6}, Landroid/arch/persistence/a/f;->a(I)V

    .line 66
    :goto_3
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 67
    invoke-interface {p1, v7}, Landroid/arch/persistence/a/f;->a(I)V

    .line 71
    :goto_4
    const/4 v1, 0x7

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->videoDuration:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 72
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 73
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 77
    :goto_5
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 78
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 82
    :goto_6
    const/16 v1, 0xa

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->categoryId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 83
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 84
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 88
    :goto_7
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 89
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 93
    :goto_8
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 94
    const/16 v1, 0xd

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 98
    :goto_9
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 99
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 103
    :goto_a
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 104
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 108
    :goto_b
    const/16 v1, 0x10

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->status:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 109
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 110
    const/16 v1, 0x11

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 114
    :goto_c
    const/16 v1, 0x12

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->authorId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 115
    const/16 v1, 0x13

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 116
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 117
    const/16 v1, 0x14

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 121
    :goto_d
    const/16 v1, 0x15

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->viewCount:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 122
    const/16 v1, 0x16

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->commentCount:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 123
    const/16 v1, 0x17

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->shareCount:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 124
    const/16 v1, 0x18

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->collectCount:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 125
    const/16 v1, 0x19

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->diggCount:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 126
    const/16 v1, 0x1a

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->buryCount:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 127
    const/16 v1, 0x1b

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->publishTime:J

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 128
    const/16 v1, 0x1c

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->createTime:J

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 129
    const/16 v1, 0x1d

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cp_recom_time:J

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 130
    const/16 v1, 0x1e

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->release_time:J

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 131
    const/16 v1, 0x1f

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->update_time:J

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 132
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 133
    const/16 v1, 0x20

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 137
    :goto_e
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 138
    const/16 v1, 0x21

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 142
    :goto_f
    const/16 v1, 0x22

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->contentSourceId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 143
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 144
    const/16 v1, 0x23

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 148
    :goto_10
    const/16 v1, 0x24

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->suggestShowType:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 149
    const/16 v1, 0x25

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualShowType:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 150
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 151
    const/16 v1, 0x26

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 155
    :goto_11
    const/16 v1, 0x27

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->manualPosition:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 156
    const/16 v1, 0x28

    iget-wide v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->cpRecomPos:J

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 158
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->userInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->userToString(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$UserInfo;)Ljava/lang/String;

    move-result-object v1

    .line 159
    if-nez v1, :cond_12

    .line 160
    const/16 v1, 0x29

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 165
    :goto_12
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->imgInfo:Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;

    invoke-static {v1}, Lcom/meizu/flyme/media/news/data/NewsFullDataConverters;->imageInfoToString(Lcom/meizu/flyme/media/news/data/NewsFullArticleCommonBean$ImgInfo;)Ljava/lang/String;

    move-result-object v1

    .line 166
    if-nez v1, :cond_13

    .line 167
    const/16 v1, 0x2a

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 171
    :goto_13
    const/16 v1, 0x2b

    iget v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->articleChannelId:I

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 172
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 173
    const/16 v1, 0x2c

    invoke-interface {p1, v1}, Landroid/arch/persistence/a/f;->a(I)V

    .line 178
    :goto_14
    iget-boolean v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->isMoreList:Z

    if-eqz v1, :cond_15

    .line 179
    :goto_15
    const/16 v1, 0x2d

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 180
    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 181
    const/16 v0, 0x2e

    invoke-interface {p1, v0}, Landroid/arch/persistence/a/f;->a(I)V

    .line 185
    :goto_16
    const/16 v0, 0x2f

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getContentId()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 186
    const/16 v0, 0x30

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpId()I

    move-result v1

    int-to-long v2, v1

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 187
    const/16 v0, 0x31

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsAddTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 188
    const/16 v0, 0x32

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsReadTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 189
    const/16 v0, 0x33

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsExposeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 190
    const/16 v0, 0x34

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getNewsChangeTime()J

    move-result-wide v2

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/a/f;->a(IJ)V

    .line 191
    return-void

    .line 48
    :cond_0
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->entityUniqId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_1
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    invoke-interface {p1, v4, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 59
    :cond_2
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->subTitle:Ljava/lang/String;

    invoke-interface {p1, v5, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 64
    :cond_3
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords:Ljava/lang/String;

    invoke-interface {p1, v6, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 69
    :cond_4
    iget-object v1, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyWords_freq:Ljava/lang/String;

    invoke-interface {p1, v7, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 75
    :cond_5
    const/16 v1, 0x8

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->desc:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 80
    :cond_6
    const/16 v1, 0x9

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->category:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 86
    :cond_7
    const/16 v1, 0xb

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->tag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 91
    :cond_8
    const/16 v1, 0xc

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->source:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 96
    :cond_9
    const/16 v1, 0xd

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->h5Url:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 101
    :cond_a
    const/16 v1, 0xe

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->json_url:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_a

    .line 106
    :cond_b
    const/16 v1, 0xf

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->share_url:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_b

    .line 112
    :cond_c
    const/16 v1, 0x11

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->author:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_c

    .line 119
    :cond_d
    const/16 v1, 0x14

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->ruleSign:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 135
    :cond_e
    const/16 v1, 0x20

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->extend:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_e

    .line 140
    :cond_f
    const/16 v1, 0x21

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->content:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 146
    :cond_10
    const/16 v1, 0x23

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->requestId:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 153
    :cond_11
    const/16 v1, 0x26

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->scheme:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_11

    .line 162
    :cond_12
    const/16 v2, 0x29

    invoke-interface {p1, v2, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_12

    .line 169
    :cond_13
    const/16 v2, 0x2a

    invoke-interface {p1, v2, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 175
    :cond_14
    const/16 v1, 0x2c

    iget-object v2, p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->keyword:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_14

    .line 178
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_15

    .line 183
    :cond_16
    const/16 v0, 0x2e

    invoke-virtual {p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->getCpEntityId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/a/f;->a(ILjava/lang/String;)V

    goto/16 :goto_16
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/flyme/media/news/data/NewsFullArticleDao_Impl$1;->bind(Landroid/arch/persistence/a/f;Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "INSERT OR IGNORE INTO `articles`(`entityUniqId`,`type`,`title`,`subTitle`,`keyWords`,`keyWords_freq`,`videoDuration`,`desc`,`category`,`categoryId`,`tag`,`source`,`h5Url`,`json_url`,`share_url`,`status`,`author`,`authorId`,`ruleId`,`ruleSign`,`viewCount`,`commentCount`,`shareCount`,`collectCount`,`diggCount`,`buryCount`,`publishTime`,`createTime`,`cp_recom_time`,`release_time`,`update_time`,`extend`,`content`,`contentSourceId`,`requestId`,`suggestShowType`,`manualShowType`,`scheme`,`manualPosition`,`cpRecomPos`,`userInfo`,`imgInfo`,`articleChannelId`,`keyword`,`isMoreList`,`cpEntityId`,`contentId`,`cpId`,`newsAddTime`,`newsReadTime`,`newsExposeTime`,`newsChangeTime`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
