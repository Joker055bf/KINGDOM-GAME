.class public abstract Lcom/applovin/impl/sdk/e/r;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e/r$a;,
        Lcom/applovin/impl/sdk/e/r$d;,
        Lcom/applovin/impl/sdk/e/r$b;,
        Lcom/applovin/impl/sdk/e/r$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final b:Lcom/applovin/impl/sdk/e/r$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskProcessVastResponse"

    .line 37
    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    if-eqz p1, :cond_0

    .line 41
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 42
    check-cast p1, Lcom/applovin/impl/sdk/e/r$a;

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/r;->b:Lcom/applovin/impl/sdk/e/r$a;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/e/r;
    .locals 1

    .line 75
    new-instance v0, Lcom/applovin/impl/sdk/e/r$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/r$d;-><init>(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/e/r;
    .locals 1

    .line 66
    new-instance v0, Lcom/applovin/impl/sdk/e/r$a;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/applovin/impl/sdk/e/r$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/p;)V

    .line 67
    new-instance p1, Lcom/applovin/impl/sdk/e/r$b;

    invoke-direct {p1, p0, v0, p4, p5}, Lcom/applovin/impl/sdk/e/r$b;-><init>(Ljava/lang/String;Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    return-object p1
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/e/r;
    .locals 1

    .line 55
    new-instance v0, Lcom/applovin/impl/sdk/e/r$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/applovin/impl/sdk/e/r$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/p;)V

    .line 56
    new-instance p0, Lcom/applovin/impl/sdk/e/r$c;

    invoke-direct {p0, v0, p3, p4}, Lcom/applovin/impl/sdk/e/r$c;-><init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    return-object p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;
    .locals 3

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 94
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->g:Ljava/lang/String;

    const-string v2, "Failed to process VAST response"

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :cond_0
    sget-object p1, Lcom/applovin/impl/c/f;->e:Lcom/applovin/impl/c/f;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/c/f;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method a(Lcom/applovin/impl/c/f;)V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to process VAST response due to VAST error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->b:Lcom/applovin/impl/sdk/e/r$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v2, -0x6

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/r;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/c/f;ILcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/utils/t;)V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->b:Lcom/applovin/impl/sdk/e/r$a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/e/r$a;->a()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/r;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished parsing XML at depth "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->b:Lcom/applovin/impl/sdk/e/r$a;

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/e/r$a;->a(Lcom/applovin/impl/sdk/utils/t;)V

    .line 111
    invoke-static {p1}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/sdk/utils/t;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/r;->f:Lcom/applovin/impl/sdk/p;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->eJ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 118
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->g:Ljava/lang/String;

    const-string v1, "VAST response is wrapper. Resolving..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    new-instance p1, Lcom/applovin/impl/sdk/e/x;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->b:Lcom/applovin/impl/sdk/e/r$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/r;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/e/x;-><init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 121
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reached beyond max wrapper depth of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_3
    sget-object p1, Lcom/applovin/impl/c/f;->h:Lcom/applovin/impl/c/f;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/c/f;)V

    goto :goto_0

    .line 131
    :cond_4
    invoke-static {p1}, Lcom/applovin/impl/c/m;->b(Lcom/applovin/impl/sdk/utils/t;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 133
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->g:Ljava/lang/String;

    const-string v1, "VAST response is inline. Rendering ad..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_5
    new-instance p1, Lcom/applovin/impl/sdk/e/t;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->b:Lcom/applovin/impl/sdk/e/r$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/r;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/r;->f:Lcom/applovin/impl/sdk/p;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/e/t;-><init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V

    .line 136
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;)V

    goto :goto_0

    .line 141
    :cond_6
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/r;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/r;->g:Ljava/lang/String;

    const-string v1, "VAST response is an error"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_7
    sget-object p1, Lcom/applovin/impl/c/f;->i:Lcom/applovin/impl/c/f;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/e/r;->a(Lcom/applovin/impl/c/f;)V

    :goto_0
    return-void
.end method
