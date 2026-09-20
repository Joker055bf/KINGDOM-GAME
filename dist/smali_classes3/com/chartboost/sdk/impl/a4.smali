.class public Lcom/chartboost/sdk/impl/a4;
.super Lcom/chartboost/sdk/impl/i1;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "a4"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/x3;Lcom/chartboost/sdk/impl/i;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcom/chartboost/sdk/impl/x3;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/x3;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/x3;->c:Lcom/chartboost/sdk/impl/w4;

    iget-object v4, p1, Lcom/chartboost/sdk/impl/x3;->d:Lcom/chartboost/sdk/impl/h4;

    iget-object v5, p1, Lcom/chartboost/sdk/impl/x3;->e:Lcom/chartboost/sdk/impl/i1$a;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/i1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/w4;Lcom/chartboost/sdk/impl/h4;Lcom/chartboost/sdk/impl/i1$a;)V

    .line 3
    new-instance v0, Lcom/chartboost/sdk/impl/b4;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/x3;->c:Lcom/chartboost/sdk/impl/w4;

    invoke-direct {v0, p1, p2}, Lcom/chartboost/sdk/impl/b4;-><init>(Lcom/chartboost/sdk/impl/w4;Lcom/chartboost/sdk/impl/i;)V

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/b4;->f()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/chartboost/sdk/impl/i1;->l:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/f1;)Lcom/chartboost/sdk/impl/e1;
    .locals 3
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

    .line 1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/f1;->b:[B

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/chartboost/sdk/internal/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$b;->c:Lcom/chartboost/sdk/internal/Model/CBError$b;

    const-string v1, "Response is not a valid json object"

    invoke-direct {p1, v0, v1}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/impl/e1;->a(Lcom/chartboost/sdk/internal/Model/CBError;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/f1;->b:[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Lcom/chartboost/sdk/impl/e1;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lcom/chartboost/sdk/impl/a4;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parseServerResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/s3;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lcom/chartboost/sdk/internal/Model/CBError;

    sget-object v0, Lcom/chartboost/sdk/internal/Model/CBError$b;->g:Lcom/chartboost/sdk/internal/Model/CBError$b;

    const-string v1, "No Bid"

    invoke-direct {p1, v0, v1}, Lcom/chartboost/sdk/internal/Model/CBError;-><init>(Lcom/chartboost/sdk/internal/Model/CBError$b;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/chartboost/sdk/impl/e1;->a(Lcom/chartboost/sdk/internal/Model/CBError;)Lcom/chartboost/sdk/impl/e1;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
