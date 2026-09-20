.class public Lcom/chartboost/sdk/impl/i1;
.super Lcom/chartboost/sdk/impl/c1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/i1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/c1<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public l:Lorg/json/JSONObject;

.field public final m:Lcom/chartboost/sdk/impl/i1$a;

.field public n:Z

.field public final o:Lcom/chartboost/sdk/impl/w4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/w4;Lcom/chartboost/sdk/impl/h4;Lcom/chartboost/sdk/impl/i1$a;)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/chartboost/sdk/internal/Networking/NetworkHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p4, v1}, Lcom/chartboost/sdk/impl/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h4;Ljava/io/File;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i1;->n:Z

    .line 12
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->l:Lorg/json/JSONObject;

    .line 13
    iput-object p2, p0, Lcom/chartboost/sdk/impl/i1;->j:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    .line 15
    iput-object v1, p0, Lcom/chartboost/sdk/impl/i1;->k:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/chartboost/sdk/impl/i1;->m:Lcom/chartboost/sdk/impl/i1$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/w4;Lcom/chartboost/sdk/impl/h4;Ljava/lang/String;Lcom/chartboost/sdk/impl/i1$a;)V
    .locals 2

    .line 17
    invoke-static {p1, p2}, Lcom/chartboost/sdk/internal/Networking/NetworkHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p4, v1}, Lcom/chartboost/sdk/impl/c1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/h4;Ljava/io/File;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/i1;->n:Z

    .line 41
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->l:Lorg/json/JSONObject;

    .line 42
    iput-object p2, p0, Lcom/chartboost/sdk/impl/i1;->j:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    .line 44
    iput-object p6, p0, Lcom/chartboost/sdk/impl/i1;->m:Lcom/chartboost/sdk/impl/i1$a;

    .line 45
    iput-object p5, p0, Lcom/chartboost/sdk/impl/i1;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/d1;
    .locals 7

    .line 15
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->c()V

    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->l:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v2, v1, Lcom/chartboost/sdk/impl/w4;->h:Ljava/lang/String;

    .line 20
    iget-object v1, v1, Lcom/chartboost/sdk/impl/w4;->i:Ljava/lang/String;

    .line 21
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/c1;->a:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->f()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const-string v1, "%s %s\n%s\n%s"

    .line 23
    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/z0;->b([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/z0;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Accept"

    const-string v5, "application/json"

    .line 28
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/chartboost/sdk/internal/Libraries/CBUtility;->b()Ljava/lang/String;

    move-result-object v4

    const-string v6, "X-Chartboost-Client"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "X-Chartboost-API"

    const-string v6, "9.2.0"

    .line 30
    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "X-Chartboost-App"

    .line 31
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "X-Chartboost-Signature"

    .line 32
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-boolean v1, Lcom/chartboost/sdk/impl/a5;->a:Z

    if-eqz v1, :cond_1

    .line 35
    invoke-static {}, Lcom/chartboost/sdk/impl/a5;->b()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "X-Chartboost-Test"

    if-lez v2, :cond_0

    .line 37
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/a5;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    sget-boolean v1, Lcom/chartboost/sdk/ChartboostDSP;->isDSP:Z

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "X-Chartboost-DspDemoApp"

    .line 49
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    new-instance v1, Lcom/chartboost/sdk/impl/d1;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v3, v0, v5}, Lcom/chartboost/sdk/impl/d1;-><init>(Ljava/util/Map;[BLjava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/chartboost/sdk/impl/f1;)Lcom/chartboost/sdk/impl/e1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/f1;",
            ")",
            "Lcom/chartboost/sdk/impl/e1<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const-string v0, "CBRequest"

    const-string v1, "Request failed due to status code "

    const-string v2, "Request "

    .line 54
    :try_start_0
    iget-object v3, p1, Lcom/chartboost/sdk/impl/f1;->b:[B

    if-nez v3, :cond_0

    .line 55
    new-instance p1, Lcom/chartboost/sdk/internal/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/internal/Model/CBError$b;->c:Lcom/chartboost/sdk/internal/Model/CBError$b;

    const-string v2, "Response is not a valid json object"

    invoke-direct {p1, v1, v2}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/impl/e1;->a(Lcom/chartboost/sdk/internal/Model/CBError;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p1, Lcom/chartboost/sdk/impl/f1;->b:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " succeeded. Response code: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget p1, p1, Lcom/chartboost/sdk/impl/f1;->a:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", body: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v2, 0x4

    .line 61
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean p1, p0, Lcom/chartboost/sdk/impl/i1;->n:Z

    if-eqz p1, :cond_3

    const-string/jumbo p1, "status"

    .line 66
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x194

    if-ne p1, v2, :cond_1

    .line 68
    new-instance p1, Lcom/chartboost/sdk/internal/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/internal/Model/CBError$b;->g:Lcom/chartboost/sdk/internal/Model/CBError$b;

    const-string v2, "404 error from server"

    invoke-direct {p1, v1, v2}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/impl/e1;->a(Lcom/chartboost/sdk/internal/Model/CBError;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0xc8

    if-lt p1, v2, :cond_2

    const/16 v2, 0x12b

    if-le p1, v2, :cond_3

    .line 72
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in message"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/chartboost/sdk/internal/Model/CBError;

    sget-object v2, Lcom/chartboost/sdk/internal/Model/CBError$b;->d:Lcom/chartboost/sdk/internal/Model/CBError$b;

    invoke-direct {v1, v2, p1}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/e1;->a(Lcom/chartboost/sdk/internal/Model/CBError;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1

    return-object p1

    .line 78
    :cond_3
    invoke-static {v3}, Lcom/chartboost/sdk/impl/e1;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    new-instance v1, Lcom/chartboost/sdk/impl/i2;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "response_json_serialization_error"

    const-string v4, ""

    invoke-direct {v1, v3, v2, v4, v4}, Lcom/chartboost/sdk/impl/i2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/chartboost/sdk/impl/s2;->d(Lcom/chartboost/sdk/impl/s5;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseServerResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/chartboost/sdk/internal/Model/CBError;

    sget-object v1, Lcom/chartboost/sdk/internal/Model/CBError$b;->a:Lcom/chartboost/sdk/internal/Model/CBError$b;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/impl/e1;->a(Lcom/chartboost/sdk/internal/Model/CBError;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/chartboost/sdk/impl/f1;Lcom/chartboost/sdk/internal/Model/CBError;)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/impl/b1$a;

    .line 3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endpoint"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "None"

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p1, Lcom/chartboost/sdk/impl/f1;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const-string/jumbo v3, "statuscode"

    invoke-static {v3, p1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v0, v3

    if-nez p2, :cond_1

    move-object p1, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/chartboost/sdk/internal/Model/CBError;->getError()Lcom/chartboost/sdk/internal/Model/CBError$b;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string v3, "error"

    invoke-static {v3, p1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object p1

    const/4 v3, 0x2

    aput-object p1, v0, v3

    if-nez p2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/internal/Model/CBError;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string p1, "errorDescription"

    invoke-static {p1, v1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "retryCount"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/impl/b1;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/impl/b1$a;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/impl/b1;->a([Lcom/chartboost/sdk/impl/b1$a;)Lorg/json/JSONObject;

    move-result-object p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "sendToSessionLogs: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CBRequest"

    invoke-static {p2, p1}, Lcom/chartboost/sdk/impl/s3;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/internal/Model/CBError;Lcom/chartboost/sdk/impl/f1;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request failure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chartboost/sdk/internal/Model/CBError;->getErrorDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBRequest"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->m:Lcom/chartboost/sdk/impl/i1$a;

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/i1$a;->a(Lcom/chartboost/sdk/impl/i1;Lcom/chartboost/sdk/internal/Model/CBError;)V

    .line 96
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/chartboost/sdk/impl/i1;->a(Lcom/chartboost/sdk/impl/f1;Lcom/chartboost/sdk/internal/Model/CBError;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/chartboost/sdk/impl/f1;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/i1;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/f1;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->l:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/chartboost/sdk/impl/b1;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/f1;)V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request success: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/chartboost/sdk/impl/f1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CBRequest"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/s3;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->m:Lcom/chartboost/sdk/impl/i1$a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/impl/i1$a;->a(Lcom/chartboost/sdk/impl/i1;Lorg/json/JSONObject;)V

    :cond_0
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0, p2, p1}, Lcom/chartboost/sdk/impl/i1;->a(Lcom/chartboost/sdk/impl/f1;Lcom/chartboost/sdk/internal/Model/CBError;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->h:Ljava/lang/String;

    const-string v1, "app"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->a:Ljava/lang/String;

    const-string v1, "model"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->k:Ljava/lang/String;

    const-string v1, "make"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->j:Ljava/lang/String;

    const-string v1, "device_type"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->l:Ljava/lang/String;

    const-string v1, "actual_device_type"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->b:Ljava/lang/String;

    const-string v1, "os"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->c:Ljava/lang/String;

    const-string v1, "country"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->d:Ljava/lang/String;

    const-string v1, "language"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->g:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/chartboost/sdk/impl/v5;->a:Lcom/chartboost/sdk/impl/v5;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v5;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_agent"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/w4;->j()Lcom/chartboost/sdk/impl/l5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/l5;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 13
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->g()Lcom/chartboost/sdk/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q4;->b()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "reachability"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->b()Lcom/chartboost/sdk/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_portrait"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->b()Lcom/chartboost/sdk/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "scale"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->e:Ljava/lang/String;

    const-string v1, "bundle"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->f:Ljava/lang/String;

    const-string v1, "bundle_id"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->m:Lorg/json/JSONObject;

    const-string v1, "carrier"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->d()Lcom/chartboost/sdk/impl/t3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/t3;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation"

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/t3;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation_version"

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/t3;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adapter_version"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/w4;->o:Ljava/lang/String;

    const-string/jumbo v1, "timezone"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->g()Lcom/chartboost/sdk/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q4;->a()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mobile_network"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->b()Lcom/chartboost/sdk/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dw"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->b()Lcom/chartboost/sdk/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "dh"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->b()Lcom/chartboost/sdk/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dpi"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->b()Lcom/chartboost/sdk/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "w"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->b()Lcom/chartboost/sdk/impl/m2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m2;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "h"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "commit_hash"

    const-string v1, "a95f9a5fa454417814759bf265bfa2311545f508"

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->c()Lcom/chartboost/sdk/impl/e3;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e3;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identity"

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e3;->e()Lcom/chartboost/sdk/impl/u5;

    move-result-object v1

    .line 42
    sget-object v2, Lcom/chartboost/sdk/impl/u5;->b:Lcom/chartboost/sdk/impl/u5;

    if-eq v1, v2, :cond_2

    .line 43
    sget-object v2, Lcom/chartboost/sdk/impl/u5;->d:Lcom/chartboost/sdk/impl/u5;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "limit_ad_tracking"

    invoke-virtual {p0, v2, v1}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    :cond_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/e3;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "appsetidscope"

    .line 49
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v0, "CBRequest"

    const-string v1, "Missing identity in the CB SDK. This will affect ads performance."

    .line 52
    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/s3;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->f()Lcom/chartboost/sdk/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j4;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pidatauseconsent"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->a()Lcom/chartboost/sdk/impl/f2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f2;->a()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/chartboost/sdk/impl/c0;->b()Lcom/chartboost/sdk/impl/c0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/c0;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "config_variant"

    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->o:Lcom/chartboost/sdk/impl/w4;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w4;->f()Lcom/chartboost/sdk/impl/j4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j4;->e()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "privacy"

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/i1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/z1;->a:Lcom/chartboost/sdk/impl/z1;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/z1;->a()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/z1;->b()[I

    move-result-object v0

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 7
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v4, 0x0

    .line 8
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 9
    aget v5, v0, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "exchangeMode"

    const/4 v4, 0x2

    .line 11
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "bidFloor"

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    .line 12
    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "code"

    .line 13
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "forceCreativeTypes"

    .line 14
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    return-object v0

    .line 19
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i1;->j:Ljava/lang/String;

    const-string v1, "/"

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i1;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i1;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/i1;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
