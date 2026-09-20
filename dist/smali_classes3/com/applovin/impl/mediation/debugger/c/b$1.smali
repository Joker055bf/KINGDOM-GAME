.class Lcom/applovin/impl/mediation/debugger/c/b$1;
.super Lcom/applovin/impl/sdk/e/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/c/b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/impl/sdk/e/u<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/debugger/c/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/c/b;Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->a:Lcom/applovin/impl/mediation/debugger/c/b;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/sdk/e/u;-><init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/p;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/debugger/c/b$1;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 119
    iget-object p3, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to fetch developer URI due to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ", and received error code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->a:Lcom/applovin/impl/mediation/debugger/c/b;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/c/b;->a(Lcom/applovin/impl/mediation/debugger/c/b;)Lcom/applovin/impl/mediation/debugger/c/b$a;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/mediation/debugger/a$b;->a:Lcom/applovin/impl/mediation/debugger/a$b;

    invoke-interface {p1, p2}, Lcom/applovin/impl/mediation/debugger/c/b$a;->a(Lcom/applovin/impl/mediation/debugger/a$b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/mediation/debugger/c/b$1;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 99
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->g:Ljava/lang/String;

    const-string v1, "No developer URI found - response is empty"

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->a:Lcom/applovin/impl/mediation/debugger/c/b;

    invoke-static {p2}, Lcom/applovin/impl/mediation/debugger/c/b;->a(Lcom/applovin/impl/mediation/debugger/c/b;)Lcom/applovin/impl/mediation/debugger/c/b$a;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/mediation/debugger/a$b;->a:Lcom/applovin/impl/mediation/debugger/a$b;

    invoke-interface {p2, v0}, Lcom/applovin/impl/mediation/debugger/c/b$a;->a(Lcom/applovin/impl/mediation/debugger/a$b;)V

    :cond_1
    const-string p2, "(?<=\"appstore:developer_url\" content=\").+?(?=\">)"

    .line 103
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 106
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->g:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found developer URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->a:Lcom/applovin/impl/mediation/debugger/c/b;

    invoke-static {p2}, Lcom/applovin/impl/mediation/debugger/c/b;->a(Lcom/applovin/impl/mediation/debugger/c/b;)Lcom/applovin/impl/mediation/debugger/c/b$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/impl/mediation/debugger/c/b$a;->a(Ljava/lang/String;)V

    return-void

    .line 112
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->h:Lcom/applovin/impl/sdk/y;

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->g:Ljava/lang/String;

    const-string v0, "Unable to find developer URI from the Play Store listing metadata"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/c/b$1;->a:Lcom/applovin/impl/mediation/debugger/c/b;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/c/b;->a(Lcom/applovin/impl/mediation/debugger/c/b;)Lcom/applovin/impl/mediation/debugger/c/b$a;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/mediation/debugger/a$b;->a:Lcom/applovin/impl/mediation/debugger/a$b;

    invoke-interface {p1, p2}, Lcom/applovin/impl/mediation/debugger/c/b$a;->a(Lcom/applovin/impl/mediation/debugger/a$b;)V

    return-void
.end method
