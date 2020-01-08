.class public Lcom/inveno/transcode/view/TranscodeParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:Ljava/lang/String;

.field private mOrigurl:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/inveno/transcode/view/TranscodeParams;->uid:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/inveno/transcode/view/TranscodeParams;->id:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/inveno/transcode/view/TranscodeParams;->title:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/inveno/transcode/view/TranscodeParams;->source:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/inveno/transcode/view/TranscodeParams;->time:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/inveno/transcode/view/TranscodeParams;->url:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/inveno/transcode/view/TranscodeParams;->mOrigurl:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeParams;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeParams;->mOrigurl:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeParams;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeParams;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeParams;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeParams;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inveno/transcode/view/TranscodeParams;->url:Ljava/lang/String;

    return-object v0
.end method
