.class public final Lcom/inveno/transcode/presenter/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/presenter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/transcode/presenter/a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Lcom/inveno/transcode/presenter/a;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 720
    iput-object p1, p0, Lcom/inveno/transcode/presenter/a$c;->a:Lcom/inveno/transcode/presenter/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 721
    iput-object p2, p0, Lcom/inveno/transcode/presenter/a$c;->b:Ljava/lang/String;

    .line 722
    iput-wide p3, p0, Lcom/inveno/transcode/presenter/a$c;->c:J

    .line 723
    iput-object p5, p0, Lcom/inveno/transcode/presenter/a$c;->d:[Ljava/io/InputStream;

    .line 724
    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/transcode/presenter/a;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/inveno/transcode/presenter/b;)V
    .locals 1

    .prologue
    .line 715
    invoke-direct/range {p0 .. p5}, Lcom/inveno/transcode/presenter/a$c;-><init>(Lcom/inveno/transcode/presenter/a;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$c;->d:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 750
    iget-object v1, p0, Lcom/inveno/transcode/presenter/a$c;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 751
    invoke-static {v3}, Lcom/inveno/transcode/presenter/a;->a(Ljava/io/Closeable;)V

    .line 750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_0
    return-void
.end method
