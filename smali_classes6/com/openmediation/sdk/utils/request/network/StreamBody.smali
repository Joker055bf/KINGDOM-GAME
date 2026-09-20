.class public Lcom/openmediation/sdk/utils/request/network/StreamBody;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/request/network/ResponseBody;


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mStream:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/BufferedInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mContentType:Ljava/lang/String;

    iput-object p2, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mStream:Ljava/io/BufferedInputStream;

    return-void
.end method


# virtual methods
.method public byteArray()[B
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mStream:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-void
.end method

.method public stream()Ljava/io/BufferedInputStream;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mStream:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public string()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mContentType:Ljava/lang/String;

    const-string v1, "charset"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/openmediation/sdk/utils/request/network/Headers;->parseSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mStream:Ljava/io/BufferedInputStream;

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/StreamBody;->mStream:Ljava/io/BufferedInputStream;

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/IOUtil;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
