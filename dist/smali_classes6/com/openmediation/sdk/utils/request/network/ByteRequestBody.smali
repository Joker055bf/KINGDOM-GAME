.class public Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/request/network/RequestBody;


# instance fields
.field private final mBody:[B

.field private final mCharset:Ljava/nio/charset/Charset;

.field private final mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([BLjava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([BLjava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "application/json"

    invoke-direct {p0, p1, p2, v0}, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;-><init>([BLjava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;->mBody:[B

    iput-object p2, p0, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;->mCharset:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;->mContentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;->mBody:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/ByteRequestBody;->mBody:[B

    invoke-static {p1, v0}, Lcom/openmediation/sdk/utils/IOUtil;->write(Ljava/io/OutputStream;[B)V

    return-void
.end method
