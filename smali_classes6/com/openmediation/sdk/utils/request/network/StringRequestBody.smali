.class public Lcom/openmediation/sdk/utils/request/network/StringRequestBody;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/openmediation/sdk/utils/request/network/RequestBody;


# instance fields
.field private final mBody:Ljava/lang/String;

.field private final mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "application/json"

    invoke-direct {p0, p1, v0}, Lcom/openmediation/sdk/utils/request/network/StringRequestBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/StringRequestBody;->mBody:Ljava/lang/String;

    iput-object p2, p0, Lcom/openmediation/sdk/utils/request/network/StringRequestBody;->mContentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public contentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StringRequestBody;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StringRequestBody;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StringRequestBody;->mBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/StringRequestBody;->mBody:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/openmediation/sdk/utils/IOUtil;->write(Ljava/io/OutputStream;Ljava/lang/CharSequence;)V

    return-void
.end method
