.class public final Lcom/openmediation/sdk/utils/request/network/Response;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openmediation/sdk/utils/request/network/Response$Builder;
    }
.end annotation


# instance fields
.field private mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

.field private mCode:I

.field private mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

.field private mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;


# direct methods
.method private constructor <init>(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->access$000(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mCode:I

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->access$100(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)Lcom/openmediation/sdk/utils/request/network/Headers;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->access$200(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    move-result-object v0

    iput-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    invoke-static {p1}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;->access$300(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openmediation/sdk/utils/request/network/Response$Builder;Lcom/openmediation/sdk/utils/request/network/Response$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/openmediation/sdk/utils/request/network/Response;-><init>(Lcom/openmediation/sdk/utils/request/network/Response$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/openmediation/sdk/utils/request/network/Response$Builder;
    .locals 1

    new-instance v0, Lcom/openmediation/sdk/utils/request/network/Response$Builder;

    invoke-direct {v0}, Lcom/openmediation/sdk/utils/request/network/Response$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public body()Lcom/openmediation/sdk/utils/request/network/ResponseBody;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    return-object v0
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;->cancel()V

    iput-object v1, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mConnection:Lcom/openmediation/sdk/utils/request/network/connect/AbstractUrlConnection;

    :cond_0
    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/openmediation/sdk/utils/request/network/Headers;->clear()V

    iput-object v1, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    :cond_1
    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    invoke-interface {v0}, Lcom/openmediation/sdk/utils/request/network/ResponseBody;->stream()Ljava/io/BufferedInputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/openmediation/sdk/utils/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Response close"

    invoke-static {v1, v0}, Lcom/openmediation/sdk/utils/DeveloperLog;->LogD(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public code()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mCode:I

    return v0
.end method

.method public headers()Lcom/openmediation/sdk/utils/request/network/Headers;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{mCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeaders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mHeaders:Lcom/openmediation/sdk/utils/request/network/Headers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/utils/request/network/Response;->mBody:Lcom/openmediation/sdk/utils/request/network/ResponseBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
