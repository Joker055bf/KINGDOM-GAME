.class public final Lcom/t4f/anim/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/anim/source/MediaSource$SourceType;
    }
.end annotation


# instance fields
.field private final sourceType:Lcom/t4f/anim/source/MediaSource$SourceType;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/t4f/anim/source/MediaSource$SourceType;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/t4f/anim/source/MediaSource;->sourceType:Lcom/t4f/anim/source/MediaSource$SourceType;

    .line 32
    iput-object p2, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Lcom/t4f/anim/source/MediaSource;->validate()V

    return-void
.end method

.method public static asset(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource;
    .locals 2

    .line 40
    new-instance v0, Lcom/t4f/anim/source/MediaSource;

    sget-object v1, Lcom/t4f/anim/source/MediaSource$SourceType;->ASSET:Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-direct {v0, v1, p0}, Lcom/t4f/anim/source/MediaSource;-><init>(Lcom/t4f/anim/source/MediaSource$SourceType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static externalFiles(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource;
    .locals 2

    .line 62
    new-instance v0, Lcom/t4f/anim/source/MediaSource;

    sget-object v1, Lcom/t4f/anim/source/MediaSource$SourceType;->EXTERNAL_FILES:Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-direct {v0, v1, p0}, Lcom/t4f/anim/source/MediaSource;-><init>(Lcom/t4f/anim/source/MediaSource$SourceType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static file(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource;
    .locals 2

    .line 54
    new-instance v0, Lcom/t4f/anim/source/MediaSource;

    sget-object v1, Lcom/t4f/anim/source/MediaSource$SourceType;->FILE:Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-direct {v0, v1, p0}, Lcom/t4f/anim/source/MediaSource;-><init>(Lcom/t4f/anim/source/MediaSource$SourceType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static raw(Ljava/lang/String;)Lcom/t4f/anim/source/MediaSource;
    .locals 2

    .line 47
    new-instance v0, Lcom/t4f/anim/source/MediaSource;

    sget-object v1, Lcom/t4f/anim/source/MediaSource$SourceType;->RAW:Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-direct {v0, v1, p0}, Lcom/t4f/anim/source/MediaSource;-><init>(Lcom/t4f/anim/source/MediaSource$SourceType;Ljava/lang/String;)V

    return-object v0
.end method

.method private validate()V
    .locals 5

    .line 80
    iget-object v0, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 83
    sget-object v0, Lcom/t4f/anim/source/MediaSource$1;->$SwitchMap$com$t4f$anim$source$MediaSource$SourceType:[I

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->sourceType:Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-virtual {v3}, Lcom/t4f/anim/source/MediaSource$SourceType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const-string v3, ".."

    if-eq v0, v2, :cond_d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    .line 128
    iget-object v0, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 129
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "relative path for EXTERNAL_FILES must not contain \'..\': %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "relative path for EXTERNAL_FILES must not start with \'/\': %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->sourceType:Lcom/t4f/anim/source/MediaSource$SourceType;

    aput-object v3, v2, v1

    const-string v1, "Unsupported source type: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    const-string v4, "file"

    .line 113
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 114
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 115
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "invalid file uri path for FILE source: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v4, "content"

    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 118
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 119
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "invalid content uri for FILE source: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    const-string v1, "unsupported uri scheme for FILE source: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "uri scheme is null for FILE source: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "invalid uri for FILE source: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "\\"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "."

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    .line 101
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "raw name must not contain file extension: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "raw name must not contain path separators: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_d
    iget-object v0, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_0
    return-void

    .line 91
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "asset path must not contain \'..\': %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string v1, "asset path must not start with \'/\': %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/t4f/anim/source/MediaSource;->sourceType:Lcom/t4f/anim/source/MediaSource$SourceType;

    aput-object v3, v2, v1

    const-string v1, "value is empty for source type: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getSourceType()Lcom/t4f/anim/source/MediaSource$SourceType;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/t4f/anim/source/MediaSource;->sourceType:Lcom/t4f/anim/source/MediaSource$SourceType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 143
    sget-object v0, Lcom/t4f/anim/source/MediaSource$1;->$SwitchMap$com$t4f$anim$source$MediaSource$SourceType:[I

    iget-object v1, p0, Lcom/t4f/anim/source/MediaSource;->sourceType:Lcom/t4f/anim/source/MediaSource$SourceType;

    invoke-virtual {v1}, Lcom/t4f/anim/source/MediaSource$SourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const-string v0, "MediaSource{type=UNKNOWN}"

    return-object v0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    .line 151
    iget-object v2, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "MediaSource{type=EXTERNAL_FILES, value=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "MediaSource{type=FILE, value=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 147
    iget-object v2, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "MediaSource{type=RAW, value=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    new-array v0, v2, [Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Lcom/t4f/anim/source/MediaSource;->value:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "MediaSource{type=ASSET, value=%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
