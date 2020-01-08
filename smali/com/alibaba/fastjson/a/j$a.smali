.class public final Lcom/alibaba/fastjson/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:[C

.field public final d:[B

.field public e:Lcom/alibaba/fastjson/a/j$a;


# direct methods
.method public constructor <init>([CIIILcom/alibaba/fastjson/a/j$a;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/a/j$a;->c:[C

    .line 144
    iget-object v0, p0, Lcom/alibaba/fastjson/a/j$a;->c:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/j$a;->c:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/j$a;->a:Ljava/lang/String;

    .line 146
    iput-object p5, p0, Lcom/alibaba/fastjson/a/j$a;->e:Lcom/alibaba/fastjson/a/j$a;

    .line 147
    iput p4, p0, Lcom/alibaba/fastjson/a/j$a;->b:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/a/j$a;->d:[B

    .line 149
    return-void
.end method
